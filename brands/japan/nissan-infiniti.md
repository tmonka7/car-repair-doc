# Nissan / Infiniti — Repair Guide (MY2020+)

**Region focus:** Japan-origin  
**Scan tools:** CONSULT-III plus / CONSULT-IV  
**EV lines:** Leaf (updates), Ariya  
**Fluids:** Use exact CVT fluid specification (NS-3 or current)—wrong fluid destroys CVTs

---

## 1. 2020+ model map

| Model | Powertrains |
|---|---|
| Rogue (T33) | ICE + mild systems markets; some hybrid markets |
| Altima / Sentra / Versa | ICE + CVT |
| Pathfinder | ICE |
| Ariya | BEV |
| Leaf | BEV |
| Infiniti QX50 / QX55 / QX60 | ICE (VC-Turbo on QX50) |

---

## 2. ICE / CVT examples

### Example A — Rogue/Altima CVT shudder

| Field | Detail |
|---|---|
| **Symptoms** | Shudder 20–50 mph light throttle; flare on takeoff; CVT temp warning |
| **DTCs** | P17F0-class, ratio errors, pressure rationality (vary by TCM) |
| **Diagnosis** | Fluid color/smell (burnt = critical); CONSULT TCM ratio vs commanded; cooler flow; contamination magnet |
| **Repair** | If fluid dark with metal: CVT replacement often required. If early: fluid/filter+cooler flush with genuine fluid; valve body if SI directs; software update |

### Example B — VC-Turbo (QX50): oil consumption / rattling

| Field | Detail |
|---|---|
| **Symptoms** | Oil use between services; cold rattle; MIL P0011/P0014 family |
| **Diagnosis** | Consumption test; VCT solenoids; oil viscosity compliance |
| **Repair** | Follow Infiniti oil consumption and actuator campaigns; correct 0W-20/5W-30 per SI |

### Example C — Rogue: ProPILOT / camera blocked messages chronic

| Field | Detail |
|---|---|
| **Symptoms** | “Forward Driving Aids temporarily disabled” daily |
| **Causes** | Windshield distortion after cheap glass; camera bracket; calibration lost; wiring |
| **Repair** | OEM glass; static/dynamic target calibration with CONSULT |

### Example D — EPB / rear brake corrosion (salt regions)

| Field | Detail |
|---|---|
| **Symptoms** | Dragging, noise, EPB fault |
| **Repair** | EPB service mode; hardware; pins; torque-to-yield bolts as specified |

### Example E — Infiniti QX60: air-suspension / damper faults (if equipped)

| Field | Detail |
|---|---|
| **Symptoms** | Height uneven; compressor runs long |
| **Repair** | Leak-down test bags/lines; dryer; height sensor calibration |

---

## 3. BEV — Leaf (2020+ updates)

### BEV Example 1 — No Ready / contactor click then fail

| Item | Detail |
|---|---|
| **Symptoms** | Goose-neck charge OK or not; Ready fails; clicking under seat |
| **Causes** | 12 V weak; main contactor; HV battery isolation; service disconnect; pyro/ related safety |
| **Troubleshooting** | 1) 12 V >12.4 V. 2) CONSULT Li-ion battery isolation. 3) Contactor control PID. 4) Water under rear pack. |
| **Repair** | Stabilize LV → HV lockout → junction box/contactors or pack per isolation section → clear → Ready + drive + charge test |

### BEV Example 2 — Rapid capacity loss / turtle lamp early

| Item | Detail |
|---|---|
| **Symptoms** | GOM range collapse; capacity bars missing; heat after QC |
| **Diagnosis** | AHr capacity screen; cell pair ΔV; cooling fan paths (air-cooled Leaf) |
| **Repair** | Pack or modules if available; ensure cabin air path to pack clear; avoid repeated back-to-back QC without cool-down |

### BEV Example 3 — Quick charge unavailable / P3200-class

| Item | Detail |
|---|---|
| **Symptoms** | CHAdeMO fails handshake |
| **Repair** | Charge port; lock; EV-CAN wiring; battery controller software |

---

## 4. BEV — Ariya detailed examples

### BEV Example 1 — Isolation fault after rain

| Item | Detail |
|---|---|
| **Symptoms** | Reduced power; EV system warning; isolation DTC |
| **Troubleshooting** | Section isolation: OBC, PTC heater, A/C compressor, pack, e-axles. Inspect underbody HV connectors and charge port drain. |
| **Repair procedure** | Dry/replace connectors → replace leaking HV PTC or compressor → pack if module isolation fails → coolant check on e-axle loops → isolation retest |

### BEV Example 2 — e-AWD rear motor disabled

| Item | Detail |
|---|---|
| **Symptoms** | FWD only message; rear inverter DTCs; noise from rear |
| **Causes** | Rear e-axle oil leak/low; HVIL; inverter moisture; wheel-speed faults |
| **Repair** | Oil level/type; HVIL continuity; rear drive unit replacement; calibration |

### BEV Example 3 — Charge door / electronic latch

| Item | Detail |
|---|---|
| **Symptoms** | Door won’t open or won’t latch for charge |
| **Repair** | Manual release; actuator; waterproof connector repair |

### BEV Example 4 — Heat pump weak heat + range loss

| Item | Detail |
|---|---|
| **Symptoms** | Cabin cold; battery stays cold; DC charge slow in winter |
| **Diagnosis** | Heat pump pressures; valve positions; refrigerant fill; PTC assist DTCs |
| **Repair** | EV HVAC certified recovery/recharge; valve block; PTC if commanded but no current |

### BEV Example 5 — 12 V lithium or AGM drain with telematics

| Item | Detail |
|---|---|
| **Symptoms** | Morning no-start Ready |
| **Repair** | Sleep draw; TCU update; DC-DC verify when awake |

---

## Additional field examples

### Example F — Rogue (T33) KR15 1.5T: oil use / cold rattle

| Field | Detail |
|---|---|
| **Vehicles** | MY2021+ Rogue KR15DDT 1.5T |
| **Symptoms** | Oil use between services; cold chain/rattle; P0011-family; misfire on short trips |
| **Diagnosis** | 1) Consumption test per ESM. 2) Oil level and viscosity (0W-20 compliance). 3) VCT solenoids and cam correlation. 4) PCV / dilution sniff if short-trip. |
| **Repair** | Follow Nissan oil-consumption and timing-chain campaigns; correct oil; solenoid or chain kit only with evidence. Do not stretch the interval on this 1.5T. |

### Example G — Pathfinder: 9-speed harsh / flare

| Field | Detail |
|---|---|
| **Vehicles** | MY2022+ Pathfinder 9-speed |
| **Symptoms** | Bang into 1–2 or 2–3; flare on kickdown; delayed Drive when hot |
| **Diagnosis** | 1) ATF level hot. 2) CONSULT clutch pressure and adapts. 3) Software campaign. 4) Cooler flow if burnt. |
| **Repair** | Genuine ATF/filter; TCM update; adaptive clear and relearn. Valve body or unit if metal or pressure fails after fluid/software. |

### Example H — QX60: transfer / AWD binding after tire mismatch

| Field | Detail |
|---|---|
| **Vehicles** | MY2022+ Infiniti QX60 |
| **Symptoms** | Hop on dry tight turns; transfer noise; AWD lamp |
| **Diagnosis** | 1) Four tire circumferences (most common). 2) Transfer and rear-diff fluid condition. 3) CONSULT AWD clutch command vs actual. 4) Wheel-speed correlation. |
| **Repair** | Match tires first; DiaQueen/Nissan transfer fluid as specified; clutch or transfer only if damaged after mismatch. |

### HEV Example 1 — e-Power: generator engine fails, no propulsion

| Field | Detail |
|---|---|
| **Vehicles** | MY2020+ Note/Kicks/Qashqai/X-Trail e-Power (markets) |
| **Symptoms** | EV drive dies as pack SOC falls; engine cranks or hunts but will not generate; turtle lamp |
| **Diagnosis** | 1) CONSULT generation current vs engine RPM. 2) Fuel/ignition on the generator engine. 3) Inverter/generator DTCs (this is not a conventional CVT). 4) 12 V and HV isolation. |
| **Repair** | Fuel/ignition/engine per SI; then generator/inverter pinpoint; confirm kW into the pack on a road test. Do not service it as a belt-alternator car. |

### HEV Example 2 — e-Power: inverter coolant / power limit

| Field | Detail |
|---|---|
| **Vehicles** | MY2020+ e-Power |
| **Symptoms** | Power limit; fans high; inverter temp DTCs; engine may run continuously |
| **Diagnosis** | 1) Identify engine loop vs inverter loop. 2) Pump active test and coolant level. 3) Air pockets after prior service. 4) Debris in the radiator stack. |
| **Repair** | Pump/hoses; vacuum-fill the inverter loop with the specified coolant; bleed; monitor temps. Mixing loops or the wrong coolant will repeat the derate. |

### HEV Example 3 — e-Power: 12 V / DC-DC morning no-Ready

| Field | Detail |
|---|---|
| **Vehicles** | MY2020+ e-Power |
| **Symptoms** | Dead 12 V after overnight; hybrid warning that clears after a jump; modules offline |
| **Diagnosis** | 1) Load-test 12 V. 2) Sleep draw after 10–45 min. 3) DC-DC output with Ready on. 4) TCU/telematics and aftermarket USB. |
| **Repair** | Nissan-spec 12 V; TCU update; verify DC-DC charge current; repair a stuck-awake module. Weak LV first—do not replace the traction inverter on jump-clear codes. |

### HEV Example 4 — e-Power: harsh generation / engine hunting

| Field | Detail |
|---|---|
| **Vehicles** | MY2020+ e-Power |
| **Symptoms** | Boom or surge when the engine starts to generate; worse with A/C or a low pack |
| **Diagnosis** | 1) Record generation request, SOC, and engine RPM. 2) Mounts. 3) Software campaigns for generation maps. 4) Fuel trim / misfire on the generator engine. |
| **Repair** | Mounts; PCM/inverter software; fix real misfire. Explain normal generation under load; escalate the transaxle only after mounts and fueling are clean. |

### BEV Example 6 — Leaf: PTC heater isolation after wet weather

| Field | Detail |
|---|---|
| **Vehicles** | MY2020+ Leaf |
| **Symptoms** | Reduced power after rain; isolation DTC; cabin heat dead; Ready may still work |
| **Diagnosis** | 1) CONSULT Li-ion isolation kΩ. 2) Section PTC heater vs compressor vs OBC vs pack. 3) Water under the rear pack (air-cooled). 4) 12 V >12.4 V. |
| **Repair** | HV lockout; replace leaking PTC or compressor; dry pack connectors; isolation retest; Ready + heat + charge test. Pack last unless module isolation fails. |

### BEV Example 7 — Leaf: 12 V drain / DC-DC not topping LV

| Field | Detail |
|---|---|
| **Vehicles** | MY2020+ Leaf |
| **Symptoms** | Morning no Ready; clicking under seat then fail; jump starts it |
| **Diagnosis** | 1) Resting 12 V and load test. 2) Sleep current. 3) DC-DC current with HV awake. 4) TCU / telematics keep-alive. |
| **Repair** | Replace/charge 12 V; TCU update; verify DC-DC; parasitic repair. Contactors and the pack are not the first parts on a jump-clear Leaf. |

### BEV Example 8 — Ariya: CCS DC handshake fail, AC OK

| Field | Detail |
|---|---|
| **Vehicles** | MY2023+ Ariya |
| **Symptoms** | DC session refuses or drops in seconds; AC Level 2 completes |
| **Diagnosis** | 1) Known-good DC pile. 2) Inlet latch/proximity and CCS pins. 3) CONSULT charge-path DTCs vs battery-temp permit. 4) Thermal pumps during the DC attempt. |
| **Repair** | Inlet/lock; EV-CAN; battery-controller software; thermal-loop service if derate. Confirm a logged DC kW curve before return. |

### BEV Example 9 — Ariya: e-axle coolant / thermal derate

| Field | Detail |
|---|---|
| **Vehicles** | MY2023+ Ariya (e-AWD included) |
| **Symptoms** | Power limit in heat or after repeated DC; inverter temp DTCs; rear motor may drop out |
| **Diagnosis** | 1) Separate e-axle/inverter loops from cabin/heat-pump. 2) Pump current and level. 3) Air after prior work. 4) CONSULT motor and inverter temps under load. |
| **Repair** | Pump/hoses; vacuum-fill the specified EV coolant; bleed; heat-soak road test plus a DC session if equipped. |

### BEV Example 10 — Ariya: OBC AC charge cuts out

| Field | Detail |
|---|---|
| **Vehicles** | MY2023+ Ariya |
| **Symptoms** | Home EVSE stops mid-session; OBC thermal or internal DTCs; DC may still work |
| **Diagnosis** | 1) Known-good EVSE and outlet. 2) OBC temp and coolant/air path. 3) Control-pilot stability. 4) Isolation if the OBC leaked to the bus. |
| **Repair** | Cool the OBC path; software; OBC replacement under HV lockout; isolation retest; complete AC charge then a drive. |

### BEV Example 11 — Leaf: water under rear pack / isolation

| Field | Detail |
|---|---|
| **Vehicles** | MY2020+ Leaf (air-cooled pack) |
| **Symptoms** | Isolation after standing water or a flooded garage; Ready fail; corrosion smell at rear |
| **Diagnosis** | 1) Inspect under-pack trays and cabin air path to the pack. 2) Isolation sectional. 3) Contactor control PIDs. 4) Moisture at service disconnect / junction. |
| **Repair** | Dry and repair connectors; junction box/contactors or pack per isolation section; clear cabin debris from pack ducts; Ready + drive + charge. |

---

## 5. Hybrid notes (select markets Rogue Hybrid etc.)

| Symptom | Approach |
|---|---|
| Hybrid warning + CVT-like feel | Scan hybrid + TCM; do not treat as conventional CVT only |
| Coolant loss | Identify engine vs inverter loops |
| Vibration on mode change | Mounts + software |

---

## 6. Quick triage

| Symptom | First check | Likely fix |
|---|---|---|
| CVT shudder | Fluid condition | Fluid service or CVT R&R |
| Leaf no Ready | 12 V + isolation | Contactors/pack |
| Ariya reduced power wet | Isolation sectional | Connector/PTC/compressor |
| QC fail | Port + CAN | Port/BMS |
| ADAS disabled | Glass + cal | Camera calibration |

---

## 7. Return-to-service

- [ ] Correct CVT/e-axle fluids documented  
- [ ] Isolation within Leaf/Ariya OEM spec  
- [ ] CONSULT self-diag zero  
- [ ] Charge AC and QC if equipped  
- [ ] ProPILOT calibration if disturbed  

---

*Use VIN-specific Nissan/Infiniti ESM and HV manuals.*
