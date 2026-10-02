# Audi — Electrified Repair Guide (MY2020+)

**Region focus:** Germany-origin platforms (also built in Slovakia, Mexico, China, and other plants)  
**Scan tool:** ODIS (Audi project); online SVM required for many HV, gateway, and driver-assist functions  
**Architectures:** 48 V MHEV, TFSI e PHEV, e-tron (MLB), Q4 e-tron (MEB), e-tron GT (J1 800 V), Q6 / A6 e-tron (PPE)  
**Charging:** CCS2 in Europe; CCS1 in North America; GB/T on some China-market cars  
**HV safety:** Audi / VW Group high-voltage process, service disconnect, wait time, verify 0 V. After a crash, treat the pyro / interlock as open until ODIS says otherwise.

Q4 e-tron shares MEB hardware with the ID.4 — isolation and 12 V method are the same, but coding, ADAS, and the disconnect location are Audi VIN-specific. Do not flash VW ID. software onto an Audi.

Methods: [hev-bev-troubleshooting.md](../../hev-bev-troubleshooting.md)

---

## 1. 2020+ electrified map

| Family | Examples | Type | Notes |
|---|---|---|---|
| 48 V MHEV | A4, A5, A6, A7, A8, Q5, Q7, Q8 (select TFSI) | Mild hybrid | Belt starter-generator; 48 V; start-stop and coast |
| TFSI e PHEV | A3, A6, A7, A8, Q3, Q5, Q7, Q8 | Plug-in | Underfloor pack; electric A/C; hybrid DCT or torque-converter by model |
| e-tron / Q8 e-tron | e-tron 50/55/S, Sportback, Q8 e-tron | BEV (MLB Evo) | Dual-motor quattro on most; 400 V; air suspension on many |
| Q4 e-tron / Sportback | Q4 40/45/50 | BEV (MEB) | Rear motor or dual-motor; same 12 V / isolation path as ID.4 |
| e-tron GT / RS e-tron GT | J1 with Porsche Taycan | BEV **800 V** | 800 V DC; 400 V AC via conversion; not MEB |
| Q6 e-tron / A6 e-tron | PPE | BEV **800 V** class | Software and boost path first on charge faults |

---

## 2. Workshop setup

| Item | Practice |
|---|---|
| **Scan** | ODIS complete scan on the **Audi** project. Generic OBD-II misses HV permit, isolation, and SVM. |
| **Identify first** | VIN: 48 V vs TFSI e vs MLB e-tron vs Q4 MEB vs GT/PPE 800 V. |
| **12 V first** | MMI, Audi connect, and keyless modules keep cars awake. |
| **Software** | Incomplete SVM looks like a dead EDU or missing quattro. |
| **Coolant** | Engine vs HV electronics vs battery / heat-pump. Vacuum-fill each with the VIN coolant. |
| **HV lockout** | Maintenance connector per model (frunk, under seat, or rear). Verify 0 V. |
| **ADAS** | Camera and radar (night vision if fitted) after glass or bumper. Matrix LED aim after lamp R&R. |
| **Air suspension** | Height calibration is a separate job from HV derate. |

---

## 3. Examples (26)

### Example 1 — 48 V MHEV: start-stop / coast dead

| Field | Detail |
|---|---|
| **Vehicles** | A4/A6/A7/A8/Q5/Q7/Q8 with 48 V |
| **Symptoms** | No automatic stop; 48 V or charging warning; weak restart |
| **Diagnosis** | 1) Load-test 12 V. 2) ODIS 48 V SOC and temperature. 3) DC-DC output to 12 V in running. 4) BSG requested vs actual. |
| **Repair** | 48 V battery teach-in; DC-DC or BSG the data names. Jumping 12 V only will not recover a failed 48 V pack. |

### Example 2 — 48 V: charging-system lamp with a “new” 12 V battery

| Field | Detail |
|---|---|
| **Symptoms** | Battery lamp after a conventional 12 V replacement |
| **Diagnosis** | 12 V was replaced without 48 V / energy-management adaptation; DC-DC never taught |
| **Repair** | Complete ODIS battery / energy-management adaptation; confirm 14 V from DC-DC |

### Example 3 — TFSI e: no EV mode / AC charge fail

| Field | Detail |
|---|---|
| **Vehicles** | A3/A6/Q5/Q7/Q8 TFSI e |
| **Symptoms** | Engine always runs; wallbox error |
| **Diagnosis** | Inlet lock and control-pilot; OBC temp; BMS permit; 12 V; isolation; hybrid-clutch adaptations |
| **Repair** | Inlet or OBC; BMS software; specified hybrid-transmission fluid; full charge then an EV drive. Engine loop ≠ HV loop. |

### Example 4 — TFSI e: shudder 20–40 km/h

| Field | Detail |
|---|---|
| **Symptoms** | Shake leaving EV into engine |
| **Diagnosis** | Fluid spec (not a dry-clutch DSG fill); clutch adaptation values; engine mounts vs clutch |
| **Repair** | OEM hybrid-DCT or ATF as fitted; adaptation reset; clutch or mechatronics if slip remains |

### Example 5 — TFSI e: electric A/C dead, engine-off cool missing

| Field | Detail |
|---|---|
| **Symptoms** | Cold air only after the engine starts |
| **Diagnosis** | HV enable to the electric compressor; refrigerant; isolation if the compressor leaked to the bus |
| **Repair** | HV lockout; compressor or HV supply; isolation retest; climate performance test in EV |

### Example 6 — TFSI e: fuel aging / forced engine run

| Field | Detail |
|---|---|
| **Symptoms** | Engine starts on its own after weeks of EV-only use |
| **Diagnosis** | Confirm catalyst / fuel-quality maintenance logic vs real misfire or over-temp |
| **Repair** | Educate if no DTCs; change oil if dilution; repair fuel/ignition only if the start is aborting |

### Example 7 — e-tron / Q8 e-tron: isolation after rain or a wash

| Field | Detail |
|---|---|
| **Symptoms** | Insulation warning; reduced power; charge refused |
| **Diagnosis** | Record kΩ. Section PTC heater → electric compressor → OBC → pack. Inspect frunk drains and underbody orange connectors. |
| **Repair** | HV lockout; dry or replace the leak path; retest dry; AC then DC session |

### Example 8 — e-tron: air suspension lean plus thermal derate

| Field | Detail |
|---|---|
| **Symptoms** | One corner low overnight; DC charge capped the same week |
| **Diagnosis** | Leak-down test and compressor current; separately pack-loop pumps and cell temps |
| **Repair** | Springs/lines/dryer; height calibration. Then vacuum-fill the HV loop. Do not replace a pack for a lean corner. |

### Example 9 — e-tron: frunk water → random CAN / HVIL

| Field | Detail |
|---|---|
| **Symptoms** | Intermittent no-Ready after rain; body U-codes |
| **Diagnosis** | Frunk drain tubes; water in HV junction or front modules |
| **Repair** | Clear drains; dry connectors; replace corroded HVIL pins; isolation retest |

### Example 10 — e-tron: AC charge cuts out, DC OK

| Field | Detail |
|---|---|
| **Diagnosis** | EVSE and site voltage; OBC coolant flow and temperature; OBC internal faults |
| **Repair** | Restore OBC cooling; replace OBC if it logs internal faults; multi-hour AC verify |

### Example 11 — Q4 e-tron: morning no-Ready (MEB 12 V)

| Field | Detail |
|---|---|
| **Symptoms** | Brick after 3–7 days; jump restores Ready |
| **Diagnosis** | Resting 12 V; sleep current after published sleep time; Audi connect / OCU still awake; aftermarket tracker |
| **Repair** | Replace sulfated 12 V; software on the awake module; confirm DC-DC in Ready |

### Example 12 — Q4: isolation after standing water

| Field | Detail |
|---|---|
| **Diagnosis** | Same MEB sectional path as ID.4 (heater, compressor, OBC, pack) |
| **Repair** | HV lockout; dry/replace; retest. Use the **Audi** disconnect location, not an ID.4 diagram. |

### Example 13 — Q4: rear EDU whine

| Field | Detail |
|---|---|
| **Symptoms** | Speed-related whine; click into regen |
| **Diagnosis** | Chassis ear at EDU vs wheel bearing; tire noise on a different wheel |
| **Repair** | EDU if bearings/tires are clean; half-shaft if click is on takeoff |

### Example 14 — Q4 50 quattro: front motor disabled

| Field | Detail |
|---|---|
| **Symptoms** | RWD-only feel; front inverter DTCs |
| **Diagnosis** | Front HV connector, isolation, coolant to that inverter |
| **Repair** | Repair front EDU/inverter; load-test quattro from a stop |

### Example 15 — e-tron GT: 800 V DC fail or very slow

| Field | Detail |
|---|---|
| **Diagnosis** | Station is 800 V-capable or car is boosting from 400 V? Pack temp; HV pumps; inlet pins; BMS vs pile |
| **Repair** | Thermal first; inlet; software; boost/charge hardware if a compatible station still fails. Not a Q4 MEB path. |

### Example 16 — e-tron GT: isolation after track or repeated DC

| Field | Detail |
|---|---|
| **Symptoms** | Isolation drop after heat cycles |
| **Diagnosis** | Retest cold and hot; section heater/compressor/OBC |
| **Repair** | Repair the joint that opens when hot; isolation retest both temps |

### Example 17 — Q6 / A6 e-tron (PPE): charge abort on 400 V piles

| Field | Detail |
|---|---|
| **Diagnosis** | Boost-module actual values; pile voltage class; software |
| **Repair** | Compatible station first; then boost hardware / BMS. Confirm PPE disconnect in ODIS. |

### Example 18 — quattro / one EDU disabled (any dual-motor)

| Field | Detail |
|---|---|
| **Vehicles** | e-tron S, Q4 50, GT, Q6 |
| **Diagnosis** | Silent-axle isolation and connector; wheel-speed rationality (mismatched tires mimic a dead axle) |
| **Repair** | Match tires; then that inverter/EDU |

### Example 19 — MMI / Audi connect 12 V drain

| Field | Detail |
|---|---|
| **Diagnosis** | Draw after full bus sleep; pull fuses for MMI, connect, keyless, aftermarket USB |
| **Repair** | Software; replace the module that stays awake; then 12 V if sulfated |

### Example 20 — Virtual cockpit / MMI black after incomplete SVM

| Field | Detail |
|---|---|
| **Symptoms** | Black screens; missing drive modes; quattro lamp |
| **Repair** | Support 12 V; complete Audi online flash. Do not replace an EDU mid-configuration. |

### Example 21 — Camera / radar after glass or bumper

| Field | Detail |
|---|---|
| **Symptoms** | Pre sense, adaptive cruise, or lane assist off |
| **Repair** | Audi-grade windshield; static/dynamic camera; radar aim; paint thickness over the radar |

### Example 22 — Matrix LED condensation / aim after lamp work

| Field | Detail |
|---|---|
| **Repair** | Dry or replace the lamp; ODIS coding; aim. Water in a lamp can wake a lighting module overnight. |

### Example 23 — EPB / rear brake drag (regen-heavy cars)

| Field | Detail |
|---|---|
| **Symptoms** | EPB warning; rear rust ridges; groan |
| **Repair** | EPB service mode; clean/replace rear hardware; calibration. Common on Q4/e-tron with light brake use. |

### Example 24 — Charge-port lock stuck (CCS)

| Field | Detail |
|---|---|
| **Repair** | Manual release per owner manual; lock motor; water in the port; then inlet if pins are burned |

### Example 25 — After collision: no Ready

| Field | Detail |
|---|---|
| **Repair** | ODIS crash/pyro and HVIL. Do not bypass safety devices. Isolation test after specified parts. |

### Example 26 — Heat-pump weak cabin heat + winter range collapse

| Field | Detail |
|---|---|
| **Vehicles** | e-tron, Q4, GT, Q6 |
| **Diagnosis** | PTC current when commanded; heat-pump valves; refrigerant; isolation if PTC leaked |
| **Repair** | HV lockout; PTC or valve block; isolation retest; winter heat test |

---

## 4. Quick triage

| Symptom | First check | Next |
|---|---|---|
| Cluster of HV warnings | 12 V | Remaining HV codes |
| No start-stop | 48 V SOC + DC-DC | BSG |
| TFSI e no EV | Charge permit | OBC / clutch adapts |
| e-tron isolation | Heater / compressor / frunk drains | Pack |
| Q4 brick in the morning | 12 V + sleep draw | Audi connect |
| GT slow DC | Station class + pack temp | Thermal / inlet |
| Lean + slow charge | Air leak | Pack cooling (second job) |
| Missing features after flash | SVM incomplete | Finish programming |

---

## 5. Return-to-service

- [ ] Architecture recorded (48 V / TFSI e / MLB / MEB / 800 V)  
- [ ] ODIS Audi scan empty  
- [ ] 12 V and 48 V (if fitted) load-tested; DC-DC charges in Ready  
- [ ] Isolation within spec  
- [ ] AC and DC logged where the complaint was charge  
- [ ] Air suspension at height after a sleep cycle if equipped  
- [ ] ADAS calibrated if glass, bumper, or lamps were touched  

---

*ODIS VIN procedures override this field aid. Q4 is MEB; e-tron GT is 800 V J1; Q8 e-tron is not a Q4.*
