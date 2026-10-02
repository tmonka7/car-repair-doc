# XPeng (XPEV) — Repair Guide (MY2020+)

**Region focus:** China (exports select)  
**Models:** P7, P5, G9, G6, G3i, X9, etc.  
**Tech notes:** XPILOT ADAS, 800 V architectures on newer G6/G9, GB/T charging  
**Diagnostics:** XPeng dealer diagnostic suite

---

## 1. 2020+ model map

| Model | Notes |
|---|---|
| P7 / P7i | Sport sedan BEV |
| G9 / G6 | Flagship SUVs; 800 V on newer |
| P5 | Sedan with lidar variants |
| G3i / other | Earlier BEV SUV |
| X9 | MPV BEV |

---

## 2. Body / ADAS / LV examples

### Example A — XPILOT unavailable after windshield

| Field | Detail |
|---|---|
| **Symptoms** | Lane centers aborted; NGP greyed |
| **Repair** | OEM glass; camera/lidar calibration (static + road) |

### Example B — LV drain from smart cabin / USB always hot

| Field | Detail |
|---|---|
| **Symptoms** | Weekly no-start Ready |
| **Repair** | Quiescent current; gateway software; LV battery; dashcam wiring |

### Example C — Power liftgate / door handle water faults

| Field | Detail |
|---|---|
| **Symptoms** | Handle present fail; liftgate reverse |
| **Repair** | Drains; latch; door module |

### Example D — Air suspension (G9 select) lean

| Field | Detail |
|---|---|
| **Symptoms** | Height error; compressor heat |
| **Repair** | Leaks; dryer; calibration |

### Example E — Brake grind after winter (rear EPB)

| Field | Detail |
|---|---|
| **Symptoms** | Drag; EPB light |
| **Repair** | Service mode; hardware; pins |

---

## 3. BEV — detailed examples

### BEV Example 1 — 800 V vehicle fails on 500 V DC piles / boost faults

**Vehicles:** G6 / G9 800 V variants

| Item | Detail |
|---|---|
| **Symptoms** | Fast charge “incompatible” or aborts; boost converter DTCs; AC still OK |
| **Why** | Onboard boost must raise pile voltage; boost thermal or hardware faults appear as “pile problem” |

**Troubleshooting**

1. Confirm pile voltage class and second pile test.
2. Read boost/OBC/BMS DTCs during attempt.
3. Monitor boost temps and battery permit flags.
4. Inspect inlet GB/T pins for arcing.

**Repair procedure**

1. HV lockout.
2. Replace boost module / OBC / inlet per flowchart.
3. Apply BMS/charge software updates.
4. Validate on both 500 V-class and 800 V-class piles when available.
5. Record charge curve for warranty.

---

### BEV Example 2 — Isolation fault / humidity-related

| Item | Detail |
|---|---|
| **Symptoms** | Insulation warning in wet season; limp |
| **Diagnosis** | Humidity sensors; PTC; compressor; underbody connectors |
| **Repair** | Dry/replace connectors; HV heater/compressor; pack if module isolation fails |

---

### BEV Example 3 — Thermal management caps DC rate

| Item | Detail |
|---|---|
| **Symptoms** | Starts 180+ kW then collapses early; pump DTCs |
| **Repair** | Battery pumps/valves; coolant fill; radiator cleaning; software |

---

### BEV Example 4 — Dual motor: rear axle disabled

| Item | Detail |
|---|---|
| **Symptoms** | RWD/FWD only message; rear inverter codes |
| **Repair** | HVIL; EDU oil; water intrusion; wheel-speed rationality |

---

### BEV Example 5 — OBC AC charge intermittent at home

| Item | Detail |
|---|---|
| **Symptoms** | Home EVSE fails; mall charger works |
| **Causes** | Site grounding/GFCI; OBC sensitivity; inlet latch |
| **Repair** | OBC/inlet; advise electrician on earth/neutral issues; software |

---

### BEV Example 6 — Drive unit bearing whine (P7 common NVH complaint path)

| Item | Detail |
|---|---|
| **Symptoms** | Whine 60–100 km/h |
| **Repair** | Confirm with cabin boom tests; EDU replace; tire replacement can mimic |

---

### BEV Example 7 — After collision: front trunk HV components

| Item | Detail |
|---|---|
| **Symptoms** | Isolation; OBC damage; pyro/contactor open |
| **Repair** | Full HV checklist; OBC; harness; pack; SRS coordination |

---

## 4. Software / OTA related real faults

| Scenario | Symptom | Fix |
|---|---|---|
| Incomplete OTA | Features missing, U-codes | Dealer reflash with LV support |
| ADAS false braking after map OTA | Phantom brake | Camera clean + calibration + software rollback policy |
| Charge schedule bugs | Won’t wake to charge | Gateway update; schedule reset |

---

## Additional field examples

### BEV Example 8 — 800 V car on a 400 V pile: handshake OK, then boost thermal cut

| Item | Detail |
|---|---|
| **Vehicles** | G6 / G9 800 V (not 400 V P7 / G3i) |
| **Symptoms** | Session starts then dies; owner says “pile problem”; 800 V stations work |
| **Diagnosis** | 1. Confirm architecture and pile class. 2. Boost temps / DTCs. 3. Second 400 V pile. 4. Inlet GB/T arcing. |
| **Repair** | Boost module / OBC / inlet; charge software; validate on 400 V-class **and** 800 V-class piles. Record the curve for warranty. |

---

### BEV Example 9 — XPILOT / XNGP down after windshield (calibration skipped)

| Item | Detail |
|---|---|
| **Vehicles** | P7i, G6, G9, P5 lidar |
| **Symptoms** | NGP greyed; lane-center aborts; “camera unavailable” after glass |
| **Diagnosis** | OEM vs aftermarket glass; camera / lidar static + dynamic cal status; bracket torque. |
| **Repair** | XPeng glass; full camera/lidar calibration (static + road). Aftermarket windshields fail XPILOT even when the camera “looks fine.” |

---

### BEV Example 10 — Dual-motor: front axle dead (rear still drives)

| Item | Detail |
|---|---|
| **Vehicles** | G9 / G6 / P7i Performance AWD |
| **Symptoms** | RWD-only feel; front inverter DTCs; rear axle already known-good |
| **Diagnosis** | Front HVIL and orange connector; coolant to that inverter; wheel-speed rationality. |
| **Repair** | HV lockout; front EDU / inverter / connector; load-test AWD from a stop. |

---

### BEV Example 11 — Dual-motor rear axle disabled after water crossing

| Item | Detail |
|---|---|
| **Vehicles** | G6 / G9 AWD, P7i |
| **Symptoms** | “Rear drive system fault”; FWD-only; rear inverter codes after a flooded underpass |
| **Diagnosis** | Rear HVIL; EDU oil / water intrusion; wheel-speed; isolation on that axle. |
| **Repair** | Dry / replace rear connectors; EDU if water in the unit; isolation retest; AWD load test. |

---

### BEV Example 12 — Incomplete OTA: XPILOT and charge schedule both missing

| Item | Detail |
|---|---|
| **Vehicles** | G6, G9, P7i after a cabin-domain OTA |
| **Symptoms** | Multiple U-codes; features missing; sometimes won’t wake to charge |
| **Diagnosis** | Which domain failed; 12 V during flash; do not confuse with a hardware EDU fault. |
| **Repair** | Stable LV; dealer reflash; schedule reset; do not drive mid-config. |

---

### BEV Example 13 — Heat-pump / PTC winter range collapse

| Item | Detail |
|---|---|
| **Vehicles** | G9, G6, P7i |
| **Symptoms** | Cabin barely warm; SOC dumps while parked with climate; PTC DTCs |
| **Diagnosis** | PTC current; heat-pump valves; refrigerant; isolation if PTC leaks. |
| **Repair** | HV lockout; PTC or valve block; isolation retest; winter heat test. |

---

### BEV Example 14 — GB/T lock stuck; 800 V handshake fails next visit

| Item | Detail |
|---|---|
| **Vehicles** | G6 / G9; P7 GB/T |
| **Symptoms** | Cable locked; owner forces handle; next DC attempt aborts at handshake |
| **Diagnosis** | Manual release; lock-motor current; pin burn; port water. |
| **Repair** | Replace lock / inlet; reseal; lock-cycle + DC on the correct voltage class. |

---

### BEV Example 15 — Isolation after typhoon rain (PTC / compressor / underbody)

| Item | Detail |
|---|---|
| **Vehicles** | G3i, P7, G6 |
| **Symptoms** | Insulation warning in wet season; limp; charge refused |
| **Diagnosis** | Humidity; sectional PTC → compressor → OBC → pack; underbody orange connectors. |
| **Repair** | Dry / replace connectors; HV heater or compressor; pack only if module isolation fails; dry retest. |

---

### BEV Example 16 — X9 MPV: rear HVAC / door water → CAN and charge-permit dropouts

| Item | Detail |
|---|---|
| **Vehicles** | X9 |
| **Symptoms** | Door or liftgate reverse after rain; random U-codes; intermittent AC charge |
| **Diagnosis** | Door and HVAC drain paths; wet modules; CAN errors during plug-in. |
| **Repair** | Clear drains; dry / replace modules; then retest charge — do not start with an OBC. |

---

### BEV Example 17 — Regen / brake-blending grab after pad service

| Item | Detail |
|---|---|
| **Vehicles** | P7, G6, G9 |
| **Symptoms** | Grabby or long pedal after rear pads; EPB light |
| **Diagnosis** | EPB service-mode used?; bleed; wheel-speed cleanliness; brake-ECU cal. |
| **Repair** | Correct service mode; bleed; hardware / pins; brake-blend calibration. |

---

### BEV Example 18 — Export CCS vs China GB/T: “incompatible pile” is the wrong inlet assumption

| Item | Detail |
|---|---|
| **Vehicles** | G6 / G9 sold outside China |
| **Symptoms** | Shop treats it as GB/T; lock and handshake diagnosis goes nowhere |
| **Diagnosis** | Confirm connector standard from VIN / inlet; CCS lock location differs. |
| **Repair** | Use the market inlet flowchart (CCS2 vs GB/T); then boost / BMS path as usual. |

---

### BEV Example 19 — Cell imbalance / early DC taper after repeated hot charges

| Item | Detail |
|---|---|
| **Vehicles** | G9 / G6 high DC use |
| **Symptoms** | Charge starts strong then collapses; owner blames 400 V piles |
| **Diagnosis** | Cell ΔV under DC; pump current; coolant level; compare a cool 800 V pile. |
| **Repair** | Thermal loop vacuum fill first; module / BMS if a group stays low; software. |

---

### BEV Example 20 — Frunk wash / pressure-wash: HV junction isolation

| Item | Detail |
|---|---|
| **Vehicles** | P7, G9 (frunk HV) |
| **Symptoms** | Isolation or HVIL after a detailing shop pressure-washed the frunk |
| **Diagnosis** | Frunk drains; water in HV junction; isolation sectional. |
| **Repair** | Dry; replace wet HVIL pins; isolation retest; AC + DC. Educate: no pressure wash into the frunk. |

---

### BEV Example 21 — Key / PEPS not detected; 12 V “looks fine”

| Item | Detail |
|---|---|
| **Vehicles** | G6, G9, P7i |
| **Symptoms** | No Ready; key-not-detected; aftermarket alarm or dashcam recently fitted |
| **Diagnosis** | Load-test 12 V under wake; PEPS antennas; key fob battery; accessory taps on B+. |
| **Repair** | Remove parasitic accessory wiring; LV battery if it collapses under load; gateway / PEPS software. |

---

## 5. Quick triage

| Symptom | First check | Next |
|---|---|---|
| 800 V charge fail | Boost DTCs + 2nd pile | Boost/OBC |
| Isolation wet | PTC/compressor | Pack |
| XPILOT down | Glass/cameras | Calibration |
| Whine | Speed test | EDU vs tires |
| Home AC fail only | Site earth | OBC |

---

## 6. Return-to-service

- [ ] Isolation OK  
- [ ] AC + DC validated (voltage classes if 800 V)  
- [ ] XPILOT calibration complete  
- [ ] No boost thermal DTCs on repeat DC  
- [ ] LV sleep current OK  

---

*XPeng 400 V vs 800 V variants need different charge diagnosis—identify architecture first.*
