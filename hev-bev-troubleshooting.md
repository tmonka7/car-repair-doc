# HEV / BEV Troubleshooting Methods (MY2020+)

Step-by-step diagnosis for **hybrid and battery-electric** passenger cars. This file is the method. Symptom tables and repairs for each brand stay in the brand files linked below.

Confirm every measurement and lockout against **VIN-specific** OEM service information. Orange high-voltage work requires the factory disable, Class 0 PPE, a wait time, and a **0 V** check before you touch a cable.

Displayed mileage must remain the distance the vehicle has actually traveled. This guide does not describe changing a cluster reading.

---

## 0. Universal first pass (every brand)

Do these in order. Most “inverter / pack / drive unit” misdiagnoses stop here.

| Step | What you do | Pass / fail |
|---|---|---|
| **1. Support 12 V** | Resting voltage, load test, voltage **during** a Ready attempt at the battery posts | If Ready returns after a jump and codes clear, finish the 12 V / DC-DC job before HV parts |
| **2. Full OEM scan** | Health-check **all** modules with the factory tool, save freeze-frame | Generic OBD-II is not enough for HV permit, isolation, or adaptations |
| **3. Name the architecture** | HEV / PHEV / EREV / BEV; 400 V vs 800 V; one motor vs two; NiMH vs Li-ion | Wrong pack or AWD unit if you skip this |
| **4. Ready permit** | Interlock (HVIL), contactors, crash/pyro, shift position, brake switch | No torque with Ready on is often interlock or resolver, not a dead motor |
| **5. Isolation** | Record kΩ from the BMS. Section heater → compressor → OBC → pack | Do not replace a pack until the sections fail |
| **6. Thermal** | Separate engine loop from inverter/pack loop. Pump duty, both levels, both temps | “Check Hybrid System” + loud fans is usually the **hybrid** reservoir |
| **7. Charge permit** (PHEV/BEV) | Proximity / control-pilot, inlet lock, OBC temp, BMS permit, pack temp | Try a second EVSE before condemning the car |
| **8. Then pinpoint** | Brand flowchart for the codes that **remain** after 12 V is solid | |

Two coolant loops is the default on hybrids and most BEVs. Independent shops that “did a coolant service” often filled the wrong one.

---

# 1. Toyota

**Tool:** Techstream / GTS+  
**Coolant:** SLLC (pink); hybrids have a dedicated inverter/MG loop  
**Lockout:** Service plug (location is model-specific — luggage, rear seat, or under-hood cover). Verify 0 V.

Brand file: [brands/japan/toyota-lexus.md](brands/japan/toyota-lexus.md) · Camry: [brands/japan/toyota-camry.md](brands/japan/toyota-camry.md)

## 1.1 Method that applies to every Toyota hybrid

1. Techstream: Hybrid Control, HV Battery, MG ECU, Engine — save Data List and freeze-frame.  
2. Watch **inverter temp vs MG temps** and **hybrid water-pump duty** on a road load. Pump at 100% with rising inverter temp = cooling fault, not a “weak pack.”  
3. HV battery: record **each block voltage** at idle, moderate accel, and regen. ΔV that grows under load is imbalance; ΔV that is huge at rest is a connection or module.  
4. ICE start event: graph **engine RPM vs MG1 RPM**. A mechanical start with misfire is fuel/ignition/mounts. MG1 that never spins is transaxle/inverter.  
5. Ready / no drive: shift-position PID, brake-lamp switch, park-pawl, then resolver connectors at the transaxle.  
6. PHEV charge: on-plug proximity and pilot, OBC inlet temp, HV battery **charge permit** flags, 12 V.

## 1.2 Prius 5th gen / Prius Prime (XW60, MY2023+)

| Path | Method |
|---|---|
| Check Hybrid System, fans | Hybrid reservoir cold; pressure-test **inverter** loop only; active-test the electric pump; IR on the inverter after 10 min load |
| Harsh ICE start from EV | Mounts (hydraulic leak), first-cycle misfire, MG1 vs RPM overlay, start-feel TSB |
| Prime: no EV / no charge | Charge-door latch, EVSE, OBC, PHEV coolant loop, permit flags; full Level 2 charge then an EV drive |
| Reduced power after water | Isolation kΩ; underbody connectors; dry and retest before pack replacement |

## 1.3 Camry Hybrid (XV70 MY2020–2024 · XV80 MY2025+)

Identify generation first. XV70 = NiMH + P710. XV80 = Li-ion + 5th-gen THS; NA is hybrid-only; AWD is a **rear motor**, not the XV70 coupling.

| Path | Method |
|---|---|
| Inverter coolant | Same as §1.1 step 2. Do not fill the engine tank and call the hybrid loop done |
| XV70 P0A80 | Block voltages under accel/regen; rear-seat intake filter and fan; ΔV vs OEM limit |
| P1C5D19 / P1C5F19 (early XV70) | Health check; motor-cable / P710 connection bulletin **before** inverter R&R |
| XV80 AWD missing | Rear-motor / rear-inverter DTCs, isolation, rear connector; load-test AWD from a stop |
| Jump clears all lamps | 12 V load test + DC-DC current in Ready; then re-scan |
| 2025 inverter fastener campaign | VIN only. HV lockout. Toyota procedure — no field “snug the bolt” |

Full Camry cases: [toyota-camry.md](brands/japan/toyota-camry.md).

## 1.4 RAV4 Hybrid / RAV4 Prime

| Path | Method |
|---|---|
| Hybrid coolant / P0A93 | Identical inverter-loop method as Camry; check quick-connect O-rings at the inverter |
| AWD (hybrid) | Rear MG codes and isolation. Mismatched tires create ABS/VSC that looks like a rear-motor fault — live-data all four wheel speeds first |
| Prime: EV locked / charge fail | Latch, pilot, OBC, **PHEV battery coolant** (third loop on some), 12 V, permit flags |
| Ready, no move | Same resolver / shift / brake path as §1.1 step 5 |

## 1.5 Highlander Hybrid / Grand Highlander Hybrid

| Path | Method |
|---|---|
| Thermal derate on grades | Hybrid pump duty, inverter temp, fans; low hybrid coolant after a “engine-only” coolant job is common |
| Pack / rear-seat heat | Block ΔV; intake filter (third-row packaging hides a clogged filter) |
| Harsh start | Mounts + MG1 overlay; heavier vehicle so mount wear shows earlier |

## 1.6 Corolla Hybrid / Corolla Cross Hybrid

| Path | Method |
|---|---|
| 12 V / Ready fail | Auxiliary 12 V and grounds first; TNGA-C hybrids throw PCU codes when LV dips |
| Inverter cooling | Smaller reservoir — a small leak empties the loop. Pressure-test; do not keep topping up |
| ABS after tires | Wheel-speed rationality before hybrid parts |

## 1.7 Sienna Hybrid (all-hybrid in NA)

| Path | Method |
|---|---|
| Sliding-door / cabin drain | Water in a body module can drop the hybrid network. Dry doors and grounds before a pack |
| Thermal + family load | A/C electric compressor isolation if the warning appears after rain or a flood-path wash |
| Rear AWD motor | Same as RAV4 Hybrid rear MG; confirm tire sizes on a van that often has mixed replacements |

## 1.8 Venza Hybrid / Crown / Crown Signia

| Path | Method |
|---|---|
| Same THS family as RAV4/Camry | Use §1.1. Confirm Li-ion vs NiMH from the VIN before pack tests |
| Crown AWD | Rear electric axle diagnosis — isolation and connector, not a mechanical coupling flush |

## 1.9 bZ4X (and shared e-TNGA: Lexus RZ, Subaru Solterra)

| Path | Method |
|---|---|
| DC charge aborts, AC OK | Dry the inlet; isolation; DC-path vs AC-path DTCs; thermal pumps **during** the DC attempt |
| Reduced power after snow / water | Rear e-axle connector and HVIL; milky e-axle oil; isolation retest |
| Morning brick | Sleep-draw; DCM/telematics; DC-DC current when HV is awake; 12 V replacement |
| Traction events, dry road | Wheel-speed PIDs (same as ICE ABS). EVs cut torque on a 2–3% speed error |

---

# 2. Lexus

**Tool:** Techstream / GTS+ (same family as Toyota)  
**Difference:** more comfort modules, Mark Levinson, and on RX/NX more PHEV volume. 12 V drain from amplifiers is a Lexus-specific first check.

Brand file: [brands/japan/toyota-lexus.md](brands/japan/toyota-lexus.md)

## 2.1 ES 300h

| Path | Method |
|---|---|
| Hybrid warning + fans | Inverter loop (shared with Camry Hybrid method) |
| Pack imbalance | Rear-seat filter; block ΔV under load |
| After battery disconnect | Steering-angle zero; parking-assist / camera calibration if the customer reports ADAS loss |

## 2.2 UX 250h / UX 300e (markets)

| Path | Method |
|---|---|
| 250h | Compact TNGA-C hybrid: 12 V first, then inverter coolant, then small NiMH/Li-ion pack ΔV |
| 300e BEV | Isolation sectional (PTC, compressor, OBC); charge inlet; 12 V sleep |

## 2.3 NX 350h / NX 450h+

| Path | Method |
|---|---|
| 350h | Same THS inverter-loop and start-feel method as RAV4 Hybrid |
| 450h+ PHEV | Charge permit (latch, pilot, OBC), **PHEV coolant**, EV-mode inhibit flags. If the engine always runs, do not replace the transaxle until permits are clean |
| EPS after 12 V work | Load-test; steering-angle calibration; torque-sensor connector |

## 2.4 RX 350h / 450h+ / 500h

| Path | Method |
|---|---|
| 350h / 450h+ | Inverter cooling; PHEV charge path on 450h+; rear electric axle on AWD |
| 500h (performance hybrid) | Treat thermal and clutch/gear noise as separate: cooling data first, then transaxle pinpoint |
| Mark Levinson drain | Sleep current; amplifier that stays awake; 12 V replacement after the draw is fixed |

## 2.5 RZ (BEV, shared with bZ4X)

Use **§1.9**. Add Lexus: air-suspension or adaptive-variable suspension calibration if height or ADAS were disturbed; radar/camera static calibration after bumper or glass.

## 2.6 LS 500h / TX 550h+ / other low-volume

Same Toyota HV method: 12 V → full scan → hybrid loop → block ΔV → permit/HVIL. Confirm VIN coolant map (flagship cars add extra heat-exchanger valves). Do not copy a Camry pump part number.

---

# 3. Mercedes-Benz

**Tool:** XENTRY Diagnosis  
**Families:** 48 V EQ Boost · PHEV · EQ BEV (MFA2 compact / EVA2 flagship)  
Brand file: [brands/europe/mercedes-benz.md](brands/europe/mercedes-benz.md)

## 3.1 Method that applies to every Mercedes electrified car

1. XENTRY **short test** of every control unit. Save actual values.  
2. Load-test **12 V**. On 48 V cars, also read 48 V SOC, temperature, and DC-DC output.  
3. For PHEV/EQ: isolation resistance, HV interlock, pyro/crash status, contactor state.  
4. Charge path: inlet lock, control-pilot, OBC actual values, BMS permit, pack min/max temp.  
5. Coolant: engine vs battery vs power-electronics — XENTRY guided fill points.  
6. After a collision: **do not bypass** a pyro fuse. Follow XENTRY HV safety.

## 3.2 C-Class / E-Class / S-Class / GLC — 48 V EQ Boost

| Path | Method |
|---|---|
| No start-stop, 48 V warning | 48 V pack SOC/temp → DC-DC 14 V output → ISG requested vs actual. Jumping 12 V only will not charge a dead 48 V battery |
| Harsh restart | 12 V + 48 V both in spec; then ISG teach-in and engine mounts |
| Multiple U-codes | 12 V brownout during restart; fix LV/48 V before replacing the ISG |

## 3.3 C 300e / E 300e / E 350e / S 580e / GLC 300e (PHEV)

| Path | Method |
|---|---|
| No AC charge | Second EVSE; inlet lock; pilot voltage; OBC temp and faults; BMS permit; 12 V |
| Engine always runs | Charge permit and EV inhibit (temp, isolation, transmission, hood). Not an automatic engine fault |
| Power limited / inverter hot | HV-loop level and electric pump; do not top up the engine expansion tank only |
| Isolation after rain | Section PTC, electric A/C, OBC, pack |

## 3.4 GLE 350e / 450e (PHEV SUV)

Same PHEV method as §3.3. Add: underbody pack shield damage after off-curb hits (HVIL), and air-suspension lean as a **separate** job from HV derate.

## 3.5 EQA / EQB (MFA2 BEV)

| Path | Method |
|---|---|
| No Ready | 12 V → HVIL → contactors → isolation |
| Isolation / limp after wash | PTC and compressor first; underbody connectors; dry retest |
| AC charge cut-out | OBC cooling and site voltage; then OBC |
| DC fail, AC OK | CCS pins, lock, second pile, pack temp |
| 4MATIC disabled | Front or rear EDU DTCs and that axle’s isolation |

## 3.6 EQC (run-out BEV)

Same isolation / charge / 12 V method as EQA. Confirm EQC-specific service disconnect in XENTRY; do not use an EVA2 disconnect diagram.

## 3.7 EQE / EQS / EQE SUV / EQS SUV (EVA2)

| Path | Method |
|---|---|
| No propulsion | 12 V support; XENTRY HV status; pyro if crash history; contactors |
| Slow DC / thermal | Battery pumps and valves; heat-pump actual values; grille shutters; cell temp spread |
| One motor of 4MATIC dead | That inverter/EDU; isolation; connector after underbody work |
| Air ride + HV derate together | Two diagnoses: leak-down/height cal **and** pack cooling. Do not replace a pack for a lean corner |
| MBUX / overnight brick | Sleep-draw; telematics; 12 V |

---

# 4. Volkswagen (Wagen)

**Tool:** ODIS (online for SVM / many HV tests)  
**Families:** 48 V eTSI · MQB PHEV (GTE / eHybrid) · MEB ID.  
Brand file: [brands/europe/volkswagen.md](brands/europe/volkswagen.md)

## 4.1 Method that applies to every VW electrified car

1. ODIS complete scan. Note SVM outstanding and gateway coding.  
2. Support 12 V. MEB cars look “HV dead” when the 12 V is at 11.8 V.  
3. Isolation, HVIL, maintenance connector state.  
4. Charge: inlet lock, CCS/Type 2 pins, OBC, BMS permit.  
5. Thermal: heat-pump / HV-loop pumps on ID.; engine vs HV loop on GTE.  
6. If functions vanished after a flash: **finish the online SVM** before ordering an EDU.

## 4.2 Golf / Passat / Tiguan — eTSI 48 V

| Path | Method |
|---|---|
| Start-stop missing | 48 V SOC, BSG, 12 V, hood switch |
| Charging system lamp | DC-DC between 48 V and 12 V; do not replace the 12 V alternator — there isn’t a conventional one in the same role |

## 4.3 Golf GTE / Tiguan eHybrid / Passat GTE / Arteon eHybrid

| Path | Method |
|---|---|
| No EV / no charge | Inlet, OBC, BMS permit, isolation, 12 V |
| Shudder 20–40 km/h | **DQ400e** fluid spec and clutch adaptations — not dry-clutch DSG fluid |
| Harsh engine join | Mounts + hybrid clutch adaptations after a 12 V disconnect |
| Isolation | Electric compressor / heater / OBC sectional |

## 4.4 ID.3 / ID.4 / ID.5

| Path | Method |
|---|---|
| Morning no-Ready | 12 V load; sleep current; OCU / telematics / aftermarket tracker |
| Isolation after rain | Heater, compressor, OBC, pack; underbody connectors |
| AC charge stops mid-session | OBC coolant and temp; EVSE; then OBC |
| DC handshake fail | Second station; inlet lock; pin condition; BMS software |
| Speed-related whine | Wheel bearing vs rear EDU |
| AWD (dual motor) disabled | Front EDU isolation and connector |

## 4.5 ID.7

Same MEB method as §4.4. Add: longer vehicle — check rear-harness chafe after lift or alignment; more cabin modules for sleep-draw.

## 4.6 ID.Buzz

Same MEB method. Add: high roof-drain / sliding-door water into body modules; commercial conversions that tap 12 V constantly. Isolation after standing water (van ride height still floods connectors).

---

# 5. Audi

**Tool:** ODIS (Audi project, online SVM)  
**Families:** 48 V MHEV · TFSI e PHEV · e-tron MLB · Q4 MEB · e-tron GT / PPE 800 V  
Brand file: [brands/europe/audi.md](brands/europe/audi.md)

Q4 e-tron shares MEB with the ID.4. e-tron / Q8 e-tron does **not**. e-tron GT is 800 V J1 with the Taycan. Name the architecture from the VIN before you open a connector.

## 5.1 Method that applies to every Audi electrified car

1. ODIS complete scan on the **Audi** project. Note outstanding SVM.  
2. Load-test 12 V. On 48 V cars, also read 48 V SOC, temperature, and DC-DC output.  
3. Isolation, HVIL, maintenance-connector state, pyro/crash if collision history.  
4. Charge: inlet lock, CCS pins, OBC, BMS permit, pack min/max temp.  
5. Coolant: engine vs HV electronics vs battery / heat-pump — fill points are model-specific.  
6. Air suspension (many e-tron / Q7): treat height faults separately from HV derate.  
7. If quattro or assist vanished after a flash: **finish SVM** before ordering an EDU.

## 5.2 A4 / A5 / A6 / A7 / A8 / Q5 / Q7 / Q8 — 48 V MHEV

| Path | Method |
|---|---|
| No start-stop, 48 V warning | 48 V SOC/temp → DC-DC 14 V → BSG requested vs actual. Jumping 12 V only will not charge a dead 48 V pack |
| Harsh restart | Both 12 V and 48 V in spec; then BSG teach-in and engine mounts |
| Charging-system lamp | DC-DC between 48 V and 12 V — not a conventional alternator-only fault |

## 5.3 A3 / A6 / Q5 / Q7 / Q8 TFSI e (PHEV)

| Path | Method |
|---|---|
| No EV / no AC charge | Second EVSE; inlet lock; pilot; OBC temp; BMS permit; 12 V; isolation |
| Engine always runs | Charge permit and EV inhibit (temp, isolation, transmission, hood) before engine parts |
| Shudder or harsh join | Hybrid-transmission fluid spec and clutch adaptations after battery work |
| Power limited / inverter hot | HV-loop level and electric pump — not the engine expansion tank only |

## 5.4 e-tron / Q8 e-tron (MLB BEV)

| Path | Method |
|---|---|
| No Ready | 12 V → HVIL → contactors → isolation |
| Isolation / limp after rain or a wash | PTC, compressor, OBC, pack; **frunk drains**; underbody connectors |
| Lean corner + slow DC | Two jobs: air-spring leak and height cal; then pack/electronics cooling |
| One motor of quattro dead | That axle’s isolation and EDU connector |
| Overnight brick | MMI / Audi connect sleep-draw; 12 V |

Do not use a Q4 MEB disconnect or coolant map on these cars.

## 5.5 Q4 e-tron / Q4 Sportback (MEB)

Use the same 12 V, isolation, OBC, and EDU method as ID.4 ([§4.4](#44-id3--id4--id5)). Differences: Audi connect / OCU module names, camera/radar calibration targets, and the Audi service-disconnect location. Do not load ID. SVM onto a Q4.

## 5.6 e-tron GT / RS e-tron GT (J1 800 V)

| Path | Method |
|---|---|
| DC charge refused or very slow | Confirm the pile is 800 V-capable (or the car is boosting from 400 V). Pack temp and HV pumps first |
| Isolation | Same sectional order; 800 V work stays on Audi lockout and PPE/J1 diagrams |
| One motor dead | Front or rear EDU on that voltage class — not a Q4 part |
| After body work | HVIL in the frunk and underbody; finish SVM |

## 5.7 Q6 e-tron / A6 e-tron (PPE)

Later 800 V-class cars. Charge faults: station voltage class and boost path, then thermal, then inlet. Isolation and 12 V first pass unchanged. Confirm PPE disconnect in ODIS — not MLB e-tron and not Q4 MEB.

---

# 6. Other electrified brands in this set

Use the **universal first pass**, then the brand method. Full cases remain in each brand file.

## 6.1 Honda / Acura e:HEV — [honda-acura.md](brands/japan/honda-acura.md)

1. i-HDS full scan.  
2. Load-test 12 V **before** PCU replacement (“Power System” is often LV).  
3. PCU coolant loop separate from the engine — level, pump, vacuum fill.  
4. Resolver scope if P0A7A / whine.  
5. CR-V PHEV: charge inlet / OBC / permit, same as any PHEV.

**Models:** Accord Hybrid, CR-V Hybrid / PHEV, Civic e:HEV, Acura MDX Type S Hybrid (markets), Prologue (Ultium — use GM isolation method).

## 6.2 Nissan / Infiniti — [nissan-infiniti.md](brands/japan/nissan-infiniti.md)

1. CONSULT full scan.  
2. Leaf / Ariya: 12 V first; contactors; isolation; charge lid / quick-charge path (P3200-class).  
3. e-Power (select markets): extender/generation current into the pack — engine running is not proof of charge.  
4. Ariya e-AWD: rear motor disabled = that inverter/isolation.

## 6.3 Mazda — [mazda.md](brands/japan/mazda.md)

CX-60/80 PHEV: charge permit, hybrid clutch engagement, regen/ABS blending. MX-30 BEV: thermal and isolation. R-EV (markets): diagnose the rotary **start/generation** path separately from the traction pack.

## 6.4 Subaru — [subaru.md](brands/japan/subaru.md)

Forester/Crosstrek hybrid: ISG / assist missing = 12 V + ISG codes. Solterra: **identical e-TNGA method to bZ4X (§1.9)**. EyeSight after glass is not an HV fault.

## 6.5 Mitsubishi — [mitsubishi.md](brands/japan/mitsubishi.md)

Outlander PHEV: AC charge (OBC/inlet/handshake), EV-mode inhibit, rear motor on twin-motor AWD, hybrid coolant / inverter temp, cell imbalance. Confirm a catalyst maintenance start before replacing parts.

## 6.6 Tesla — [tesla.md](brands/united-states/tesla.md)

1. Support LV (16 V Li-ion on later cars — not a conventional 12 V jump pattern).  
2. Service Mode: alerts, **contactor state**, pyro, isolation.  
3. Thermal (octovalve / manifold) before condemning a pack for slow Supercharging.  
4. Drive-unit NVH after wheel bearings/tires.  
5. Coolant in orange connectors is a pack-connector repair, not a “top-up.”

**Models:** 3 / Y / S / X / Cybertruck — same alert tree, different thermal hardware.

## 6.7 Ford / Lincoln — [ford-lincoln.md](brands/united-states/ford-lincoln.md)

Escape/Maverick HEV: **Stop Safely Now** = scan and park; 12 V; hybrid transaxle fluid (not a generic 8F). Escape PHEV: inlet/OBC. Mach-E: isolation, GO Time thermal derate, zone-BCM 12 V drain, front/rear EDU. Lightning (lifestyle): same BEV isolation/charge method.

## 6.8 General Motors — [general-motors.md](brands/united-states/general-motors.md)

Bolt: isolation sectional; APM/12 V; hot-soak derate. Ultium (Lyriq, Blazer EV, Silverado EV, Honda Prologue): “Service High Voltage Charging System” = inlet/OBC/BMS/thermal, not an automatic pack; finish incomplete OTAs before EDU R&R.

## 6.9 Rivian — [rivian.md](brands/united-states/rivian.md)

LV brownout first (cascading faults). Then isolation after water, trail thermal derate, AC camp EVSE vs vehicle, DC abort, HVIL after service panels, park-pawl vs brake-hold.

## 6.10 Jeep / Stellantis PHEV — [jeep-stellantis.md](brands/united-states/jeep-stellantis.md)

Wrangler/Grand Cherokee 4xe: “Service Electrified Propulsion” = store DTCs, 12 V, e-pump / ESS temp, charge-port LED, HVIL after shield scrape. Pacifica PHEV: roof-drain water into charge modules; ETRS vs EV mode.

## 6.11 BYD — [byd.md](brands/china/byd.md)

DM-i: inhibit flags vs mounts vs ISG; 12 V/DC-DC false alarms. BEV (Seal, Atto 3, Dolphin, Han): insulation kΩ → PTC/compressor/OBC → Blade pack; GB/T handshake; thermal derate in heat.

## 6.12 Geely / Zeekr / Lynk — [geely-zeekr.md](brands/china/geely-zeekr.md)

PHEV: NordThor charge permit + DHT shudder (OEM fluid/adapts). Zeekr: 800 V pile compatibility; isolation after water; air suspension **and** thermal as two jobs; finish OTA before hardware.

## 6.13 NIO — [nio.md](brands/china/nio.md)

After a **swap**: HVIL, pack authentication, coolant quick-connects. Isolation unrelated to swap still sections PTC/compressor. Do not treat every no-Ready as a bad pack.

## 6.14 XPeng — [xpeng.md](brands/china/xpeng.md)

800 V car on a 400–500 V pile = boost-module path, not a dead pack. Isolation in humidity; thermal cap on DC; dual-motor rear axle; OBC at home EVSE.

## 6.15 Li Auto — [li-auto.md](brands/china/li-auto.md)

EREV: **prove generation kW into the pack**. Engine running with SOC falling is a generator/inverter/BMS fault. Extender no-start with fuel in the tank is the critical immobilize-the-car failure — do not release without a forced extender run.

## 6.16 Great Wall (Haval / Wey / Ora / Tank) — [great-wall.md](brands/china/great-wall.md)

Name the hybrid: DHT vs Hi4 vs Hi4-T vs Hi4-Z vs Ora BEV. Wrong fluid (DCT/DHT/9HAT/ZF 8HP) mimics a failed clutch. Isolation on Ora: PTC/compressor/OBC. Tank Hi4-T is a P2 + 9HAT, not a front DHT.

## 6.17 Hongqi — [hongqi.md](brands/china/hongqi.md)

48 V mild hybrid ≠ PHEV ≠ E-series BEV. HQ9/H5 PHEV: charge permit. E-HS9: dual motor + air suspension (two jobs). EH7/EHS7: finish OTA before EDU replacement. E-QM5: fleet wear, not always a pack.

## 6.18 SAIC / MG / IM — [saic-mg.md](brands/china/saic-mg.md)

MG4/ZS EV: 12 V sleep, GB/T lock, isolation, OBC thermal, rear EDU. IM: 800 V charge path + lidar cal after body work.

## 6.19 Chery / Exeed — [chery.md](brands/china/chery.md)

DHT/PHEV charge permit and shudder; BEV isolation after water; GB/T handshake; OBC thermal; 12 V drain.

---

# 7. Cross-brand symptom → first method

| Symptom | First method (all brands) |
|---|---|
| Many HV lamps, clears after a jump | 12 V / DC-DC, then re-scan |
| Fans loud, power drops on a hill | **Electronics/inverter** coolant loop and electric pump |
| Charge fails, car drives | Second EVSE → inlet lock/pins → OBC → BMS permit → pack temp |
| Isolation / reduced power after rain | Section PTC heater, electric A/C, OBC, then pack |
| Ready, no movement | Shift/brake/HVIL/resolver — not a pack |
| Engine runs, EV range dies (PHEV/EREV) | Generation or charge **into the pack** in live data |
| One axle dead (AWD EV/hybrid) | That axle’s isolation and connector |
| Features missing after an update | Finish OEM flash; stable 12 V; no parts yet |
| After a crash, no Ready | OEM pyro/HVIL procedure — do not jumper safety devices |

---

# 8. Return-to-service (any electrified car)

- [ ] Architecture recorded from the VIN (HEV / PHEV / EREV / BEV; voltage class; pack chemistry)  
- [ ] 12 V (and 48 V if fitted) load-tested; DC-DC charges in Ready  
- [ ] Factory scan empty; freeze-frames saved to the job  
- [ ] Isolation within OEM spec  
- [ ] Correct loop(s) vacuum-filled; levels stable cold  
- [ ] HV service plug / disconnect locked  
- [ ] Charge test (AC, and DC if the complaint was DC)  
- [ ] Hybrid: smooth ICE start and EV/hybrid transitions  
- [ ] EREV: measured kW **into** the pack  
- [ ] ADAS calibrated if glass, bumper, or alignment was touched  

---

*Toyota and Lexus share Techstream methods but not pack chemistry or AWD hardware. Mercedes 48 V, PHEV, and EQ are three lockouts. Volkswagen eTSI, GTE, and ID. are three lockouts. Audi Q4 is MEB; Q8 e-tron is MLB; e-tron GT is 800 V. Never copy a coolant fill or service-plug location across those families.*
