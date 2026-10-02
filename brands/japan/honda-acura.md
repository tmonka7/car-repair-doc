# Honda / Acura — Repair Guide (MY2020+)

**Region focus:** Japan-origin (global production)  
**Scan tools:** HDS / i-HDS  
**Hybrid architecture:** e:HEV (i-MMD two-motor) on many 2020+ models  
**Critical note:** Weak 12 V batteries cause cascading “Power System” and hybrid DTCs—always test LV first

---

## 1. 2020+ model map

| Model | Years (approx.) | Powertrains |
|---|---|---|
| Civic (11th gen) | 2022+ | ICE 2.0/1.5T, e:HEV (markets) |
| Accord | 2020+ / 11th gen later | ICE, e:HEV |
| CR-V | 2020+ / 6th gen | ICE, Hybrid, PHEV (markets) |
| HR-V | 2023+ | ICE |
| Acura Integra / MDX / RDX | 2020+ | ICE, MDX Type S, hybrids markets |
| Honda Prologue / Acura ZDX | later EV | BEV (GM Ultium-related) |

---

## 2. ICE / chassis examples

### Example A — 1.5T fuel dilution (Civic/CR-V/Accord family overlapping 2020+)

| Field | Detail |
|---|---|
| **Symptoms** | Hard cold start, fuel odor on dipstick, rising oil level, P030x, rattly cold knock |
| **Root causes** | Short-trip condensation; injector leak-down; thermostat stuck open; software fueling maps |
| **Diagnosis** | Measure oil level vs service; sniff/test oil for gasoline; fuel trims; cooling system temp PID vs actual |
| **Repair** | Oil/filter change; verify thermostat; injector test/replace; apply PCM updates; advise longer periodic drives |

### Example B — Civic 11th: ADAS / brake hold quirks after 12 V replace

| Field | Detail |
|---|---|
| **Symptoms** | Collision Mitigation unavailable; Auto Brake Hold greyed out |
| **Repair** | Use i-HDS to clear history; steering angle & yaw calibration; ensure battery sensor registered |

### Example C — Accord: A/C clutch or compressor HVAC codes in heat

| Field | Detail |
|---|---|
| **Symptoms** | Intermittent cool air; clutch cycling; high-side pressure spikes |
| **Repair** | Condenser debris; pressure sensor; compressor; expansion valve; correct PAG oil amount |

### Example D — CR-V: rear brake groan / EPB sticking

| Field | Detail |
|---|---|
| **Symptoms** | Groan leaving parking; EPB lamp; dragged rear rotors hot |
| **Repair** | Service mode for EPB; clean/ lubricate per Honda; replace EPB actuators if binding; new rear pads/rotors |

### Example E — Acura MDX: SHAWD noise on tight turns

| Field | Detail |
|---|---|
| **Symptoms** | Bind/hop in parking lots; fluid burnt smell |
| **Repair** | Rear differential fluid (correct Honda Dual Pump fluid); check tires matching; clutch pack wear diagnosis |

---

## 3. Hybrid e:HEV — detailed examples

### HEV Example 1 — “Power System” warning with healthy-looking hybrid battery

**Vehicles:** 2020+ CR-V Hybrid, Accord Hybrid, Civic e:HEV

| Item | Detail |
|---|---|
| **Symptoms** | Power System warning; Ready may fail; multiple U-codes + P0A7A / PCU codes |
| **Hidden root cause** | LV battery below ~12.2 V resting; poor ground; failed battery sensor |

**Troubleshooting**

1. Midtronic/load-test 12 V AGM before condemning PCU.
2. Measure voltage during Ready attempt at battery posts and underhood junctions.
3. Scan ALL modules—note modules offline only when LV dips.
4. Parasitic draw if repeat no-starts after overnight.

**Repair procedure**

1. Replace AGM with Honda-spec; register/BMS reset via i-HDS if prompted.
2. Clean grounds (battery tray, body, PCU ground).
3. Clear codes; if Power System returns with solid LV, proceed to PCU/motor pinpoint.
4. Never replace inverter first on low LV evidence.

---

### HEV Example 2 — P0A7A / motor generator performance + whine

| Item | Detail |
|---|---|
| **Symptoms** | Whine rising with vehicle speed; EV mode lost; limp |
| **Causes** | Resolver signal noise; motor bearing; PCU internal; contaminated coolant affecting PCU |

**Troubleshooting**

1. Scope resolver signals per Honda flowchart.
2. Check PCU coolant level and pump operation (separate from engine on many e:HEV).
3. Listen with chassis ear at transaxle vs PCU.
4. Review TSBs for software motor control updates.

**Repair**

HV lockout → repair resolver connector or replace motor/PCU per pinpoint → refill PCU coolant with vacuum method → i-HDS idle learn / replacement registration → road test EV and hybrid modes.

---

### HEV Example 3 — Harsh engine engagement (i-MMD clutch feel)

| Item | Detail |
|---|---|
| **Symptoms** | Bang or shudder when ICE couples; worse when cold or low SOC |
| **Causes** | Engine mounts; outdated PCM/PCU calibration; clutch control adaptation; rare transaxle issue |

**Troubleshooting**

1. Record video + freeze-frame of engagement speed/SOC.
2. Check mount condition (vacuum/hydraulic leaks).
3. Compare with known-good engagement RPM tables in SI.
4. Check for PCM updates.

**Repair**

Update software; replace mounts; perform clutch adaptive procedures if provided; escalate to transaxle only after mounts/software.

---

### HEV Example 4 — Hybrid cooling fan always on / PCU overheat

| Item | Detail |
|---|---|
| **Symptoms** | Fans high in traffic; PCU temp DTCs; power limit |
| **Diagnosis** | Pump active test; radiator stack debris; coolant mixture; air pockets |
| **Repair** | Flush/ refill PCU loop; replace pump; straighten condensers/radiators; apply bleed routine |

---

### HEV Example 5 — CR-V PHEV (markets): won’t charge / EV range missing

| Item | Detail |
|---|---|
| **Symptoms** | Charge indicator fails; EV button inoperative; ICE always on |
| **Causes** | Charge lid switch; OBC; pilot wiring; HV battery temperature permission; LV |
| **Repair** | Verify EVSE on known-good car; test CP voltage; OBC DTC flowchart; HV lockout for OBC replacement; confirm full AC charge then EV drive >5 km |

---

### HEV Example 6 — Unexpected ICE start in EV mode (customer perception)

| Item | Detail |
|---|---|
| **Symptoms** | “Hybrid broken—engine keeps starting” |
| **Often normal** | Cabin heat request, high speed, low SOC, steep grade, engine maintenance mode |
| **Diagnosis** | i-HDS data: heat request, SOC, ambient, EV inhibit flags |
| **Action** | Explain inhibit matrix; fix real faults only if inhibit flags stuck (ECT sensor, HVAC, SOC misread) |

---

## 4. BEV examples (Prologue / ZDX / Honda e markets)

### BEV Example 1 — Ultium-related propulsion reduced (Prologue)

| Item | Detail |
|---|---|
| **Symptoms** | Reduced propulsion; charge fault; isolation DTCs |
| **Approach** | Use GM-aligned Ultium diagnostics (GDS2/FDRS-like dealer process for this platform)—isolation sectionalize OBC, cabin heater, pack |
| **Repair** | HV disable → replace failed HV component → SPS/programming → thermal bleed → charge verification |

### BEV Example 2 — LV drain / phone-as-key modules awake

| Item | Detail |
|---|---|
| **Symptoms** | Dead battery after weekend |
| **Repair** | Sleep current graph; update BCM/TCU; disable aftermarket USB always-hot devices |

---

## Additional field examples

### Example F — Honda Sensing after windshield (Civic 11th / CR-V / Accord)

| Field | Detail |
|---|---|
| **Vehicles** | MY2020+ Civic, CR-V, Accord, Integra with Honda Sensing |
| **Symptoms** | Collision Mitigation unavailable; LKAS/ACC greyed; camera obstruction with a clear windshield |
| **Diagnosis** | 1) Confirm OEM glass and camera bracket. 2) i-HDS camera aiming history and static/dynamic cal status. 3) Inspect moisture in camera housing. 4) Verify 12 V and steering-angle sensor after a battery job. |
| **Repair** | Honda-approved windshield; static then dynamic aiming with i-HDS; clear history; road-test ACC and CMBS. Cheap glass without the correct mount will not hold calibration. |

### Example G — 1.5T never reaches temp / P0128 (Civic / CR-V / Accord)

| Field | Detail |
|---|---|
| **Vehicles** | MY2020+ 1.5T Earth Dreams (dilution already covered in Example A) |
| **Symptoms** | Heat slow; fans early; P0128; fuel trims rich when cold; oil dilution worse on short trips |
| **Diagnosis** | 1) ECT vs radiator outlet with an IR gun. 2) Thermostat housing leak (common on this family). 3) Cooling-fan command vs actual. 4) Confirm PCM updates for fueling. |
| **Repair** | Thermostat/housing kit per SI; bleed; oil/filter if diluted; verify ECT PID vs actual on a cold drive cycle. |

### Example H — HR-V / Civic: CVT judder on light throttle

| Field | Detail |
|---|---|
| **Vehicles** | MY2023+ HR-V; Civic ICE with Honda CVT |
| **Symptoms** | Shudder 20–50 mph light throttle; flare on takeoff; CVT temp warning in hills |
| **Diagnosis** | 1) Fluid color/smell (Honda HCF-2 or current spec only). 2) i-HDS ratio vs commanded. 3) Cooler flow and contamination magnet. 4) Tire size mix. |
| **Repair** | Early: fluid/filter and cooler flush with genuine fluid plus software. Burnt fluid with metal: CVT R&R. Do not use universal CVT fluid. |

### Example I — HondaLink / telematics 12 V drain

| Field | Detail |
|---|---|
| **Vehicles** | MY2020+ Honda/Acura with HondaLink or AcuraLink |
| **Symptoms** | Dead AGM after a weekend; modules awake; remote-start or app connected overnight |
| **Diagnosis** | 1) Load-test 12 V. 2) Sleep current after 10–45 min. 3) Pull TCU/telematics fuse and re-measure. 4) Aftermarket USB always-hot and dashcams. |
| **Repair** | TCU/BCM software; repair a stuck-awake module; relocate accessories to accessory power; Honda-spec AGM and battery-sensor registration. |

### Example J — Acura MDX: 10-speed harsh / flare

| Field | Detail |
|---|---|
| **Vehicles** | MY2022+ MDX (Type S similar path) |
| **Symptoms** | Bang 1–2 or 2–3; flare on kickdown; delayed engagement when hot |
| **Diagnosis** | 1) ATF level hot per SI (critical). 2) i-HDS clutch-pressure and adaptive values. 3) Software campaign check. 4) Cooler flow if burnt smell. |
| **Repair** | Fluid/filter with Honda ATF; TCM update; adaptive clear and relearn drive. Valve body or trans only if metal or pressure fails after fluid/software. |

### HEV Example 7 — e:HEV DC-DC not maintaining 12 V

| Field | Detail |
|---|---|
| **Vehicles** | MY2020+ CR-V Hybrid, Accord Hybrid, Civic e:HEV |
| **Symptoms** | Power System after overnight; 12 V in the 11s with HV still showing SOC; headlights dim in EV |
| **Diagnosis** | 1) Load-test AGM. 2) i-HDS DC-DC commanded vs actual with Ready on. 3) Battery sensor registration. 4) Grounds at PCU and battery tray. |
| **Repair** | Register/replace AGM; repair DC-DC or PCU per pinpoint (DC-DC is PCU-integrated on many e:HEV). Confirm ~14 V with Ready on before releasing. |

### HEV Example 8 — e:HEV IPU / pack cooling fan noisy or always on

| Field | Detail |
|---|---|
| **Vehicles** | MY2020+ e:HEV with underfloor or rear IPU |
| **Symptoms** | Rear-bay fan scream; EV mode lost in heat; pack temp DTCs; power limit |
| **Diagnosis** | 1) i-HDS pack inlet/outlet temps and fan duty. 2) Intake duct debris/leaves. 3) Fan current vs command. 4) Separate PCU-loop temps (do not confuse with pack air cooling). |
| **Repair** | Clean ducts; replace fan; software if fan maps updated; verify pack ΔT on a heat-soak drive. Do not condemn the pack for a blocked IPU intake. |

### HEV Example 9 — CR-V Hybrid AWD: rear motor disabled

| Field | Detail |
|---|---|
| **Vehicles** | MY2020+ CR-V Hybrid AWD (two-motor front + rear assist) |
| **Symptoms** | FWD-only feel; AWD/VSA messages; rear inverter or motor DTCs; noise from rear |
| **Diagnosis** | 1) Four wheel-speed PIDs (mismatched tires mimic a dead rear motor). 2) Rear MCU DTCs and HVIL. 3) Rear-unit oil level/type. 4) Isolation sectional if wet. |
| **Repair** | Match tires first; repair HVIL/connector; service or replace rear drive unit; i-HDS clear and road-test AWD on a split surface. |

### HEV Example 10 — e:HEV electric A/C compressor isolation

| Field | Detail |
|---|---|
| **Vehicles** | MY2020+ e:HEV and CR-V PHEV |
| **Symptoms** | Power System; isolation DTC; A/C dead in EV; ICE may still blow after engine start |
| **Diagnosis** | 1) Isolation kΩ with Honda HV process. 2) Section compressor vs PCU vs pack vs OBC (PHEV). 3) Dye/oil at compressor HV connector. 4) 12 V first—low LV throws isolation ghosts. |
| **Repair** | HV lockout; replace leaking electric compressor; correct POE oil amount; isolation retest dry; confirm cabin cool in EV with ICE off. |

### HEV Example 11 — e:HEV 12 V replaced without i-HDS registration

| Field | Detail |
|---|---|
| **Vehicles** | MY2020+ e:HEV / Acura hybrids with battery sensor |
| **Symptoms** | Charging-system or Power System lamp with a “new” battery; idle-stop/EV inhibit; random U-codes |
| **Diagnosis** | 1) Confirm AGM spec and sensor connector. 2) i-HDS battery registration / BMS reset status. 3) DC-DC output with Ready on. 4) Stored history in PCU from the old weak battery. |
| **Repair** | Honda-spec AGM; register with i-HDS; clear history; verify sensor current PID. Jumping or a parts-store battery without registration will not finish the job. |

### BEV Example 3 — Prologue / ZDX: AC charge fail / charge-port latch

| Field | Detail |
|---|---|
| **Vehicles** | Honda Prologue / Acura ZDX (Ultium) |
| **Symptoms** | Wallbox error; latch won’t lock; AC session starts then stops; DC may still work |
| **Diagnosis** | 1) Known-good EVSE. 2) Latch/proximity and control-pilot. 3) OBC DTCs vs battery-thermal permit. 4) Water in port and 12 V. |
| **Repair** | Latch/inlet; OBC per Ultium flowchart; SPS/programming; full AC charge then a drive. Use GM-aligned process for this platform—Honda HDS alone is not enough. |

### BEV Example 4 — Prologue AWD: one Ultium drive unit disabled

| Field | Detail |
|---|---|
| **Vehicles** | Prologue AWD / ZDX dual-motor |
| **Symptoms** | Reduced propulsion; FWD- or RWD-only; one inverter DTC; noise from one axle |
| **Diagnosis** | 1) Isolation sectional (OBC, cabin heater, compressor, each EDU, pack). 2) HVIL on the quiet axle. 3) EDU coolant loop and oil. 4) Wheel-speed correlation. |
| **Repair** | HV disable; repair HVIL or replace the failed EDU; coolant vacuum-fill; programming; road-test both axles. Do not flash the surviving motor first. |

### BEV Example 5 — Prologue / ZDX: isolation after rain (Ultium sectional)

| Field | Detail |
|---|---|
| **Vehicles** | MY later Prologue / ZDX |
| **Symptoms** | Propulsion reduced after rain or a wash; isolation DTCs; charge fault |
| **Diagnosis** | 1) Record isolation kΩ. 2) Section OBC, PTC/cabin heater, A/C compressor, pack, each drive unit. 3) Charge-port drain and underbody HV connectors. 4) Stabilize 12 V before condemning the pack. |
| **Repair** | Dry/replace connectors; replace the leaking HV heater or compressor; pack only if module isolation fails; thermal bleed; charge verification. |

---

## 5. Quick triage table

| Symptom | First check | Next |
|---|---|---|
| Power System warning | 12 V AGM load test | Grounds → PCU data |
| Harsh ICE couple | Mounts + software | Clutch adapts |
| Fuel smell in oil | Dilution test | Injectors/thermostat |
| Fan always on (hybrid) | PCU coolant/pump | Air-in-system |
| Charge fail PHEV | CP/pilot + lid switch | OBC |
| EPB groan | Service mode + slide pins | Actuator |

---

## 6. Return-to-service checklist

- [ ] 12 V registered / healthy  
- [ ] PCU + engine coolant levels  
- [ ] No Power System message after heat soak + cold start  
- [ ] Smooth EV→ICE transitions at multiple SOC  
- [ ] i-HDS DTCs cleared and do not return  
- [ ] ADAS calibrations if needed  

---

*Confirm procedures with VIN-specific Honda/Acura service information.*
