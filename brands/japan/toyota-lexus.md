# Toyota / Lexus — Repair Guide (MY2020+)

**Region focus:** Japan-origin platforms (also built in US/China plants)  
**Scan tools:** Techstream / GTS+  
**Coolants:** SLLC (pink) for engine; dedicated hybrid inverter coolant circuit on many HEVs  
**HV note:** Service plug / HV battery disconnect before any orange-cable work

---

## 1. 2020+ model map

| Family | Examples | Powertrains |
|---|---|---|
| TNGA-C | Corolla, Corolla Cross, Lexus UX | ICE, HEV |
| TNGA-K | Camry, RAV4, Highlander, Lexus ES/NX/RX | ICE, HEV, PHEV |
| TNGA-F | Tacoma-related passenger utility (markets) | ICE, HEV |
| e-TNGA | bZ4X, Lexus RZ, Subaru Solterra (joint) | BEV |
| Prius | 5th-gen Prius / Prius Prime | HEV, PHEV |

**Camry (MY2020+):** dedicated XV70 vs XV80 guide → [toyota-camry.md](toyota-camry.md)

---

## 2. ICE / chassis examples

### Example A — RAV4 / Camry: ABS/VSC after tire service

| Field | Detail |
|---|---|
| **Vehicles** | 2020– RAV4, Camry, Highlander |
| **Symptoms** | ABS + VSC lamps; Traction Control off message; early ESC intervention on straight roads |
| **Typical DTCs** | C1201, C146E, wheel-speed rationality codes |
| **Root causes** | Mixed tire sizes/pressures; rusty tone ring bridges; sensor harness rub at knuckle; aftermarket hubs without proper tone ring air gap |
| **Diagnosis** | 1) Live-data all four wheel speeds at 40 km/h—deltas >2–3% matter. 2) Scope sensor AC signal at ~5 km/h. 3) Inspect tone rings for metallic paste. 4) Check tire placard vs installed sizes. |
| **Repair** | Match tires; clean/replace rings or sensors; repair chafe; clear codes; ABS actuator self-check road test |

### Example B — Corolla 2.0 Dynamic Force: cold misfire / P030x

| Field | Detail |
|---|---|
| **Symptoms** | Rough idle when cold; flashing MIL under load; P0301–P0304 |
| **Root causes** | Coil failure; plug gap out of spec; carbon on intake valves (GDI); low-quality fuel; rare injector issues |
| **Diagnosis** | Misfire counters; power-balance; swap coils; borescope valves; fuel trims LT/ST |
| **Repair** | Coils/plugs to OEM heat range; walnut-blast if carbon confirmed; injector service; verify PCV |

### Example C — Lexus RX/NX: EPS warning after battery disconnect

| Field | Detail |
|---|---|
| **Symptoms** | EPS lamp; heavy steering assist loss intermittently |
| **Root causes** | Low 12 V during cranking; missing steering angle calibration after disconnect; torque sensor connector not fully locked |
| **Diagnosis** | 12 V load test; Techstream steering angle zero point; inspect EPS connectors under dash |
| **Repair** | Charge/replace battery; perform steering angle calibration; reseat torque sensor connector |

### Example D — RAV4: panoramic roof drain clog → headliner odor / water in cabin

| Field | Detail |
|---|---|
| **Symptoms** | Wet A/C carpet; mold smell; intermittent BCM water intrusion faults |
| **Repair** | Clear roof drains with OEM soft line; dry carpets; check for warped drain tubes |

### Example E — Camry: stop-start not working

| Field | Detail |
|---|---|
| **Symptoms** | Auto Idle Stop unavailable; green “A” lamp never ready |
| **Root causes** | Weak AGM; hood latch switch; brake vacuum/pressure sensor; cabin climate load inhibit; battery sensor (current) fault |
| **Repair** | Test AGM + register battery where required; fix latch switch; address inhibit PIDs in Techstream |

---

## 3. Hybrid (HEV) — detailed examples

### HEV Example 1 — Inverter / MG coolant loss (most common thermal complaint)

**Vehicles:** Camry Hybrid, RAV4 Hybrid, Highlander Hybrid, Prius 5th, Lexus ES/NX/RX Hybrid (2020+)

| Item | Detail |
|---|---|
| **Customer report** | “Check Hybrid System,” fans loud, power drops on hills, sweet smell near cowl |
| **Typical DTCs** | P0A93 (inverter cooling system), P0A94, P0A1F, related information codes |
| **Symptoms in data** | Inverter temp climbs vs MG temps; water pump duty 100%; coolant level low in hybrid reservoir |
| **Why** | Electric water pump weep hole leak; quick-connect hose O-rings harden; air after non-vacuum fill |

**Troubleshooting procedure**

1. Scan HV ECU + MG ECU; save freeze-frame (inverter temp, vehicle speed, load).
2. Inspect hybrid coolant reservoir cold—level and oil sheen.
3. Pressure-test inverter cooling loop per Toyota procedure (do not use engine radiator cap pressures).
4. Active-test hybrid water pump; measure current draw; listen for dry cavitation.
5. IR thermometer: inverter case vs ambient after 10 min road load.
6. Dye test overnight if intermittent.

**Repair procedure**

1. Install HV service plug; verify 0 V on inverter working circuit.
2. Replace pump and/or leaking hoses/cooler.
3. Vacuum-fill with correct SLLC; perform Techstream bleed/utility.
4. Clear codes; road-test monitoring inverter temp (should stabilize).
5. Recheck level after cool-down (air expulsion).

---

### HEV Example 2 — HV battery deterioration / block imbalance

**Vehicles:** Older high-mileage 2020–2022 Camry/RAV4 Hybrid packs; also Lexus UX Hybrid

| Item | Detail |
|---|---|
| **Symptoms** | Poor EV assist, SOC jumps, floor warmth near rear seat, P0A80 / hybrid battery degradation messages |
| **Data clues** | Block voltage delta grows under acceleration and regen; cooling fan always high; IR estimate rising |

**Troubleshooting**

1. Techstream HV battery data list: each block voltage, temp sensors, fan request.
2. Road test: moderate accel then regen—note max ΔV.
3. Inspect battery intake filter / fan (cabin air path).
4. Rule out DC/DC overcharging 12 V system (can stress HV management).

**Repair**

1. HV lockout.
2. Replace HV battery assembly or serviceable modules per market policy.
3. Replace clogged intake filter; confirm fan operation.
4. Clear codes; SOC calibration drive cycle.
5. Confirm ΔV within OEM limit under same road load.

---

### HEV Example 3 — Harsh or delayed engine start from EV mode

**Vehicles:** Camry Hybrid, Prius 5th gen, RAV4 Hybrid

| Item | Detail |
|---|---|
| **Symptoms** | Jerk when ICE starts; RPM flare; brief “Check Hybrid System” that clears |
| **Causes** | Engine mount wear; MG1 performance; fuel delivery (high-pressure pump); throttle body carbon; software calibrations |

**Troubleshooting**

1. Record engine RPM vs MG1 RPM during start event.
2. Check fuel pressure ramp; misfire on first combustion.
3. Inspect side/ front engine mounts for fluid leak (hydraulic mounts).
4. Check for TSBs on hybrid start feel.

**Repair**

Replace mounts; clean throttle; address injectors/HPFP; apply ECU update; verify smooth start at various SOC levels.

---

### HEV Example 4 — “Ready” but no movement / intermittent MG DTCs

| Item | Detail |
|---|---|
| **Symptoms** | Ready lamp on, shifter in D, no torque; or sudden loss of drive then recovery |
| **Causes** | Shift interlock / park pawl sensor; brake switch; resolver connector fretting; rare inverter failure |
| **Diagnosis** | Confirm shift position PID; brake lamp switch; wiggle-test MG resolver harness at transaxle |
| **Repair** | Repair connector (gold terminals/ dielectric per OEM); replace MG/inverter only if pinpoint fails |

---

### HEV Example 5 — PHEV (RAV4 Prime / NX PHEV): EV mode locked out / charge fault

| Item | Detail |
|---|---|
| **Symptoms** | Won’t use plug-in EV range; charge LED sequence fails; EV lamp unavailable |
| **Causes** | Charge door latch; EVSE/CP issues; OBC fault; HV battery coolant for PHEV loop; 12 V |
| **Diagnosis** | On-plug data: proximity/pilot; OBC inlet temp; HV battery permit flags |
| **Repair** | Latch/OBC/inlet; PHEV coolant service; software; verify Level 2 charge to full then EV drive |

---

### HEV Example 6 — Jump clears “Check Hybrid System”

| Item | Detail |
|---|---|
| **Vehicles** | Any 2020+ Toyota/Lexus hybrid |
| **Diagnosis** | Load-test 12 V during Ready attempt; DC-DC current when HV is awake; grounds |
| **Repair** | 12 V / DC-DC / grounds first. Re-scan; only then chase remaining HV codes. |

---

### HEV Example 7 — Rear MG / AWD disabled (RAV4, Highlander, NX, RX)

| Item | Detail |
|---|---|
| **Diagnosis** | Rear inverter DTCs; isolation; connector; **four wheel speeds** (mixed tires mimic a dead rear motor) |
| **Repair** | Match tires; then rear MG/inverter. XV80 Camry AWD is this path, not an XV70 coupling. |

---

### HEV Example 8 — Active grille shutter (Camry/RAV4/Lexus ES)

| Item | Detail |
|---|---|
| **Symptoms** | MIL; overheat in traffic; poor economy |
| **Repair** | Debris; shutter motor; commanded vs actual in Techstream |

---

### HEV Example 9 — Hybrid transaxle (P710) resolver / cable (P1C5D / P1C5F)

| Item | Detail |
|---|---|
| **Vehicles** | Early Camry/RAV4 Hybrid |
| **Repair** | Health check; motor-cable bulletin **before** inverter R&R |

---

### HEV Example 10 — Sienna Hybrid: sliding-door water → hybrid network

| Item | Detail |
|---|---|
| **Diagnosis** | Wet door modules and grounds; then hybrid codes that remain |
| **Repair** | Dry doors; repair grounds; do not replace a pack for door water |

---

### HEV Example 11 — Lexus Mark Levinson / comfort-module drain

| Item | Detail |
|---|---|
| **Repair** | Sleep-draw; amplifier or rear-entertainment that stays awake; then 12 V |

---

### HEV Example 12 — Prius Prime / NX 450h+ / RX 450h+: charge door latch

| Item | Detail |
|---|---|
| **Repair** | Latch/lock motor; water in port; then OBC if pilot is dead |

---

## 4. BEV (bZ4X / Lexus RZ) — detailed examples

### BEV Example 1 — DC fast charge aborts; AC charge OK

| Item | Detail |
|---|---|
| **Symptoms** | CHAdeMO/CCS session starts then stops within minutes; cabin message charging unavailable |
| **Typical causes** | Moisture in inlet; HV isolation drop; OBC leakage; battery temp sensors; cable latch |

**Troubleshooting**

1. Dry inlet; inspect seals and drain path.
2. Read isolation resistance with OEM HV insulation process (Techstream guided).
3. Compare AC vs DC path DTCs (battery ECU vs charging ECU).
4. Check thermal system pumps during DC attempt (derate if pump dead).

**Repair procedure**

1. HV lockout.
2. Replace inlet assembly or harness; repair isolation offender (heater/compressor/pack).
3. Reseal connectors with OEM grease/spec.
4. Isolation retest dry and after water spray on underbody shields (careful OEM method).
5. Successful DC charge log (kW curve).

---

### BEV Example 2 — Reduced power after deep snow / water crossing

| Item | Detail |
|---|---|
| **Symptoms** | Tortoise/reduced power; isolation DTCs; AWD disabled (rear axle) |
| **Causes** | Water in e-axle HV connector; vent clogging; rear inverter moisture |
| **Repair** | Dry connectors; replace damaged HVIL pins; e-axle oil inspection for milky fluid; isolation retest |

---

### BEV Example 3 — 12 V / DC-DC sleep drain on parked bZ4X

| Item | Detail |
|---|---|
| **Symptoms** | Dead 12 V after 3–7 days; HV won’t ready until jump |
| **Causes** | DCM/ telematics; aftermarket tracker; DC-DC not topping LV; software sleep bugs (check campaigns) |
| **Repair** | Parasitic draw test in sleep; update gateway software; replace LV battery; verify DC-DC charge current when HV awake |

---

### BEV Example 4 — Wheel hub / ABS tone issues mimicking torque limit

| Item | Detail |
|---|---|
| **Symptoms** | Traction events on dry pavement; “AWD system” messages |
| **Repair** | Same as ICE ABS diagnosis—EVs amplify wheel-speed rationality into torque cuts |

---

### BEV Example 5 — Isolation after rain (PTC / compressor / OBC)

| Item | Detail |
|---|---|
| **Diagnosis** | Record kΩ; section heater → compressor → OBC → pack |
| **Repair** | HV lockout; replace the leaking component; retest dry |

---

### BEV Example 6 — AC charge cuts out, DC OK

| Item | Detail |
|---|---|
| **Repair** | EVSE; OBC cooling; OBC replacement if internal faults |

---

### BEV Example 7 — Heat-pump / PTC winter range collapse

| Item | Detail |
|---|---|
| **Repair** | PTC under lockout or heat-pump valve; isolation retest |

---

### BEV Example 8 — Incomplete campaign / OTA: no Ready

| Item | Detail |
|---|---|
| **Repair** | Stabilize 12 V; finish Toyota/Lexus programming; do not replace an e-axle mid-flash |

---

### BEV Example 9 — Charge inlet latch / moisture (bZ4X / RZ)

| Item | Detail |
|---|---|
| **Repair** | Dry inlet; latch; seals; then isolation if kΩ dropped |

---

### BEV Example 10 — After collision: HVIL + restraint

| Item | Detail |
|---|---|
| **Repair** | Service plug; interlock loop; crash-signal reset; isolation. Do not jumper HVIL. |

---

## 5. Lexus-specific notes

| Topic | Guidance |
|---|---|
| Mark Levinson amplifier drain | Verify sleep current if battery complaints |
| Air suspension (select LX/related) | Calibrate height sensors after any link work |
| Safety system calibrations | Radar/camera static calibration after bumper/glass |

---

## 6. Quick triage table

| Symptom | First check | Likely deeper cause |
|---|---|---|
| Check Hybrid System + fans | Inverter coolant level | Pump/hose leak |
| P0A80 | Block ΔV + fan/filter | HV battery |
| Ready no drive | Shift PID + brake switch | Resolver/inverter |
| DC charge fail only | Inlet seals + isolation | OBC/pack |
| EPS lamp | 12 V + angle cal | EPS torque sensor |
| ABS after tires | Speed PIDs | Tone ring/tire size |

---

## 7. Return-to-service checklist (Toyota/Lexus HEV-BEV)

- [ ] HV plug reinstalled and locked  
- [ ] Isolation within spec  
- [ ] Coolant levels engine + hybrid/EV loops  
- [ ] Techstream health check zero pending  
- [ ] Road test: ICE start feel, inverter temps, regen  
- [ ] Charge test for PHEV/BEV  
- [ ] ADAS calibration if aligned or glass replaced  

---

*Confirm all torque, fluid, and HV steps with VIN-specific Toyota/Lexus SI.*

HEV / BEV step-by-step methods (including Lexus models): [../../hev-bev-troubleshooting.md](../../hev-bev-troubleshooting.md)
