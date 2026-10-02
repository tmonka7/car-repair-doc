# Converts Markdown to DOCX and/or PDF.
# Called by md-to-docx-pdf.bat — do not require a profile.

[CmdletBinding()]
param(
    [Parameter(Position = 0)]
    [string]$Target,

    [Parameter(Position = 1)]
    [ValidateSet('docx', 'pdf', 'both', 'doc', 'word')]
    [string]$Format = 'both',

    [string]$Root
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

if (-not $Root) {
    if ($PSCommandPath) {
        $Root = Split-Path -Parent $PSCommandPath
    }
    else {
        $Root = (Get-Location).Path
    }
}
$Root = (Resolve-Path -LiteralPath $Root).Path

if ($Format -in @('doc', 'word')) { $Format = 'docx' }

$Export = Join-Path $Root 'export'
$CssPath = Join-Path $Export 'md-export.css'
$script:Ok = 0
$script:Fail = 0

function Find-Pandoc {
    $cmd = Get-Command pandoc -ErrorAction SilentlyContinue
    if ($cmd) { return $cmd.Source }
    foreach ($p in @(
            Join-Path $env:LOCALAPPDATA 'Pandoc\pandoc.exe'
            Join-Path ${env:ProgramFiles} 'Pandoc\pandoc.exe'
            Join-Path ${env:ProgramFiles(x86)} 'Pandoc\pandoc.exe'
        )) {
        if (Test-Path -LiteralPath $p) { return $p }
    }
    return $null
}

function Find-Browser {
    foreach ($p in @(
            Join-Path ${env:ProgramFiles} 'Google\Chrome\Application\chrome.exe'
            Join-Path ${env:ProgramFiles(x86)} 'Microsoft\Edge\Application\msedge.exe'
            Join-Path ${env:ProgramFiles} 'Microsoft\Edge\Application\msedge.exe'
        )) {
        if (Test-Path -LiteralPath $p) { return $p }
    }
    return $null
}

function Install-Pandoc {
    $winget = Get-Command winget -ErrorAction SilentlyContinue
    if (-not $winget) {
        throw 'Pandoc is not installed and winget was not found. Install Pandoc from https://pandoc.org/installing.html'
    }
    Write-Host 'Installing Pandoc with winget...'
    & $winget.Source install --id JohnMacFarlane.Pandoc -e --accept-source-agreements --accept-package-agreements
    $pandoc = Find-Pandoc
    if (-not $pandoc) {
        throw 'Pandoc was installed. Close this window and run the script again so PATH updates.'
    }
    return $pandoc
}

function Write-ExportCss {
    if (-not (Test-Path -LiteralPath $Export)) {
        New-Item -ItemType Directory -Path $Export | Out-Null
    }
    @'
body { font-family: Calibri, "Segoe UI", sans-serif; font-size: 11pt; line-height: 1.45; margin: 24px; color: #222; }
h1, h2, h3 { color: #111; }
table { border-collapse: collapse; width: 100%; margin: 12px 0; font-size: 10pt; }
th, td { border: 1px solid #ccc; padding: 4px 8px; vertical-align: top; }
th { background: #f0f0f0; text-align: left; }
code, pre { font-family: Consolas, "Courier New", monospace; }
pre { background: #f7f7f7; padding: 8px; overflow: auto; }
a { color: #0645ad; }
'@ | Set-Content -LiteralPath $CssPath -Encoding UTF8
}

function Convert-HtmlToPdf([string]$HtmlPath, [string]$PdfPath, [string]$Browser) {
    if ($Browser) {
        $uri = ([Uri](Resolve-Path -LiteralPath $HtmlPath).Path).AbsoluteUri
        if (Test-Path -LiteralPath $PdfPath) { Remove-Item -LiteralPath $PdfPath -Force }
        $args = @(
            '--headless', '--disable-gpu', '--no-first-run',
            '--no-pdf-header-footer',
            "--print-to-pdf=$PdfPath",
            $uri
        )
        $p = Start-Process -FilePath $Browser -ArgumentList $args -Wait -PassThru -WindowStyle Hidden
        if ((Test-Path -LiteralPath $PdfPath) -and ((Get-Item -LiteralPath $PdfPath).Length -gt 0)) {
            return $true
        }
        if ($p.ExitCode -ne 0) {
            Write-Host "   Browser PDF exit $($p.ExitCode)"
        }
    }
    return $false
}

function Convert-DocxToPdfWord([string]$DocxPath, [string]$PdfPath) {
    $word = $null
    $doc = $null
    try {
        $word = New-Object -ComObject Word.Application
        $word.Visible = $false
        $word.DisplayAlerts = 0
        $doc = $word.Documents.Open((Resolve-Path -LiteralPath $DocxPath).Path, $false, $true)
        if (Test-Path -LiteralPath $PdfPath) { Remove-Item -LiteralPath $PdfPath -Force }
        # 17 = wdFormatPDF
        $doc.SaveAs2($PdfPath, 17)
        return (Test-Path -LiteralPath $PdfPath)
    }
    catch {
        Write-Host "   Word PDF failed: $($_.Exception.Message)"
        return $false
    }
    finally {
        if ($null -ne $doc) {
            $doc.Close($false) | Out-Null
            [void][System.Runtime.InteropServices.Marshal]::ReleaseComObject($doc)
        }
        if ($null -ne $word) {
            $word.Quit() | Out-Null
            [void][System.Runtime.InteropServices.Marshal]::ReleaseComObject($word)
        }
        [GC]::Collect()
    }
}

function Get-RelDir([string]$FilePath) {
    $dir = Split-Path -Parent $FilePath
    if ($dir.StartsWith($Root, [StringComparison]::OrdinalIgnoreCase)) {
        $rel = $dir.Substring($Root.Length).TrimStart('\', '/')
        return $rel
    }
    return ''
}

function Convert-One([string]$FilePath, [string]$Pandoc, [string]$Browser) {
    $file = (Resolve-Path -LiteralPath $FilePath).Path
    $name = [IO.Path]::GetFileNameWithoutExtension($file)
    $inDir = Split-Path -Parent $file
    $rel = Get-RelDir $file
    $needDocx = $Format -in @('docx', 'both')
    $needPdf = $Format -in @('pdf', 'both')
    $relDisplay = $file.Substring($Root.Length).TrimStart('\')
    Write-Host "-- $relDisplay"

    $outDocx = $null
    if ($needDocx -or $needPdf) {
        $docxDir = Join-Path $Export (Join-Path 'docx' $rel)
        if (-not (Test-Path -LiteralPath $docxDir)) {
            New-Item -ItemType Directory -Path $docxDir -Force | Out-Null
        }
        $outDocx = Join-Path $docxDir "$name.docx"
        & $Pandoc -f gfm -t docx --wrap=none --resource-path=$inDir -o $outDocx $file
        if ($LASTEXITCODE -ne 0 -or -not (Test-Path -LiteralPath $outDocx)) {
            Write-Host '   FAIL docx'
            $script:Fail++
            $outDocx = $null
        }
        elseif ($needDocx) {
            Write-Host "   OK   docx  $($outDocx.Substring($Root.Length).TrimStart('\'))"
            $script:Ok++
        }
        elseif (-not $needDocx) {
            # PDF-only: keep temp docx for Word fallback, delete later if unused
        }
    }

    if ($needPdf) {
        $pdfDir = Join-Path $Export (Join-Path 'pdf' $rel)
        if (-not (Test-Path -LiteralPath $pdfDir)) {
            New-Item -ItemType Directory -Path $pdfDir -Force | Out-Null
        }
        $outPdf = Join-Path $pdfDir "$name.pdf"
        $tmpHtml = Join-Path $pdfDir "$name.html"
        $htmlOk = $false
        & $Pandoc -f gfm -t html5 -s --embed-resources --standalone --metadata title=$name --css=$CssPath --resource-path=$inDir -o $tmpHtml $file
        if ($LASTEXITCODE -eq 0 -and (Test-Path -LiteralPath $tmpHtml)) { $htmlOk = $true }
        else {
            & $Pandoc -f gfm -t html5 -s --self-contained --metadata title=$name --css=$CssPath --resource-path=$inDir -o $tmpHtml $file
            if ($LASTEXITCODE -eq 0 -and (Test-Path -LiteralPath $tmpHtml)) { $htmlOk = $true }
        }

        $pdfOk = $false
        if ($htmlOk) {
            $pdfOk = Convert-HtmlToPdf -HtmlPath $tmpHtml -PdfPath $outPdf -Browser $Browser
        }
        if (-not $pdfOk -and $outDocx) {
            Write-Host '   PDF via Word...'
            $pdfOk = Convert-DocxToPdfWord -DocxPath $outDocx -PdfPath $outPdf
        }
        if ($htmlOk -and (Test-Path -LiteralPath $tmpHtml)) {
            Remove-Item -LiteralPath $tmpHtml -Force -ErrorAction SilentlyContinue
        }
        if ($pdfOk) {
            Write-Host "   OK   pdf   $($outPdf.Substring($Root.Length).TrimStart('\'))"
            $script:Ok++
        }
        else {
            Write-Host '   FAIL pdf'
            $script:Fail++
        }
        if ($Format -eq 'pdf' -and $outDocx -and (Test-Path -LiteralPath $outDocx)) {
            Remove-Item -LiteralPath $outDocx -Force -ErrorAction SilentlyContinue
        }
    }
}

if (-not $Target) {
    throw 'No target. Pass a .md file or "all".'
}

$pandoc = Find-Pandoc
if (-not $pandoc) {
    $pandoc = Install-Pandoc
}
$browser = Find-Browser
Write-ExportCss

$files = @()
if ($Target -eq 'all') {
    $files = Get-ChildItem -Path $Root -Filter *.md -Recurse -File |
        Where-Object { $_.FullName -notmatch '[\\/]export[\\/]' }
}
else {
    if (-not (Test-Path -LiteralPath $Target)) { throw "File not found: $Target" }
    $item = Get-Item -LiteralPath $Target
    if ($item.Extension -ne '.md') { throw "Not a Markdown file: $Target" }
    $files = @($item)
}

Write-Host ""
Write-Host "Pandoc : $pandoc"
if ($browser) { Write-Host "Browser: $browser" } else { Write-Host 'Browser: (none — PDF will use Word if needed)' }
Write-Host "Format : $Format"
Write-Host "Files  : $($files.Count)"
Write-Host ""

foreach ($f in $files) {
    Convert-One -FilePath $f.FullName -Pandoc $pandoc -Browser $browser
}

Write-Host ""
Write-Host "Done.  OK=$($script:Ok)  failed=$($script:Fail)"
Write-Host "Output: $Export"
if ($script:Fail -gt 0) { exit 1 }
exit 0
