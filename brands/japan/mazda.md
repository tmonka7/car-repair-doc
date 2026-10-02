# Mazda — Repair Guide (MY2020+)

**Region focus:** Japan  
**Scan tools:** Mazda MDARS / IDS successor tools  
**Notable:** Skyactiv-G/X, i-Activsense ADAS, MX-30 BEV/RE (markets)

---

## 1. 2020+ model map

| Model | Powertrains |
|---|---|
| Mazda3 / CX-30 | Skyactiv-G, mild hybrid markets, AWD |
| CX-5 / CX-50 | Skyactiv-G / T |
| CX-90 / CX-70 | Inline-6, PHEV |
| MX-30 | BEV / Rotary extender (markets) |
| Mazda6 (late) | Skyactiv-G |

---

## 2. ICE examples

### Example A — Skyactiv-G misfire under load

| Field | Detail |
|---|---|
| **Symptoms** | P0300–P0304 on acceleration; rough idle after oil neglect |
| **Causes** | Plugs/coils; carbon; low volatility fuel; oil catch in intake (PCV) |
| **Diagnosis** | Power balance; borescope; fuel trims; relative compression |
| **Repair** | Iridium plugs OEM gap; coils; carbon clean; PCV; correct 0W-20 |

### Example B — Cylinder head / coolant loss (select Skyactiv—verify campaigns)

| Field | Detail |
|---|---|
| **Symptoms** | Level drop no external leak; overheat; milky oil rare |
| **Diagnosis** | Pressure test; block test; combustion leak; UV dye |
| **Repair** | Follow Mazda head/gasket or updated parts campaigns exactly |

### Example C — i-Activsense radar false warnings after bumper repair

| Field | Detail |
|---|---|
| **Symptoms** | Phantom braking; SCBS unavailable |
| **Repair** | Bracket alignment; radar static calibration; aim height |

### Example D — CX-5: transfer case / AWD binding

| Field | Detail |
|---|---|
| **Symptoms** | Hop on dry pavement turns; fluid burnt |
| **Repair** | Matching tires (circumference); AWD fluid; coupling diagnosis |

### Example E — Infotainment reboot / battery drain

| Field | Detail |
|---|---|
| **Symptoms** | Screen reboots; LV drain |
| **Repair** | Software update; connectivity master module; parasitic test |

---

## 3. PHEV — CX-90 PHEV examples

### PHEV Example 1 — EV mode unavailable / charge fault

| Item | Detail |
|---|---|
| **Symptoms** | Won’t finish AC charge; EV button grey; ICE always running |
| **Troubleshooting** | Charge lid; CP signal; OBC DTCs; HV battery temp permit; 12 V; fuel forced-run mode flags |
| **Repair** | OBC/inlet; HV battery coolant loop service; software; verify charge to EV full + EV drive |

### PHEV Example 2 — Harsh transition to engine

| Item | Detail |
|---|---|
| **Symptoms** | Shudder when extender/engine engages |
| **Repair** | Mounts; hybrid software; clutch control adapts per MDARS |

### PHEV Example 3 — Regenerative braking feel / ABS events

| Item | Detail |
|---|---|
| **Symptoms** | Grabby regen on wet roads; ABS light flicker |
| **Repair** | Wheel-speed cleanliness; brake software; tire compound matching |

---

## 4. BEV — MX-30 detailed examples

### BEV Example 1 — Thermal management fault caps charge rate

| Item | Detail |
|---|---|
| **Symptoms** | Charge sticks at low kW; battery heater/cooler DTCs; winter range collapse |
| **Troubleshooting** | Battery loop pump current; refrigerant heat-pump valves; glycol level; temp sensor spread |
| **Repair procedure** | HV lockout if opening HV loops → replace pump/valve → EV-spec coolant vacuum fill → bleed → charge profile test at cold soak if possible |

### BEV Example 2 — Isolation fault / reduced power

| Item | Detail |
|---|---|
| **Symptoms** | Power limited; insulation warnings |
| **Diagnosis** | Section OBC, PTC, compressor, pack |
| **Repair** | Replace leaking HV cabin heater or compressor; dry connectors; retest isolation |

### BEV Example 3 — Rotary range extender (R-EV markets) no-start

| Item | Detail |
|---|---|
| **Symptoms** | Pack depletes; rotary won’t generate; warning messages |
| **Troubleshooting** | Extender ECU; fuel system; oil for rotary apex sealing; generation current PID |
| **Repair** | Fuel/ignition/rotary service per Mazda; verify generation into HV battery; do not return with failed extender |

### BEV Example 4 — Charge port latch stuck (Type 2/CCS markets)

| Item | Detail |
|---|---|
| **Symptoms** | Cable locked after charge |
| **Repair** | Manual release cable; replace latch motor; check water in port |

---

## Additional field examples

### Example F — CX-90 / CX-70 inline-6: oil use / coolant seepage

| Field | Detail |
|---|---|
| **Vehicles** | MY2024+ CX-90 / CX-70 Skyactiv inline-6 (ICE and PHEV related) |
| **Symptoms** | Oil between services; seepage at cooler/housing; slow heat; level drop |
| **Diagnosis** | 1) Consumption test. 2) Pressure-test cooling system. 3) UV dye vs internal. 4) MDARS for thermostat and oil-level PIDs. |
| **Repair** | Follow Mazda housing/cooler and oil-consumption campaigns; correct 0W-20; bleed. Do not treat a housing seep as a head until the external path is ruled out. |

### Example G — CX-90 / CX-60: 8-speed harsh / flare

| Field | Detail |
|---|---|
| **Vehicles** | MY2023+ CX-60 / CX-70 / CX-90 8-speed |
| **Symptoms** | Bang on 1–2 or into Drive; flare on kickdown; shudder leaving a stop |
| **Diagnosis** | 1) ATF level and spec (this is not Skyactiv-Drive 6AT fluid). 2) MDARS adapts and clutch pressure. 3) Software campaigns (common on this family). 4) Mounts vs internal slip. |
| **Repair** | Genuine fluid; TCM/PCM update; adaptive relearn. Mechatronics or unit only with metal or failed pressure after software. |

### Example H — Mazda3 / CX-30: i-stop unavailable

| Field | Detail |
|---|---|
| **Vehicles** | MY2020+ Mazda3 / CX-30 with i-stop |
| **Symptoms** | Auto-stop greyed; battery warning; i-stop never ready after a short trip |
| **Diagnosis** | 1) Load-test 12 V and battery sensor. 2) Hood/brake/clutch or inhibitor inputs. 3) ECT and climate inhibits. 4) MDARS i-stop permission flags. |
| **Repair** | Mazda-spec battery and sensor registration; repair the inhibit (switch, charge, software). A random parts-store battery without registration keeps i-stop dead. |

### Example I — CX-50 2.5T: overheat / thermostat

| Field | Detail |
|---|---|
| **Vehicles** | MY2023+ CX-50 2.5T |
| **Symptoms** | Temp climb in traffic; P0128; weak heat; fans early |
| **Diagnosis** | 1) ECT vs actual IR. 2) Thermostat housing leak. 3) Fan command. 4) Coolant spec and air after prior work. |
| **Repair** | Thermostat/housing; bleed; verify a full-temp drive cycle. Check for TSBs before a water pump or head guess. |

### Example J — i-Activsense camera after windshield (Mazda3 / CX-5 / CX-90)

| Field | Detail |
|---|---|
| **Vehicles** | MY2020+ with forward camera (radar-after-bumper is Example C) |
| **Symptoms** | SCBS/LAS unavailable after glass; phantom lane pull; camera obstruction with a clear screen |
| **Diagnosis** | 1) OEM glass and bracket. 2) MDARS camera aiming incomplete. 3) Moisture at the camera. 4) 12 V / steering-angle after a battery job. |
| **Repair** | Mazda-approved windshield; static/dynamic camera calibration; road-test i-Activsense. Aftermarket glass without the mount will not hold aim. |

### PHEV Example 4 — CX-60 PHEV: no AC charge / EV locked out

| Field | Detail |
|---|---|
| **Vehicles** | MY2022+ CX-60 PHEV (Europe/Japan and related markets) |
| **Symptoms** | Wallbox error; EV button grey; ICE always running |
| **Diagnosis** | 1) Charge lid/latch and control-pilot. 2) OBC DTCs. 3) HV battery temp permit and 12 V. 4) Forced-run / fuel-maintenance flags on MDARS. |
| **Repair** | Inlet or OBC; HV battery coolant loop; software; charge to EV full then an EV drive. Engine loop ≠ PHEV electronics loop. |

### PHEV Example 5 — CX-80 PHEV: rear motor / AWD disabled

| Field | Detail |
|---|---|
| **Vehicles** | MY2024+ CX-80 PHEV (and CX-60 AWD PHEV) |
| **Symptoms** | FWD-only; AWD message; rear inverter DTCs; noise from rear |
| **Diagnosis** | 1) Four wheel speeds (tire mix mimics a dead rear motor). 2) Rear MCU / HVIL. 3) Rear-unit oil. 4) Isolation if wet. |
| **Repair** | Match tires; connector/HVIL; rear drive unit; MDARS clear and AWD road test. |

### PHEV Example 6 — CX-90 PHEV: HV coolant / inverter over-temp

| Field | Detail |
|---|---|
| **Vehicles** | MY2024+ CX-90 / CX-70 PHEV |
| **Symptoms** | Power limit; PHEV warning; fans high; EV mode drops in traffic |
| **Diagnosis** | 1) Identify engine vs HV electronics vs battery loops. 2) Pump active test. 3) Level and mixture. 4) Air pockets after service. |
| **Repair** | Pump/hoses; vacuum-fill the correct Mazda EV coolant; bleed; heat-soak drive. Do not top the HV loop from the engine bottle. |

### PHEV Example 7 — CX-60 / CX-90 PHEV: 12 V drain

| Field | Detail |
|---|---|
| **Vehicles** | MY2022+ CX-60 / CX-80 / CX-90 PHEV |
| **Symptoms** | Morning no Ready / no charge; jump clears hybrid warnings; modules offline |
| **Diagnosis** | 1) Load-test 12 V. 2) Sleep current. 3) DC-DC with HV awake. 4) Connected infotainment / aftermarket USB. |
| **Repair** | Mazda-spec AGM and registration; TCU/CMU software; verify DC-DC. Weak LV first—do not replace the OBC on jump-clear codes. |

### PHEV Example 8 — CX-90 PHEV: charge lid / latch

| Field | Detail |
|---|---|
| **Vehicles** | MY2024+ CX-90 / CX-70 PHEV |
| **Symptoms** | Lid won’t open or won’t latch; charge never starts; cable locked after a session |
| **Diagnosis** | 1) Manual release. 2) Latch motor and waterproof connector. 3) Water in the port. 4) Pilot only after the latch reports locked. |
| **Repair** | Latch/inlet; dry the port; then OBC if CP is dead with a known-good EVSE. |

### BEV Example 5 — MX-30: 12 V / connectivity drain

| Field | Detail |
|---|---|
| **Vehicles** | MY2021+ MX-30 |
| **Symptoms** | Dead 12 V after a weekend; no Ready until jump; screen reboot history |
| **Diagnosis** | 1) Sleep current after 10–45 min. 2) Connectivity master / DCM. 3) DC-DC when awake. 4) Aftermarket always-hot USB. |
| **Repair** | Software; repair stuck-awake module; Mazda-spec 12 V; confirm DC-DC current. |

### BEV Example 6 — MX-30: DC charge abort (CCS markets)

| Field | Detail |
|---|---|
| **Vehicles** | MY2021+ MX-30 with DC |
| **Symptoms** | DC starts then stops; AC completes; thermal or handshake DTCs |
| **Diagnosis** | 1) Inlet moisture and latch. 2) Isolation. 3) Battery-loop pump during DC. 4) Charge ECU vs BMS DTCs. |
| **Repair** | Dry/replace inlet; thermal service; isolation repair; logged DC curve. Do not chase the pack first on a wet inlet. |

### BEV Example 7 — MX-30: regen blending / i-Activsense events

| Field | Detail |
|---|---|
| **Vehicles** | MY2021+ MX-30 |
| **Symptoms** | Grabby regen on wet roads; ABS flicker; SCBS unavailable after a brake job |
| **Diagnosis** | 1) Four wheel speeds. 2) Brake software and pad compound. 3) i-Activsense calibration if glass/bumper disturbed. 4) Caliper slides / EPB service mode. |
| **Repair** | Wheel-speed cleanliness; matching tires; brake software; radar/camera aim if needed; road-test regen and SCBS. |

### BEV Example 8 — MX-30: charge-port moisture / isolation (not the compressor-first path)

| Field | Detail |
|---|---|
| **Vehicles** | MY2021+ MX-30 |
| **Symptoms** | Isolation after rain at the port; charge fail; reduced power that improves after drying |
| **Diagnosis** | 1) Inspect port drain and seals before opening HV loops. 2) Isolation kΩ wet vs dry. 3) Section inlet/OBC before PTC/compressor/pack. 4) 12 V. |
| **Repair** | Dry/reseal inlet; replace latch/inlet if kΩ stays low; only then sectionalize cabin HV components; isolation retest after a water-spray on the port (OEM method). |

---

## 5. Quick triage

| Symptom | First check | Next |
|---|---|---|
| Load misfire | Plugs/coils | Carbon/fuel |
| PHEV no EV | Charge permit flags | OBC/battery |
| MX-30 slow charge | Thermal pumps | Valve/coolant |
| Phantom braking | Radar aim | Calibration |
| AWD hop | Tire sizes | Coupling fluid |

---

## 6. Return-to-service

- [ ] MDARS zero DTCs  
- [ ] PHEV/BEV charge verification  
- [ ] i-Activsense calibrations  
- [ ] Correct Skyactiv oil viscosity documented  

---

*Confirm with VIN-specific Mazda SI.*
