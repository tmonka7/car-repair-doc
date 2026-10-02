# Geely / Zeekr / Geometry — Repair Guide (MY2020+)

**Region focus:** China (Geely Group)  
**Related:** Zeekr, Geometry, Lynk & Co, some Volvo China-built EVs  
**Diagnostics:** Geely/Zeekr dealer suites  
**Charging:** GB/T domestic; CCS on exports

---

## 1. 2020+ model map

| Brand | Examples | Type |
|---|---|---|
| Geely | Xingyue L, Coolray, Preface, Panda Mini EV | ICE, PHEV, BEV |
| Zeekr | 001, 007, X, 009 | BEV (premium) |
| Geometry | Geometry A/C/E etc. | BEV |
| Lynk & Co | 01/08/09 hybrids | HEV/PHEV |

---

## 2. ICE / PHEV examples

### Example A — NordThor / Raytheon PHEV charge fail

| Field | Detail |
|---|---|
| **Symptoms** | Wallbox error; EV range missing |
| **Diagnosis** | Inlet lock; OBC; BMS permit; 12 V |
| **Repair** | OBC/inlet; software; verify full charge |

### Example B — DHT shudder (Geely hybrid transmission)

| Field | Detail |
|---|---|
| **Symptoms** | Judder leaving EV into engine |
| **Repair** | OEM DHT fluid; adaptive learning; clutch; software |

### Example C — Turbo ICE misfire / carbon (T-GDi)

| Field | Detail |
|---|---|
| **Symptoms** | P030x; cold rough |
| **Repair** | Plugs/coils; carbon clean; PCV; oil spec |

### Example D — Infotainment ECUs draining LV

| Field | Detail |
|---|---|
| **Symptoms** | Dead battery weekly |
| **Repair** | Sleep current; head-unit update; network gateway |

### Example E — ADAS radar after bumper respray thickness issues

| Field | Detail |
|---|---|
| **Symptoms** | FCW false; cruise dropouts |
| **Repair** | Paint thickness; bracket; calibration |

---

## 3. Zeekr BEV — detailed examples

### BEV Example 1 — Air suspension + simultaneous HV derate

| Item | Detail |
|---|---|
| **Vehicles** | Zeekr 001 especially |
| **Symptoms** | Height errors; compressor timeout; charge power capped; battery temp alarms |

**Troubleshooting**

1. Separate: is derate thermal (BMS) or electrical (isolation)?
2. Air system leak-down; dryer; compressor current.
3. Battery coolant pumps/valves; glycol level.
4. Cell ΔV under DC charge attempt.

**Repair procedure**

1. Fix air leaks; replace dryer/compressor; calibrate height.
2. Service battery thermal loop (vacuum fill).
3. Address BMS/module imbalance if ΔV remains.
4. Validate: overnight level hold + DC charge curve + road height modes.

---

### BEV Example 2 — 800 V class charge issues (select Zeekr)

| Item | Detail |
|---|---|
| **Symptoms** | Incompatible with some piles; boost faults |
| **Repair** | Boost module; inlet; BMS software; customer pile compatibility notes |

---

### BEV Example 3 — Isolation after typhoon rain / deep standing water

| Item | Detail |
|---|---|
| **Symptoms** | Insulation warning; limp |
| **Repair** | Section PTC/compressor/OBC/pack; dry connectors; replace failed HV heater |

---

### BEV Example 4 — Dual-motor torque steer / rear drive unit fault

| Item | Detail |
|---|---|
| **Symptoms** | AWD disabled; yaw correction; rear inverter DTCs |
| **Repair** | HVIL; rear EDU; wheel-speed; software |

---

### BEV Example 5 — Frunk / powered door / liftgate water → CAN faults

| Item | Detail |
|---|---|
| **Symptoms** | Random body DTCs after rain |
| **Repair** | Drain paths; latch harness; module replacement if corroded |

---

### BEV Example 6 — OTA incomplete → module configuration mismatch

| Item | Detail |
|---|---|
| **Symptoms** | Multiple U-codes; features missing |
| **Repair** | Stable LV; re-run OTA/dealer flash; do not drive mid-config |

---

## 4. Geometry / entry BEV examples

| Issue | Approach |
|---|---|
| OBC overheat AC | Coolant to OBC; OBC R&R |
| GB/T latch stuck | Manual release; lock motor |
| Short range winter | PTC faults; heat pump valves; tire pressure |

---

## 5. Lynk & Co hybrid notes

| Issue | Approach |
|---|---|
| PHEV no EV | Same charge permit diagnosis |
| Engine mount vibration | Very common complaint path |
| Battery cooling fan noise | Filters/debris; fan motor |

---

## Additional field examples

### BEV Example 7 — 800 V Zeekr on a 400 V pile: boost thermal abort

| Item | Detail |
|---|---|
| **Vehicles** | Zeekr 007, later 001 / 009 800 V packs |
| **Symptoms** | “Incompatible pile” or session dies after a few minutes; AC charge OK; 800 V piles work |
| **Diagnosis** | 1. Confirm pile voltage class and a second 400 V pile. 2. Boost / OBC temps and DTCs during the attempt. 3. Pack permit flags and cell temps. 4. GB/T pin burn. |
| **Repair** | HV lockout; boost module / OBC / inlet per flowchart; BMS charge software; validate on both 400 V-class and 800 V-class piles. Customer note: not every city pile can sustain boost. |

---

### BEV Example 8 — Morning no-Ready / cabin modules will not sleep

| Item | Detail |
|---|---|
| **Vehicles** | Zeekr 001, 007, X; Geometry C |
| **Symptoms** | Brick after a weekend; jump restores Ready; screens or sentry-like cabin features were left on |
| **Diagnosis** | 1. Resting 12 V and DC-DC output in Ready. 2. Sleep-current after published sleep time. 3. Gateway / cabin domain still awake. 4. Aftermarket dashcam on constant B+. |
| **Repair** | Replace sulfated 12 V; software on the awake module; remove constant loads; overnight quiescent test. |

---

### BEV Example 9 — GB/T charge latch stuck; next handshake fails

| Item | Detail |
|---|---|
| **Vehicles** | Zeekr 001 / 007; Geometry A/C |
| **Symptoms** | Cable locked after session; owner forces the handle; DC handshake dies next visit |
| **Diagnosis** | Manual release; lock-motor current; pin inspection; port water. |
| **Repair** | Replace lock / inlet; reseal drain; successful lock cycle + DC log. |

---

### BEV Example 10 — Zeekr 001 drive-unit whine vs tire boom

| Item | Detail |
|---|---|
| **Vehicles** | Zeekr 001 dual-motor and RWD |
| **Symptoms** | Whine 70–110 km/h; click into regen |
| **Diagnosis** | Chassis ear at EDU vs wheel bearing; swap a known-quiet tire set if possible; software NVH campaigns. |
| **Repair** | EDU / half-shaft if mechanical; torque-software if TSB matches. Do not replace an EDU for tire boom. |

---

### BEV Example 11 — Heat-pump / PTC winter derate (SEA platform)

| Item | Detail |
|---|---|
| **Vehicles** | Zeekr 001, 007, X |
| **Symptoms** | Weak cabin heat; DC power capped in cold; PTC DTCs |
| **Diagnosis** | PTC current; heat-pump valves; refrigerant; isolation if the heater leaks to the bus. |
| **Repair** | HV lockout; PTC or valve block; isolation retest; winter heat + a short DC session. |

---

### BEV Example 12 — After collision / frunk work: HVIL open, no Ready

| Item | Detail |
|---|---|
| **Vehicles** | Zeekr 001, 007 (frunk HV junction) |
| **Symptoms** | No Ready after body shop; interlock DTC; random U-codes |
| **Diagnosis** | Every service HVIL connector; crash-signal reset; water in frunk drains; isolation. |
| **Repair** | Reconnect / replace damaged HVIL; dry; isolation retest; AC + DC; height cal if air springs were dropped. |

---

### BEV Example 13 — Geometry / Panda Mini: OBC cuts out on cheap public AC

| Item | Detail |
|---|---|
| **Vehicles** | Geometry A, C, E; Panda Mini EV |
| **Symptoms** | AC charge stops 40–70%; resumes after cool-down; mall charger sometimes OK |
| **Diagnosis** | OBC coolant / fan; site voltage and earth; inlet latch. |
| **Repair** | Restore OBC cooling; OBC R&R if internal faults; software; advise site earth/neutral issues. |

---

### BEV Example 14 — Zeekr 009: sliding-door / liftgate water → body + charge faults

| Item | Detail |
|---|---|
| **Vehicles** | Zeekr 009 MPV |
| **Symptoms** | Door reverse; random body DTCs after rain; intermittent charge permit |
| **Diagnosis** | Door-sill and liftgate drains; wet door module; CAN errors during plug-in. |
| **Repair** | Clear drains; dry / replace corroded modules; then retest charge — do not start with an OBC. |

---

### BEV Example 15 — Charge schedule will not wake after OTA

| Item | Detail |
|---|---|
| **Vehicles** | Zeekr 001 / 007 with scheduled departure charge |
| **Symptoms** | Morning SOC unchanged; no DTCs; manual plug-in works |
| **Diagnosis** | Gateway / TCU software vs last OTA; 12 V during scheduled wake; schedule not wiped mid-flash. |
| **Repair** | Stable 12 V; dealer reflash / schedule reset; prove a timed wake. Do not drive mid-config. |

---

### BEV Example 16 — Cell ΔV / early charge taper mistaken for a “weak pile”

| Item | Detail |
|---|---|
| **Vehicles** | Zeekr 001 high-mileage / heat-soaked packs |
| **Symptoms** | DC starts then collapses; owner blames the station |
| **Diagnosis** | Second pile; cell voltages under load; pump current and coolant level; BMS imbalance flags. |
| **Repair** | Thermal loop first (vacuum fill); balance / module repair if a group stays low; software thermal map. |

---

### PHEV Example 1 — NordThor / Lynk EM-P: EV mode locked after a failed AC session

| Item | Detail |
|---|---|
| **Vehicles** | Geely Xingyue L Hi·P, Lynk & Co 08 EM-P, Preface PHEV |
| **Symptoms** | Wallbox error; engine always runs; EV range missing |
| **Diagnosis** | 1. Inlet lock and CP. 2. OBC. 3. BMS permit. 4. 12 V during plug-in. |
| **Repair** | OBC / inlet; software; full charge + an EV-only drive. |

---

### PHEV Example 2 — DHT shudder 20–40 km/h after independent fluid service

| Item | Detail |
|---|---|
| **Vehicles** | Xingyue L Hi·X / Hi·P, Lynk 01/08 DHT |
| **Symptoms** | Judder leaving EV into engine; worse after a “transmission flush” |
| **Diagnosis** | Confirm OEM DHT fluid (not ATF or DCT fluid); adaptive values; mounts vs clutch; metal in fluid. |
| **Repair** | Drain wrong fluid; OEM DHT fill; adaptive learn; clutch / DHT if slip remains. Road-test EV and hybrid. |

---

### PHEV Example 3 — Hybrid-electronics loop empty; power limit with a full engine radiator

| Item | Detail |
|---|---|
| **Vehicles** | Geely / Lynk DHT PHEV after indie coolant work |
| **Symptoms** | Inverter / motor temp DTCs; engine gauge normal |
| **Diagnosis** | Map engine vs electronics loops; electric pump current; pressure test. |
| **Repair** | Repair the hybrid leak; vacuum-fill and bleed the electronics loop only with the specified chemistry. |

---

### PHEV Example 4 — Electric A/C dead with engine off

| Item | Detail |
|---|---|
| **Vehicles** | Xingyue L Hi·P, Lynk 08 |
| **Symptoms** | Cool only after the engine starts; owner thinks “hybrid A/C failed” |
| **Diagnosis** | Electric compressor HV supply; A/C ECU; refrigerant; HV enable / isolation. |
| **Repair** | Compressor / HV path / refrigerant; prove engine-off cool. |

---

### PHEV Example 5 — Lynk 08 EM-P: rear drive unit disabled

| Item | Detail |
|---|---|
| **Vehicles** | Lynk & Co 08 EM-P AWD |
| **Symptoms** | AWD unavailable; rear inverter DTCs; torque steer |
| **Diagnosis** | Rear HVIL; coolant to rear inverter; wheel-speed match. |
| **Repair** | HV lockout; rear EDU / inverter / connector; load-test AWD. |

---

## 6. Quick triage

| Symptom | First check | Next |
|---|---|---|
| 001 lean + slow charge | Air leaks + thermal pumps | BMS ΔV |
| PHEV no charge | Inlet/OBC | BMS |
| DHT shudder | Fluid + adapts | Clutch |
| Isolation wet | PTC/compressor | Pack |
| Random body faults | Water drains | Harness |

---

## 7. Return-to-service

- [ ] Height calibration (air cars)  
- [ ] Isolation OK  
- [ ] AC + DC charge OK  
- [ ] DHT/PHEV mode transitions smooth  
- [ ] ADAS calibrated  

---

*Confirm Geely/Zeekr SI for VIN—platform voltage and suspension packs vary widely.*
