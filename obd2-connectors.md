# OBD-II Connectors by Brand and Model (MY2020+)

For passenger cars in this set, the **physical plug is almost always the same**: SAE **J1962 Type A**, 16-pin female, 12 V. What changes by brand and model is **where it sits**, **which protocols live on it**, and **how much a generic OBD-II tool can see**.

A cheap ELM327-style dongle talks **legislated emissions CAN** (ISO 15765-4) only. Hybrid inverters, BMS, 48 V, ADAS, and adaptations need the **factory tool on the same plug** (or Tesla Service Mode).

Do not force a 24 V Type B plug, a pre-1996 Toyota 17-pin, a BMW 20-pin, or a VW 2×2 adapter onto a 2020+ car.

---

## 0. What “supported” means here

| Layer | 2020+ passenger cars in this book |
|---|---|
| **Shell** | J1962 Type A (12 V), 16 cavities |
| **Power / ground** | Pin 16 = +12 V (or a DC-DC-fed 12 V on some BEVs); pins 4 and 5 = grounds |
| **Legislated OBD** | Pins **6 (CAN-H)** and **14 (CAN-L)** — ISO 15765-4, 500 kbit/s |
| **OEM diagnostics** | Same shell: extra CAN, Ethernet/DoIP, or a gateway. Factory software required |
| **Not on generic OBD** | HV isolation kΩ, charge permit, 48 V teach-in, transaxle adaptations, ADAS cal |

**Generic scan will usually show:** MIL, emissions DTCs (P0xxx), freeze-frame, Mode 01 PIDs (rpm, load, temps on ICE).  
**Generic scan will usually not show:** hybrid/BEV system DTCs, module coding, DoIP-only ECUs.

ICE and PHEV cars sold as emissions-regulated vehicles **must** present legislated OBD on this plug. Many BEVs still have the plug for OEM work; legislated content on a BEV is thinner (often almost empty on a generic tool).

---

## 1. Japan

### Toyota / Lexus / Camry

| Item | Detail |
|---|---|
| **Connector** | J1962 Type A — Toyota calls it **DLC3** |
| **Location** | Under the dash, driver’s side, left of the steering column (most TNGA) |
| **Protocols** | ISO 15765-4 CAN on 6/14. OEM: ISO-CAN / CAN-FD on the gateway (Techstream / GTS+) |
| **Tool** | Techstream / GTS+ |

| Models | Plug | Generic OBD-II | Factory on same plug |
|---|---|---|---|
| Camry XV70 ICE / Hybrid, XV80 Hybrid | DLC3 J1962 | Engine/emissions on ICE; hybrid emissions subset | Hybrid ECU, HV battery blocks, 8AT adapts, AGM register, TSS cal |
| RAV4 / Hybrid / Prime, Highlander Hybrid | DLC3 | Same | Inverter temps, PHEV charge permit, rear MG |
| Corolla / Corolla Cross Hybrid, Prius / Prime | DLC3 | Same | PCU/HV, Prime charge path |
| Sienna Hybrid, Venza, Crown | DLC3 | Same | Sliding-door/body + hybrid |
| bZ4X, Lexus RZ | DLC3 | Little or no “engine” data | Isolation, charge ECU, e-axle |
| Lexus ES/NX/RX/UX Hybrid, NX/RX PHEV, LS 500h, TX | DLC3 | Emissions subset | Same THS + Lexus comfort/ADAS |

No separate Lexus plug. Do not use a pre-OBD Toyota 17-pin cable.

### Honda / Acura

| Item | Detail |
|---|---|
| **Connector** | J1962 Type A |
| **Location** | Driver’s kick panel / under dash, left |
| **Protocols** | CAN ISO 15765-4; OEM UDS on i-HDS |
| **Tool** | i-HDS / HDS |

| Models | Plug | Generic OBD-II | Factory |
|---|---|---|---|
| Civic 11th ICE / e:HEV, Accord ICE / e:HEV | J1962 | Engine/emissions | PCU, battery sensor register, brake-hold/ADAS cal |
| CR-V ICE / Hybrid / PHEV | J1962 | Same | e:HEV + PHEV charge permit |
| HR-V, Integra, MDX, RDX | J1962 | Engine/emissions | SHAWD, ADAS |
| Prologue / ZDX (Ultium) | J1962 | Thin BEV legislated set | GDS2/Ultium path — Honda i-HDS plus GM-family HV |

### Nissan / Infiniti

| Item | Detail |
|---|---|
| **Connector** | J1962 Type A |
| **Location** | Under dash, driver’s side |
| **Protocols** | CAN; CONSULT-III plus / CONSULT-IV on the same DLC |
| **Tool** | CONSULT-III+ / IV |

| Models | Plug | Generic OBD-II | Factory |
|---|---|---|---|
| Rogue, Altima, QX50, QX60 ICE | J1962 | Engine/emissions, some TCM | CVT adapts, VC-Turbo, ProPILOT |
| Leaf, Ariya | J1962 | Minimal engine PIDs | Contactors, isolation, e-AWD, quick-charge |
| e-Power (markets) | J1962 | Engine subset | Generation kW into the pack |

### Mazda

| Item | Detail |
|---|---|
| **Connector** | J1962 Type A |
| **Location** | Under dash, left of column |
| **Protocols** | CAN; MDARS / dealer suite |
| **Tool** | MDARS |

| Models | Plug | Generic OBD-II | Factory |
|---|---|---|---|
| Mazda3, CX-5, CX-50 ICE | J1962 | Engine/emissions | i-Activsense cal, TCM |
| CX-60 / CX-80 PHEV | J1962 | Engine + thin EV | Charge permit, hybrid clutch |
| MX-30 BEV / R-EV | J1962 | Thin | Isolation, thermal, rotary extender (R-EV) |

### Subaru

| Item | Detail |
|---|---|
| **Connector** | J1962 Type A |
| **Location** | Under dash, driver’s side |
| **Protocols** | CAN; SSM4 |
| **Tool** | Subaru Select Monitor 4 |

| Models | Plug | Generic OBD-II | Factory |
|---|---|---|---|
| Outback, Forester, Crosstrek, WRX, Ascent ICE | J1962 | Engine/emissions | EyeSight cal, CVT |
| Forester / Crosstrek Hybrid | J1962 | Engine subset | ISG / assist |
| Solterra | J1962 | Thin BEV | Same e-TNGA isolation/charge as bZ4X |

### Mitsubishi

| Item | Detail |
|---|---|
| **Connector** | J1962 Type A |
| **Location** | Under dash, driver’s side |
| **Protocols** | CAN; MUT-III SE |
| **Tool** | MUT-III SE |

| Models | Plug | Generic OBD-II | Factory |
|---|---|---|---|
| Outlander ICE, Eclipse Cross | J1962 | Engine/emissions | AWD, ADAS |
| Outlander PHEV | J1962 | Engine subset | OBC, twin-motor rear, hybrid coolant |

---

## 2. United States

### Tesla

| Item | Detail |
|---|---|
| **Connector** | J1962 Type A on 3 / Y / refreshed S / X (often behind a small cover) |
| **Location** | 3/Y: driver’s footwell, left of the dead pedal / under dash cover |
| **Protocols** | Tesla CAN on the DLC — **not** a full SAE Mode 01 emissions implementation. Aftermarket “Tesla OBD” cables talk Tesla IDs, not generic P0 codes |
| **Tool** | In-car **Service Mode**; Toolbox at service |

| Models | Plug | Generic ELM327 | Factory / Service Mode |
|---|---|---|---|
| Model 3 / Y (including Highland/Juniper) | J1962 present | Usually **no useful legislated OBD**. Some third-party Tesla-protocol dongles read limited data | Alerts, contactors, thermal, firmware |
| Model S / X refreshed | J1962 present | Same | Same |
| Cybertruck | Tesla diagnostic access; do **not** assume a full legislated OBD stack. Confirm the VIN port in SI | Generic OBD dongles are not supported | Service Mode / Toolbox; 48 V LV is not pin-16 “alternator 12 V” |

Do not use a 12 V jump pack on pin 16 as a Cybertruck 48 V supply.

### Ford / Lincoln

| Item | Detail |
|---|---|
| **Connector** | J1962 Type A |
| **Location** | Under dash, left of the steering column |
| **Protocols** | HS-CAN (ISO 15765-4) on 6/14; OEM MS-CAN / CAN-FD via gateway. FDRS |
| **Tool** | FDRS (IDS is legacy) |

| Models | Plug | Generic OBD-II | Factory |
|---|---|---|---|
| Escape, Explorer, Bronco Sport, Aviator ICE | J1962 | Engine/emissions | 10R80 adapts, Sync |
| Escape / Maverick Hybrid, Escape PHEV | J1962 | Engine subset | Stop Safely Now, hybrid transaxle, PHEV charge |
| Mustang Mach-E, F-150 Lightning | J1962 | Thin BEV | Isolation, GO Time thermal, zone BCM |

### General Motors / Cadillac

| Item | Detail |
|---|---|
| **Connector** | J1962 Type A |
| **Location** | Under dash, driver’s side |
| **Protocols** | GMLAN / CAN; GDS2 + MDI-2 (or equivalent) on the same DLC. Some Ultium also use Ethernet/DoIP at the dealer |
| **Tool** | GDS2 / SPS |

| Models | Plug | Generic OBD-II | Factory |
|---|---|---|---|
| ICE trucks/SUVs, Malibu, Traverse, etc. | J1962 | Engine/emissions | AFM, 8/10-speed, Super Cruise |
| Bolt EV / EUV | J1962 | Thin | Isolation, APM/12 V, charge |
| Lyriq, Blazer EV, Equinox EV, Silverado EV, Honda Prologue | J1962 | Thin | Ultium HV, charge, OTA |

### Rivian

| Item | Detail |
|---|---|
| **Connector** | J1962 Type A |
| **Location** | Under dash, driver’s side (confirm cover on R1T/R1S) |
| **Protocols** | CAN to a gateway. Generic Mode 01 is limited. Rivian service tools on the same or a service Ethernet path |
| **Tool** | Rivian service diagnostics |

| Models | Plug | Generic OBD-II | Factory |
|---|---|---|---|
| R1T, R1S, R2 (as released) | J1962 | Thin / not a substitute | Isolation, air suspension, HVIL, thermal |

### Jeep / Stellantis PHEV

| Item | Detail |
|---|---|
| **Connector** | J1962 Type A |
| **Location** | Under dash, left |
| **Protocols** | CAN; wiTECH 2.0 / SGW (security gateway — aftermarket may need a gateway unlock at the dealer) |
| **Tool** | wiTECH 2.0 |

| Models | Plug | Generic OBD-II | Factory |
|---|---|---|---|
| Wrangler / Grand Cherokee 4xe | J1962 | Engine subset | Electrified propulsion, e-pump, ESS |
| Pacifica PHEV | J1962 | Engine subset | Charge path, ETRS |
| Hornet PHEV | J1962 | Engine subset | Same Stellantis PHEV path |

A security gateway on many 2018+ FCA/Stellantis cars blocks bi-directional aftermarket commands until unlocked. Read still often works for emissions.

---

## 3. Europe

### Mercedes-Benz

| Item | Detail |
|---|---|
| **Connector** | J1962 Type A (16-pin). The old 38-pin underhood is **not** used on 2020+ cars |
| **Location** | Driver’s footwell / under dash (LHD); passenger side on some RHD |
| **Protocols** | CAN on 6/14; **DoIP** (ISO 13400 Ethernet) on later cars — XENTRY prefers DoIP when offered |
| **Tool** | XENTRY |

| Models | Plug | Generic OBD-II | Factory |
|---|---|---|---|
| C/E/S/GLC 48 V EQ Boost | J1962 | Engine/emissions | 48 V, ISG, DC-DC teach-in |
| C 300e, E 300e, S 580e, GLC/GLE PHEV | J1962 | Engine subset | Charge permit, HV isolation |
| EQA, EQB, EQC | J1962 | Thin BEV | Isolation, OBC, 4MATIC EDU |
| EQE, EQS, EQE/EQS SUV | J1962 + DoIP | Thin | Contactors, pyro, thermal, air ride |

### Volkswagen

| Item | Detail |
|---|---|
| **Connector** | J1962 Type A |
| **Location** | Under dash, left of the column (most MQB/MEB) |
| **Protocols** | CAN; **DoIP** on MEB and later MQB — ODIS online. Pin 8 is often used to wake Ethernet (DoIP activation) |
| **Tool** | ODIS |

| Models | Plug | Generic OBD-II | Factory |
|---|---|---|---|
| Golf / Tiguan / Passat eTSI | J1962 | Engine/emissions | 48 V, energy-management |
| Golf GTE, Tiguan eHybrid, Passat/Arteon GTE | J1962 | Engine subset | DQ400e, charge permit |
| ID.3, ID.4, ID.5, ID.7, ID.Buzz | J1962 + DoIP | Thin BEV | Isolation, OBC, SVM, EDU |

### Audi

| Item | Detail |
|---|---|
| **Connector** | J1962 Type A (same family as VW) |
| **Location** | Under dash, driver’s side |
| **Protocols** | CAN + **DoIP**. ODIS **Audi** project — do not run a VW ID. project on an Audi VIN |
| **Tool** | ODIS (Audi) |

| Models | Plug | Generic OBD-II | Factory |
|---|---|---|---|
| A4–A8, Q5/Q7/Q8 48 V | J1962 | Engine/emissions | 48 V, MMI, ADAS |
| A3/A6/Q5/Q7/Q8 TFSI e | J1962 | Engine subset | Charge permit, hybrid clutch |
| e-tron / Q8 e-tron (MLB) | J1962 + DoIP | Thin | Isolation, air ride, frunk HV |
| Q4 e-tron (MEB) | J1962 + DoIP | Thin | Same MEB path as ID.4, Audi coding |
| e-tron GT, Q6 e-tron, A6 e-tron | J1962 + DoIP | Thin | 800 V charge/boost, PPE/J1 |

---

## 4. China

Unless noted, the plug is **J1962 Type A**, under the dash (driver or passenger side — many LHD China cars still put it left of the column; confirm). Generic OBD-II on China 6 ICE/PHEV is emissions. BEV: thin legislated set; BMS/isolation needs the dealer tablet. GB/T 32960 is **telematics**, not a substitute DLC.

| Brand | Models | Plug | Generic OBD-II | Factory tool |
|---|---|---|---|---|
| **BYD** | Qin/Han/Tang DM-i; Seal, Dolphin, Atto 3, Han EV | J1962 | DM engine subset; BEV thin | BYD OSS / Diag — Blade, DHT, GB/T charge |
| **Geely / Zeekr / Lynk** | Xingyue L PHEV; Zeekr 001/007/X/009; Geometry | J1962 | ICE/PHEV emissions; BEV thin | Geely/Zeekr suite — DHT, 800 V, air ride |
| **NIO** | ES/ET/EL, swap cars | J1962 | Thin | NIO service + **swap-station logs** (pack auth, HVIL) |
| **XPeng** | P7, G6, G9, X9 | J1962 | Thin | XPeng suite — 800 V boost, XPILOT |
| **Li Auto** | L7/L8/L9 EREV; MEGA BEV | J1962 | Extender engine subset on EREV | Dealer — **generation kW**, extender start |
| **GWM** | Haval, Wey, Ora, Tank | J1962 | ICE/DHT emissions subset | GWM tablet — DCT/DHT/9HAT/Hi4/Ora BMS |
| **Hongqi** | H5/H9/HS5, HQ9 PHEV, E-HS9, EH7 | J1962 | ICE/48 V emissions | FAW tool — 48 V, E-CVT, E-series BMS |
| **SAIC / MG / IM** | MG HS DCT; MG4, ZS EV; IM 800 V | J1962 | ICE emissions; BEV thin | SAIC/MG/IM — often GB/T + CCS export |
| **Chery / Exeed** | 1.5T/DCT; DHT PHEV; NEV BEV | J1962 | ICE/PHEV emissions | Chery platform — DHT, GB/T |

Export cars (MG in Europe, BYD Atto 3, GWM Ora, Zeekr) keep the **same J1962 shell**; software project and charge standard (CCS vs GB/T) change, the plug does not.

---

## 5. Quick lookup — connector type

| If you have | Use this cable | Do not use |
|---|---|---|
| Any 2020+ car in this book except Tesla Cybertruck (confirm) | Standard **J1962 Type A** 16-pin male | 24 V Type B, BMW 20-pin, Toyota 17-pin, VW 2×2 |
| Tesla 3/Y/S/X | J1962 + **Tesla-protocol** app/Service Mode | Expecting Ford/Toyota Mode 01 PIDs |
| Mercedes / VW / Audi 2020+ | J1962; dealer **DoIP** (Ethernet) for full scan | K-line-only old VCDS-on-K for MEB |
| Stellantis 2018+ | J1962; wiTECH may need **SGW unlock** for bi-dir | Assuming Autel can code the gateway |
| Any hybrid/BEV | J1962 for a first look | Replacing a pack from generic P0 codes alone |

---

## 6. Workshop check

1. Find the J1962 under the dash; do not pry a covered Tesla/Rivian port with a metal hook.  
2. Pin 16 should show ~12 V to pin 4/5 on a conventional 12 V car. A dead pin 16 is a fuse or DC-DC problem, not a “wrong connector.”  
3. Generic tool: confirm ISO 15765-4 link. If it fails on a 2020+ ICE, check ignition-on, grounds, and the tool — not a 17-pin adapter.  
4. Factory tool: select the **correct brand project** (Audi ≠ VW ID., Techstream vs GTS+).  
5. After the job, unplug the dongle. A cheap always-on Bluetooth adapter is a common 12 V drain.

---

*Pin 6/14 CAN and J1962 Type A are the SAE standard for these cars. Confirm DLC location and DoIP/SGW behavior in VIN-specific SI. This file does not describe defeating a security gateway or changing stored odometer data.*
