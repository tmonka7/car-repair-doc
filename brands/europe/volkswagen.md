# Volkswagen — Electrified Repair Guide (MY2020+)

**Region focus:** Germany-origin MEB and MQB PHEV platforms (also built in the US, China, and other plants)  
**Scan tool:** ODIS; online connection required for many coding and HV tests  
**Architectures:** 48 V eTSI, MQB PHEV (eHybrid / GTE), MEB BEV (ID. family)  
**Charging:** CCS2 in Europe; CCS1 on North American ID.4; GB/T on some China-built ID cars  
**HV safety:** VW high-voltage technician process, service disconnect, wait time, verify 0 V.

Q4 e-tron / Cupra Born / Škoda Enyaq share MEB with ID. — isolation and 12 V method match; coding does not. See [audi.md](audi.md) for Q4.

Methods: [hev-bev-troubleshooting.md](../../hev-bev-troubleshooting.md)

---

## 1. 2020+ electrified map

| Family | Examples | Type | Notes |
|---|---|---|---|
| eTSI 48 V | Golf, Passat, Tiguan, Taos (markets) | Mild hybrid | Belt starter-generator; 48 V; start-stop |
| MQB PHEV | Golf GTE, Tiguan eHybrid, Passat GTE, Arteon eHybrid | Plug-in | DQ400e-class hybrid DCT; underfloor pack |
| MEB BEV | ID.3, ID.4, ID.5, ID.7, ID.Buzz | BEV | Rear-motor RWD or dual-motor AWD; 400 V |

---

## 2. Workshop setup

| Item | Practice |
|---|---|
| **Scan** | ODIS complete vehicle scan. Many MEB functions need **ODIS online**. |
| **12 V first** | MEB cars brick overnight from a weak 12 V or a module that will not sleep. |
| **Software** | Incomplete SVM looks like a dead drive unit. Finish programming before replacing an EDU. |
| **Coolant** | MEB HV / heat-pump loop is separate. Vacuum-fill. GTE has engine + HV loops. |
| **HV lockout** | Maintenance connector per model; verify 0 V. |
| **ADAS** | Travel Assist camera after glass; radar after bumper. |

---

## 3. Examples (26)

### Example 1 — eTSI: start-stop missing

| Field | Detail |
|---|---|
| **Vehicles** | Golf, Tiguan, Passat eTSI |
| **Symptoms** | Engine never auto-stops; 48 V or energy warning |
| **Diagnosis** | 12 V load; 48 V SOC/temp; BSG actual vs requested; hood switch |
| **Repair** | 48 V teach-in; BSG or DC-DC; hood switch. Not a conventional alternator-only job. |

### Example 2 — eTSI: charging lamp after 12 V replacement

| Field | Detail |
|---|---|
| **Repair** | Energy-management adaptation in ODIS; confirm DC-DC 14 V output |

### Example 3 — Golf GTE / Tiguan eHybrid: no EV / no charge

| Field | Detail |
|---|---|
| **Diagnosis** | Inlet lock, control-pilot, OBC, BMS permit, 12 V, isolation |
| **Repair** | Charge-path repair; full charge; EV-only drive. DQ400e fluid is specific — not dry-clutch DSG. |

### Example 4 — GTE: shudder 20–40 km/h

| Field | Detail |
|---|---|
| **Diagnosis** | DQ400e fluid level/spec; clutch adaptations after battery work; mounts vs clutch |
| **Repair** | OEM fluid; adaptation reset; clutch/mechatronics if slip remains |

### Example 5 — GTE: harsh engine join from EV

| Field | Detail |
|---|---|
| **Repair** | Mounts; hybrid clutch adaptations; first-cycle ignition/fuel; software |

### Example 6 — GTE: electric A/C off in EV

| Field | Detail |
|---|---|
| **Diagnosis** | HV compressor enable; refrigerant; isolation if compressor leaked |
| **Repair** | HV lockout; compressor or supply; isolation retest; EV climate test |

### Example 7 — GTE: hybrid coolant loss / derate

| Field | Detail |
|---|---|
| **Diagnosis** | Pressure-test HV loop vs engine loop; electric pump current |
| **Repair** | Repair the leaking loop; vacuum-fill; do not mix fills |

### Example 8 — ID. morning no-Ready / 12 V dead

| Field | Detail |
|---|---|
| **Vehicles** | ID.3, ID.4, ID.5, ID.7, ID.Buzz |
| **Diagnosis** | Resting 12 V; sleep current; OCU / telematics / aftermarket tracker still awake |
| **Repair** | Replace sulfated 12 V; update the awake module; confirm DC-DC in Ready |

### Example 9 — ID. isolation / reduced power after rain

| Field | Detail |
|---|---|
| **Diagnosis** | Isolation kΩ; section heater → compressor → OBC → pack; underbody connectors |
| **Repair** | HV lockout; dry or replace leak path; retest dry; AC then DC |

### Example 10 — ID. AC charge cuts out

| Field | Detail |
|---|---|
| **Diagnosis** | EVSE and site voltage; OBC coolant and temperature; OBC internal DTCs |
| **Repair** | Restore OBC cooling; replace OBC if internal; multi-hour AC verify |

### Example 11 — ID. DC handshake fail, AC OK

| Field | Detail |
|---|---|
| **Diagnosis** | Second station; inlet lock; CCS pin burn/bend; BMS software; pack temp |
| **Repair** | Inlet or lock; BMS update; thermal if pack was out of window |

### Example 12 — ID. charge-port lock stuck

| Field | Detail |
|---|---|
| **Repair** | Manual release; lock motor; water in port; replace inlet if pins damaged |

### Example 13 — ID. rear EDU whine / click on regen

| Field | Detail |
|---|---|
| **Diagnosis** | Wheel bearing and tire first; chassis ear at EDU |
| **Repair** | EDU assembly; half-shaft if takeoff click |

### Example 14 — ID. AWD: front motor disabled

| Field | Detail |
|---|---|
| **Vehicles** | ID.4 GTX, ID.5 GTX, dual-motor ID.7 / Buzz |
| **Diagnosis** | Front connector, isolation, that inverter’s coolant |
| **Repair** | Front EDU/inverter; load-test AWD |

### Example 15 — ID. thermal derate / slow DC in heat

| Field | Detail |
|---|---|
| **Diagnosis** | HV-loop level; pump current; radiator/shutter; cell temp spread |
| **Repair** | Pump/valve; vacuum fill; clean exchangers; thermal software |

### Example 16 — ID. heat-pump / PTC winter range collapse

| Field | Detail |
|---|---|
| **Diagnosis** | PTC current; heat-pump valves; refrigerant; isolation if PTC leaked |
| **Repair** | HV lockout; PTC or valve; isolation retest; winter heat test |

### Example 17 — ID. regen / brake-feel complaints

| Field | Detail |
|---|---|
| **Diagnosis** | Separate full-battery / cold-pack limits from blending-module DTCs |
| **Repair** | Brake-blending module if codes stored; pad/rotor if rear rust from light hydraulic use |

### Example 18 — ID.7: rear-harness chafe after lift

| Field | Detail |
|---|---|
| **Symptoms** | Random HVIL or wheel-speed codes after alignment |
| **Repair** | Inspect rear HV and sensor harnesses on the longer body; repair chafe; isolation retest |

### Example 19 — ID.Buzz: sliding-door / roof-drain water

| Field | Detail |
|---|---|
| **Symptoms** | Body U-codes; no-Ready after rain; conversion shops tapping 12 V |
| **Repair** | Clear drains; dry door modules; remove always-hot conversion feeds; 12 V test |

### Example 20 — Incomplete ODIS flash / SVM

| Field | Detail |
|---|---|
| **Symptoms** | Missing drive modes; dead cluster; EDU “fault” after update |
| **Repair** | Stable 12 V support; complete online SVM; do not replace an EDU mid-flash |

### Example 21 — Travel Assist after windshield

| Field | Detail |
|---|---|
| **Repair** | VW-grade glass with correct bracket; static/dynamic calibration |

### Example 22 — Radar false alerts after bumper respray

| Field | Detail |
|---|---|
| **Repair** | Paint thickness; bracket; calibration |

### Example 23 — EPB / rear rust ridges (regen cars)

| Field | Detail |
|---|---|
| **Repair** | EPB service mode; rear hardware; calibration |

### Example 24 — Key / KESSY not recognized, 12 V “OK”

| Field | Detail |
|---|---|
| **Diagnosis** | Load-test under wake; KESSY antennas; key battery; aftermarket alarm |
| **Repair** | 12 V if it collapses on wake; antenna or gateway software |

### Example 25 — HVIL open after service-panel work

| Field | Detail |
|---|---|
| **Repair** | Close every maintenance connector; ODIS interlock status; 0 V verify before Ready |

### Example 26 — After collision: no Ready

| Field | Detail |
|---|---|
| **Repair** | Crash/pyro and HVIL in ODIS. Do not bypass. Isolation after specified parts. |

---

## 4. Quick triage

| Symptom | First check | Next |
|---|---|---|
| ID. dead in the morning | 12 V + sleep draw | OCU / telematics |
| Isolation | Heater / compressor | Pack |
| Charge fail | EVSE + inlet lock | OBC / BMS |
| GTE no EV | Charge permit | DQ400e / isolation |
| Whine with speed | Bearings / tires | EDU |
| Missing features | Incomplete SVM | Finish flash |
| Buzz after rain | Door / roof drains | 12 V conversion taps |

---

## 5. Return-to-service

- [ ] ODIS scan empty  
- [ ] 12 V healthy; DC-DC charges in Ready  
- [ ] Isolation within VW spec  
- [ ] AC and DC logged where fitted  
- [ ] PHEV EV mode after a full charge  
- [ ] ADAS calibrated if glass or bumper was touched  

---

*ODIS VIN procedures override this field aid. eTSI, MQB PHEV, and MEB are three lockout and coolant maps.*
