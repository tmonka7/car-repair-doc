# Mitsubishi — Repair Guide (MY2020+)

**Region focus:** Japan  
**Scan tools:** MUT-III SE / updated dealer diagnostics  
**Flagship electrified:** Outlander PHEV (Gen3 2021+), Eclipse Cross PHEV (markets)

---

## 1. 2020+ model map

| Model | Powertrains |
|---|---|
| Outlander (4th gen) | ICE, PHEV |
| Eclipse Cross | ICE, PHEV |
| Mirage / smaller lines | ICE (markets) |
| ASX / RVR | ICE |

---

## 2. ICE examples

### Example A — Outlander: A/C odor / evaporator microbial

| Field | Detail |
|---|---|
| **Symptoms** | Musty smell on blower start |
| **Repair** | Evaporator clean; cabin filter; dry mode; drain path |

### Example B — CVT judder (select ICE models)

| Field | Detail |
|---|---|
| **Symptoms** | Shudder light throttle |
| **Repair** | DiaQueen CVT fluid only; cooler; CVT diagnosis |

### Example C — ADAS camera / radar after collision cover repair

| Field | Detail |
|---|---|
| **Symptoms** | FCM unavailable; false alerts |
| **Repair** | Bracket + aiming with MUT targets |

### Example D — Transfer / AWD fluid neglect

| Field | Detail |
|---|---|
| **Symptoms** | Binding; noise |
| **Repair** | Fluid exchange; tire match |

### Example E — Electrical: ground points causing cluster anomalies

| Field | Detail |
|---|---|
| **Symptoms** | Flickering gauges; random TPMS |
| **Repair** | Clean body grounds; battery terminals; CAN resistance checks |

---

## 3. PHEV — Outlander Gen3 detailed examples

### PHEV Example 1 — Will not accept AC charge

| Item | Detail |
|---|---|
| **Symptoms** | Charge LED faults; EVSE says “error”; vehicle stays on ICE/series |
| **Typical causes** | Inlet latch; CP wiring; OBC; HV battery too hot/cold; 12 V; EVSE incompatibility |

**Troubleshooting**

1. Try known-good EVSE / public Level 2.
2. MUT: OBC DTCs, charge permission, inlet temp, HV SOC.
3. Measure CP duty/voltage per Mitsubishi chart.
4. Inspect charge port for water/bent pins.
5. Verify 12 V and DC/DC.

**Repair procedure**

1. Replace latch/inlet or OBC as directed.
2. HV lockout for OBC/pack work.
3. Update PHEV ECU software.
4. Charge to full; confirm EV driving range returns.
5. Recheck for intermittent after heat soak.

---

### PHEV Example 2 — “EV mode” unavailable / forced series hybrid

| Item | Detail |
|---|---|
| **Symptoms** | Engine runs whenever moving; EV lamp off |
| **Causes** | Low HV SOC miscalc; battery DTCs; engine maintenance mode stuck; ambient/HVAC request; fault in front/rear motors |
| **Diagnosis** | Mode inhibit PIDs; battery cell data; motor DTC history |
| **Repair** | Clear forced modes after repair; battery or motor repair; customer education on heat/SOC inhibits |

---

### PHEV Example 3 — Rear motor / twin-motor AWD fault

| Item | Detail |
|---|---|
| **Symptoms** | AWD light; reduced power; noise rear |
| **Troubleshooting** | Rear MCU DTCs; HVIL; oil in rear drive unit; wheel-speed correlation |
| **Repair** | Connector repair; rear drive unit; fluid; road test 4WD modes |

---

### PHEV Example 4 — Hybrid coolant loss / inverter over-temp

| Item | Detail |
|---|---|
| **Symptoms** | Power limit; PHEV system warning; fans high |
| **Diagnosis** | Identify which loop (engine vs PHEV power electronics); pressure test; pump active test |
| **Repair** | Pump/hoses; vacuum fill correct coolant; bleed; monitor temps |

---

### PHEV Example 5 — HV battery capacity / cell imbalance

| Item | Detail |
|---|---|
| **Symptoms** | EV range collapse; charge ends early; battery DTCs |
| **Diagnosis** | Cell voltages under charge/discharge; cooling fans/ducts |
| **Repair** | Pack or modules; cooling path clean; SOC recalibration drive |

---

### PHEV Example 6 — Engine starts for catalyst / noise complaint mistaken for fault

| Item | Detail |
|---|---|
| **Symptoms** | Owner complains engine starts while parked/plugged |
| **Often normal** | Engine maintenance / catalyst heating schedules |
| **Action** | Confirm with MUT no DTCs; explain schedule; investigate only if abnormal duration/smoke |

---

## Additional field examples

### Example F — Outlander 4th ICE 2.5: oil use / PCV

| Field | Detail |
|---|---|
| **Vehicles** | MY2022+ Outlander 2.5 ICE |
| **Symptoms** | Oil between services; PCV whistle; mist on the underside; misfire if dumped into the intake |
| **Diagnosis** | 1) Consumption test. 2) PCV and catch in the intake. 3) Leaks at the cover/pan vs burning. 4) Oil grade. |
| **Repair** | PCV; seals; correct oil; carbon clean if needed. Do not jump to rings without a measured consumption test. |

### Example G — Eclipse Cross 1.5T: misfire / carbon

| Field | Detail |
|---|---|
| **Vehicles** | MY2020+ Eclipse Cross 1.5T ICE |
| **Symptoms** | P030x under load; rough idle after oil neglect; boost smell |
| **Diagnosis** | 1) Plugs/coils. 2) Borescope carbon. 3) Fuel trims and boost leaks. 4) Relative compression. |
| **Repair** | Iridium plugs; coils; intake carbon; PCV; charge-pipe boots. Confirm 0W-20/5W-30 per SI. |

### Example H — Outlander ICE: S-AWC binding / tire mismatch

| Field | Detail |
|---|---|
| **Vehicles** | MY2022+ Outlander S-AWC ICE |
| **Symptoms** | Hop on dry tight turns; AWD lamp; transfer heat |
| **Diagnosis** | 1) Four tire circumferences. 2) Transfer / rear-diff fluid. 3) MUT AWD clutch command. 4) Wheel-speed correlation. |
| **Repair** | Match tires first; DiaQueen fluids; coupling/transfer only if damaged after mismatch. |

### PHEV Example 7 — Outlander PHEV: 12 V dead, no charge / no Ready

| Field | Detail |
|---|---|
| **Vehicles** | MY2021+ Outlander PHEV Gen3 |
| **Symptoms** | No AC charge; no Ready; cluster chaos; jump appears to “fix” the hybrid |
| **Diagnosis** | 1) Load-test 12 V. 2) MUT charge-permission and DC-DC current with HV awake. 3) Sleep draw (TCU, aftermarket USB). 4) History DTCs that set only while LV was low. |
| **Repair** | Mitsubishi-spec 12 V; verify DC-DC; TCU update; then re-run charge diagnostics. Do not replace the OBC on jump-clear codes. |

### PHEV Example 8 — Outlander PHEV: isolation after rain

| Field | Detail |
|---|---|
| **Vehicles** | MY2021+ Outlander PHEV |
| **Symptoms** | PHEV system warning after rain or a wash; reduced power; charge abort |
| **Diagnosis** | 1) MUT isolation kΩ. 2) Section OBC, cabin heater, compressor, front MCU, rear MCU, pack. 3) Charge-port drain. 4) 12 V — low LV fakes isolation. |
| **Repair** | Dry/replace connectors; replace the leaking HV heater or compressor; pack only if module isolation fails; isolation retest; AC charge + EV drive. |

### PHEV Example 9 — Outlander PHEV: CHAdeMO / DC fail, AC OK

| Field | Detail |
|---|---|
| **Vehicles** | MY2021+ Outlander PHEV with DC |
| **Symptoms** | CHAdeMO handshake fail; AC Level 2 completes; inlet or lock DTCs |
| **Diagnosis** | 1) Known-good DC station. 2) Inlet lock and CHAdeMO pins. 3) MUT charge-path vs battery-temp permit. 4) Isolation during DC. |
| **Repair** | Inlet/lock; EV-CAN; PHEV ECU software; confirm a DC session log. Wet CHAdeMO inlets are more common than a failed pack. |

### PHEV Example 10 — Outlander PHEV: charge lid / latch stuck

| Field | Detail |
|---|---|
| **Vehicles** | MY2021+ Outlander PHEV |
| **Symptoms** | Lid won’t open; cable locked after charge; EVSE never sees ready |
| **Diagnosis** | 1) Manual release. 2) Latch motor and waterproof connector. 3) Water in the port. 4) Pilot only after latch locked. |
| **Repair** | Latch/inlet; dry the port; then OBC if CP is dead on a known-good EVSE (Example 1 is the full charge-path flowchart). |

### PHEV Example 11 — Outlander PHEV: front motor / transaxle shudder

| Field | Detail |
|---|---|
| **Vehicles** | MY2021+ Outlander PHEV Gen3 |
| **Symptoms** | Shudder leaving EV into series/parallel; bang on takeoff; worse cold |
| **Diagnosis** | 1) MUT motor torque vs clutch/engine join. 2) Mounts. 3) Front MCU DTCs. 4) Software campaigns for motor control. |
| **Repair** | Mounts; PHEV software; front drive/transaxle only after mounts and calibration. Rear-motor AWD faults are Example 3. |

### PHEV Example 12 — Outlander PHEV: electric A/C / heat-pump weak

| Field | Detail |
|---|---|
| **Vehicles** | MY2021+ Outlander PHEV |
| **Symptoms** | No cabin cool in EV; heat only after the engine starts; isolation if the compressor leaked |
| **Diagnosis** | 1) HV enable to the electric compressor. 2) Refrigerant/heat-pump valves. 3) Isolation kΩ. 4) 12 V and climate request PIDs. |
| **Repair** | HV lockout; compressor or heat-pump valve; correct oil; isolation retest; climate test in EV with ICE off. |

### PHEV Example 13 — Eclipse Cross PHEV: AC charge / OBC

| Field | Detail |
|---|---|
| **Vehicles** | MY2021+ Eclipse Cross PHEV (markets) |
| **Symptoms** | Charge LED fault; EVSE error; EV range missing; ICE always on |
| **Diagnosis** | 1) Known-good EVSE. 2) MUT OBC / inlet / CP. 3) HV temp permit and 12 V. 4) Same OBC/inlet approach as Outlander, VIN-specific connectors. |
| **Repair** | Latch/inlet or OBC under HV lockout; software; charge to full; EV drive. Do not copy Outlander connector pinouts blindly. |

### PHEV Example 14 — Eclipse Cross PHEV: rear motor AWD

| Field | Detail |
|---|---|
| **Vehicles** | MY2021+ Eclipse Cross PHEV |
| **Symptoms** | AWD light; FWD-only; rear noise; reduced power |
| **Diagnosis** | 1) Rear MCU DTCs and HVIL. 2) Rear-unit oil. 3) Four wheel speeds. 4) Isolation if wet. |
| **Repair** | Connector/HVIL; fluid; rear drive unit; MUT clear; 4WD mode road test. Same twin-motor idea as Outlander Example 3—use Eclipse pinouts and fluid spec. |

### PHEV Example 15 — Outlander PHEV: DC-DC not charging 12 V

| Field | Detail |
|---|---|
| **Vehicles** | MY2021+ Outlander PHEV |
| **Symptoms** | 12 V falling with Ready on; repeated dead batteries; charge/Ready fails the next morning |
| **Diagnosis** | 1) 12 V resting and loaded. 2) MUT DC-DC commanded vs actual with HV on. 3) Grounds. 4) Parasitic if DC-DC is healthy when awake. |
| **Repair** | Repair DC-DC (often inverter/PCU-related on this platform) per MUT pinpoint; battery last if it was sulfated from undercharge; confirm ~14 V Ready-on. |

### PHEV Example 16 — Outlander PHEV: 2.4 generator engine no-start

| Field | Detail |
|---|---|
| **Vehicles** | MY2021+ Outlander PHEV 2.4 MIVEC generator |
| **Symptoms** | Pack depletes; engine cranks or no-crank when generation is requested; EV dies on the highway |
| **Diagnosis** | 1) MUT generation request vs engine RPM and kW into the pack. 2) Fuel/ignition/compression on the 2.4. 3) Engine DTCs vs PHEV MCU. 4) Maintenance-mode flags vs a real no-start. |
| **Repair** | Conventional 2.4 fuel/ignition/timing service; then confirm series-generation into the HV battery. Do not replace the pack for a generator engine that never started. |

### PHEV Example 17 — Outlander PHEV: after collision HVIL / pyro

| Field | Detail |
|---|---|
| **Vehicles** | MY2021+ Outlander PHEV / Eclipse Cross PHEV |
| **Symptoms** | No Ready after a bumper or underbody hit; interlock DTCs; charge dead |
| **Diagnosis** | 1) Service disconnect and wait; verify 0 V. 2) MUT HVIL loop and crash/pyro status. 3) Isolation. 4) Restraint module history. |
| **Repair** | Repair the open HVIL or pyro per SI; isolation retest; crash-signal reset only after restraints are complete. Do not jumper HVIL to “get it running.” |

### PHEV Example 18 — Outlander PHEV: winter charge permit / battery heater

| Field | Detail |
|---|---|
| **Vehicles** | MY2021+ Outlander PHEV |
| **Symptoms** | AC charge refused when cold; EV range collapse in winter; heater DTCs; charge starts after cabin soak |
| **Diagnosis** | 1) MUT HV battery temp vs charge-permit. 2) Pack heater current when commanded. 3) Isolation if the heater leaked. 4) Inlet/OBC only after temps are in range. |
| **Repair** | Pack heater or coolant/air path; isolation retest if opened; software; confirm a cold-soak charge. Cell imbalance (Example 5) is a different path—check ΔV after the pack is warm. |

---

## 4. Eclipse Cross PHEV (markets)

| Issue | Approach |
|---|---|
| Charge fault | Same OBC/inlet approach as Outlander |
| Front motor shudder | Mounts + MCU software |
| Reduced EV | Battery thermal + cell ΔV |

---

## 5. Quick triage

| Symptom | First check | Next |
|---|---|---|
| No AC charge | EVSE + CP + latch | OBC |
| No EV mode | Inhibit PIDs + SOC | Battery/motors |
| Power limit | Coolant loops | Pump/inverter |
| AWD fault | Rear MCU + oil | Drive unit |
| Random electrics | Grounds + 12 V | CAN |

---

## 6. Return-to-service

- [ ] AC charge complete successfully  
- [ ] EV mode drive verified  
- [ ] Both coolant loops topped  
- [ ] MUT zero pending PHEV DTCs  
- [ ] AWD function test  

---

*Confirm with VIN-specific Mitsubishi workshop manuals and HV safety procedures.*
