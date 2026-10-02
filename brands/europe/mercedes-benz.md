# Mercedes-Benz — Electrified Repair Guide (MY2020+)

**Region focus:** Germany-origin platforms (also assembled in the US, China, and other plants)  
**Scan tool:** XENTRY Diagnosis (DAS is obsolete for 2020+)  
**Architectures:** 48 V EQ Boost (ISG), PHEV, EQ BEV (MFA2 / EVA2)  
**Charging:** CCS2 in Europe; CCS1 in North America; GB/T on some China-market EQ cars  
**HV safety:** XENTRY guided disable, wait time, verify 0 V. After a crash, treat the pyro fuse / HV interlock as open until proven otherwise.

Methods: [hev-bev-troubleshooting.md](../../hev-bev-troubleshooting.md)

---

## 1. 2020+ electrified map

| Family | Examples | Type | Notes |
|---|---|---|---|
| 48 V EQ Boost | C-Class W206, E-Class W213/W214, S-Class W223, GLC, GLE (select) | Mild hybrid | Beltless ISG; 48 V battery; start-stop and glide |
| PHEV | C 300e, E 300e / 350e, S 580e, GLC 300e, GLE 350e / 450e | Plug-in | Underfloor HV pack; AC charge; electric A/C |
| EQ compact | EQA, EQB | BEV (MFA2) | Front-motor FWD or dual-motor 4MATIC |
| EQ mid | EQC (run-out) | BEV | Earlier 400 V SUV |
| EQ flagship | EQE, EQS, EQE SUV, EQS SUV | BEV (EVA2) | Rear-motor or 4MATIC; air suspension on many |

---

## 2. Workshop setup

| Item | Practice |
|---|---|
| **Scan** | XENTRY short test of **all** control units. |
| **12 V first** | A weak 12 V produces a cluster of EQ / hybrid warnings. |
| **48 V** | Jump-starting 12 V does not recover a failed 48 V pack. |
| **Coolant** | Engine vs HV electronics / battery. Vacuum-fill each. Mercedes-spec only. |
| **HV lockout** | Service disconnect per XENTRY; verify 0 V. |
| **ADAS** | Radar and camera calibration after bumper or glass. |

---

## 3. Examples (26)

### Example 1 — 48 V EQ Boost: start-stop / glide dead

| Field | Detail |
|---|---|
| **Vehicles** | W206, W214, W223, GLC with ISG |
| **Symptoms** | No automatic restart; 48 V warning |
| **Diagnosis** | 12 V load; 48 V SOC/temp; DC-DC to 12 V; ISG requested vs actual; connectors on the beltless unit |
| **Repair** | 48 V teach-in; DC-DC or ISG the data names; confirm 12 V charging in Ready |

### Example 2 — 48 V: harsh restart / stall in traffic

| Field | Detail |
|---|---|
| **Diagnosis** | Both voltages in spec during the restart event; ISG teach-in; engine mounts; fuel/ignition on first fires |
| **Repair** | 48 V/12 V first; then ISG adaptation and mounts |

### Example 3 — 48 V: many U-codes that clear after a jump

| Field | Detail |
|---|---|
| **Repair** | Load-test 12 V; DC-DC output; grounds. Do not replace the ISG on LV evidence. |

### Example 4 — PHEV: no AC charge / EV mode locked

| Field | Detail |
|---|---|
| **Vehicles** | C 300e, E 300e, GLE 450e, S 580e |
| **Diagnosis** | Inlet lock; control-pilot; OBC; BMS permit; 12 V; isolation |
| **Repair** | Inlet or OBC; BMS software; full charge then EV drive. Keep engine and HV loops separate. |

### Example 5 — PHEV: engine always runs (customer thinks hybrid is failed)

| Field | Detail |
|---|---|
| **Diagnosis** | XENTRY inhibit flags (heat, SOC, isolation, hood, transmission). Many starts are normal. |
| **Repair** | Repair only if a real inhibit or start-abort loop exists; mounts if the start is harsh |

### Example 6 — PHEV: HV coolant loss / power limit

| Field | Detail |
|---|---|
| **Diagnosis** | Pressure-test HV loop vs engine; electric pump current |
| **Repair** | Repair the leaking loop; vacuum-fill; confirm inverter temps on a grade |

### Example 7 — PHEV: electric A/C dead with engine off

| Field | Detail |
|---|---|
| **Diagnosis** | HV compressor enable; refrigerant; isolation |
| **Repair** | HV lockout; compressor or HV supply; isolation retest |

### Example 8 — PHEV: charge-door / fuel-door interlock

| Field | Detail |
|---|---|
| **Symptoms** | Cannot charge or cannot refuel |
| **Repair** | Confirm which door/latch actually failed; inlet lock vs fuel-filler release |

### Example 9 — GLE 450e: pack-shield scrape → HVIL

| Field | Detail |
|---|---|
| **Diagnosis** | Underbody shield damage; interlock open |
| **Repair** | Repair shield and damaged HVIL; isolation test |

### Example 10 — EQA / EQB: isolation after rain

| Field | Detail |
|---|---|
| **Diagnosis** | Isolation kΩ; section PTC, compressor, OBC, pack; underbody connectors |
| **Repair** | HV lockout; dry/replace; retest dry; AC then DC |

### Example 11 — EQA / EQB: morning no-Ready

| Field | Detail |
|---|---|
| **Diagnosis** | 12 V; sleep-draw; MBUX / telematics awake |
| **Repair** | 12 V; software; confirm DC-DC in Ready |

### Example 12 — EQA: AC charge cut-out

| Field | Detail |
|---|---|
| **Diagnosis** | EVSE; OBC cooling and temp; OBC internals |
| **Repair** | OBC cooling or OBC replacement; multi-hour AC verify |

### Example 13 — EQ: DC handshake fail, AC OK

| Field | Detail |
|---|---|
| **Diagnosis** | Second pile; inlet lock; CCS pins; BMS vs pile; pack temp |
| **Repair** | Inlet if burned; BMS software; wait for pack window |

### Example 14 — EQA 4MATIC: one motor disabled

| Field | Detail |
|---|---|
| **Diagnosis** | That axle’s isolation and connector |
| **Repair** | EDU/inverter on the silent axle; load-test 4MATIC |

### Example 15 — EQC: no Ready after using an EQA disconnect diagram

| Field | Detail |
|---|---|
| **Repair** | Use EQC XENTRY disconnect only; complete HVIL; isolation. Do not copy MFA2 or EVA2 plug locations. |

### Example 16 — EQE / EQS: no propulsion, contactors open

| Field | Detail |
|---|---|
| **Diagnosis** | Support 12 V; XENTRY HV status; pyro if crash history; contactors; isolation |
| **Repair** | OEM pyro/HVIL parts only; then isolation and a drive cycle |

### Example 17 — EQE / EQS: slow DC / thermal derate

| Field | Detail |
|---|---|
| **Diagnosis** | Battery pumps and valves; heat-pump actual values; grille shutters; cell temp spread |
| **Repair** | Thermal hardware and software; clean exchangers |

### Example 18 — EQS: air ride lean plus HV derate

| Field | Detail |
|---|---|
| **Repair** | Two jobs: leak-down and height cal; separately pack cooling. Do not replace a pack for a lean corner. |

### Example 19 — EQE SUV 4MATIC: rear or front EDU dead

| Field | Detail |
|---|---|
| **Diagnosis** | Silent-axle DTCs, isolation, connector after underbody work |
| **Repair** | That inverter/EDU; load test |

### Example 20 — EQ: heat-pump / PTC weak winter heat

| Field | Detail |
|---|---|
| **Diagnosis** | PTC current; heat-pump valves; refrigerant; isolation |
| **Repair** | HV lockout; PTC or valve; isolation retest |

### Example 21 — MBUX / telematics 12 V drain

| Field | Detail |
|---|---|
| **Diagnosis** | Sleep-draw after full bus sleep; aftermarket dashcam on constant 12 V |
| **Repair** | XENTRY software; remove accessory; then 12 V |

### Example 22 — Incomplete XENTRY flash: features missing

| Field | Detail |
|---|---|
| **Repair** | Stable 12 V; finish SCN/flash. Do not replace an EDU mid-configuration. |

### Example 23 — Driver assist after glass or bumper

| Field | Detail |
|---|---|
| **Repair** | Mercedes glass; camera and radar calibration with XENTRY targets |

### Example 24 — Charge-port lock stuck

| Field | Detail |
|---|---|
| **Repair** | Manual release; lock motor; water in port; inlet if pins burned |

### Example 25 — After collision: no Ready, pyro / HVIL

| Field | Detail |
|---|---|
| **Repair** | Do not bypass a pyro fuse. XENTRY crash data; specified HV safety parts; isolation test |

### Example 26 — Regen / brake blending / rear rust

| Field | Detail |
|---|---|
| **Diagnosis** | Separate normal one-pedal limits from brake-module DTCs |
| **Repair** | Blending module if coded; EPB service and rear hardware if rust ridges from light hydraulic use |

---

## 4. Quick triage

| Symptom | First check | Next |
|---|---|---|
| Cluster of EQ warnings | 12 V | Remaining HV codes |
| No start-stop | 48 V SOC + DC-DC | ISG |
| PHEV no EV | Charge permit + isolation | OBC / inlet |
| EQ isolation | PTC / compressor | Pack |
| DC charge fail | Second pile + pins | BMS software |
| Lean + slow charge | Air leak | Pack cooling |
| No Ready after crash | Pyro / HVIL | Do not jump HV |

---

## 5. Return-to-service

- [ ] XENTRY short test empty  
- [ ] 12 V and 48 V (if fitted) load-tested  
- [ ] Isolation within spec on PHEV/BEV  
- [ ] AC and DC verified where fitted  
- [ ] Air suspension at height after sleep if equipped  
- [ ] ADAS calibrated if glass or bumper was touched  

---

*XENTRY VIN procedures override this field aid. 48 V, PHEV, and EQ BEV are three lockout and coolant maps.*
