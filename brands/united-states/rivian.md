# Rivian — Repair Guide (MY2020+)

**Region focus:** United States  
**Vehicles:** R1T, R1S (passenger/lifestyle EV)  
**Diagnostics:** Rivian service tools / Service Mode equivalents via service network  
**Traits:** Large HV pack, quad or dual motors, air suspension, robust DC-DC/LV dependence

---

## 1. Model overview (2020+)

| Model | Notes |
|---|---|
| R1T | Electric adventure truck used as passenger vehicle |
| R1S | Three-row BEV SUV |

---

## 2. Body / LV / chassis examples

### Example A — LV brownout cascading faults

| Field | Detail |
|---|---|
| **Symptoms** | Suspension warnings; drive mode limited; charge interruptions; random module drops |
| **Root cause pattern** | Weak LV or DC-DC; high accessory load camping; sleep drain |
| **Diagnosis** | Support LV; measure DC-DC when HV awake; parasitic when asleep; review campaign software |
| **Repair** | Replace LV battery; repair DC-DC; update ECUs; remove always-on aftermarket loads |

### Example B — Air suspension won’t level / compressor timeout

| Field | Detail |
|---|---|
| **Symptoms** | Lean stance; compressor hot; ride height errors |
| **Causes** | Leak at bags/lines; wet dryer; height sensor; compressor failure |
| **Diagnosis** | Leak-down overnight; listen corners; height sensor voltages; dryer saturation |
| **Repair** | Fix leaks; replace dryer/compressor; calibrate ride height; torque links |

### Example C — Door / gear tunnel / powered tonneau faults (R1T)

| Field | Detail |
|---|---|
| **Symptoms** | Latch errors; tonneau reverse; water intrusion electrics |
| **Repair** | Latch motors; drain paths; harness chafe at hinges |

### Example D — Alignment / tire wear from height offsets

| Field | Detail |
|---|---|
| **Symptoms** | Inner shoulder wear; pull |
| **Repair** | Confirm all-corner height first; then alignment at specified mode/height |

### Example E — Glass / ADAS camera after windshield

| Field | Detail |
|---|---|
| **Symptoms** | Driver+ features unavailable |
| **Repair** | Rivian-spec glass; camera recal drives |

---

## 3. BEV HV — detailed examples

### BEV Example 1 — Isolation fault / reduced power after water

| Item | Detail |
|---|---|
| **Symptoms** | Propulsion limited; isolation alerts; especially after deep water/mud |
| **Troubleshooting** | 1) LV stable. 2) Isolation reading. 3) Inspect underbody HV connectors, pack seams, charge port. 4) Section heaters/compressors/drive inverters. |
| **Repair procedure** | Dry & replace contaminated connectors → repair pack or thermal components → coolant coupler check → isolation retest → AC/DC charge → loaded hill drive |

---

### BEV Example 2 — Thermal derate on trail / repeated climbs

| Item | Detail |
|---|---|
| **Symptoms** | Power fades climbing; battery or drive unit temps high |
| **Diagnosis** | Pump operation; grille/radiator mud packing; coolant level; software |
| **Repair** | Clean exchangers; pumps/valves; coolant service; educate on drive mode thermal limits |

---

### BEV Example 3 — Drive inverter / motor noise or harshness

| Item | Detail |
|---|---|
| **Symptoms** | Corner-specific whine; click on regen; vibration under torque |
| **Differentiate** | Hub, half-shaft, tire, motor |
| **Repair** | Corner drive unit; axle; balance tires; software torque smoothing updates |

---

### BEV Example 4 — Charge fail (AC) at camp / EVSE

| Item | Detail |
|---|---|
| **Symptoms** | Portable EVSE errors; J1772/CCS handshake fail |
| **Causes** | Adapter heat; pilot; charge port; OBC; site GFCI |
| **Repair** | Port/OBC; software; verify on commercial AC pedestal |

---

### BEV Example 5 — DC fast charge aborts mid-session

| Item | Detail |
|---|---|
| **Symptoms** | Starts strong then drops to 0; isolation or cell ΔV |
| **Repair** | Thermal preconditioning check; BMS; pack modules; inlet pins; coolant flow |

---

### BEV Example 6 — Gear guardian / park pawl / brake hold interactions

| Item | Detail |
|---|---|
| **Symptoms** | Won’t release Park; rollback feel |
| **Repair** | EPB; shifter module; brake switch; software; caliper seize check |

---

### BEV Example 7 — HVIL open after service panel work

| Item | Detail |
|---|---|
| **Symptoms** | No Ready after underbody service |
| **Repair** | Reseat HVIL connectors; inspect bent pins; clear interlock DTCs |

---

## 4. Camping / accessory-related real faults

| Scenario | What fails | Fix |
|---|---|---|
| Multi-day camp with cabin climate | LV drain, thermal load | Manage Camp Mode; verify DC-DC |
| Powered outlets overloaded | Inverter trip, isolation | Load management; inverter module |
| Mud packed radiators | Instant derate | Clean carefully without fin damage |

---

## Additional MY2020+ field examples

### BEV Example 8 — LV brownout after Camp Mode / accessory load

| Field | Detail |
|---|---|
| **Vehicles** | R1T, R1S |
| **Symptoms** | Suspension, drive-mode, and charge warnings together; modules drop; morning brick after multi-day camp |
| **Diagnosis** | 1) Support LV before chasing every warning. 2) Resting LV and DC-DC output with HV awake. 3) Sleep current: Camp Mode, cabin climate, always-on USB, aftermarket fridge. 4) Campaign software for DC-DC/LV. 5) Parasitic with Camp off to isolate the load. |
| **Repair** | Replace LV; repair DC-DC; update ECUs; remove always-on aftermarket loads; overnight hold with Camp off, then a Camp-Mode soak test. |

### BEV Example 9 — Air suspension lean after trail / compressor timeout

| Field | Detail |
|---|---|
| **Vehicles** | R1T, R1S |
| **Symptoms** | Lean stance after rocks or deep ruts; compressor hot; ride-height errors; inner tire wear later |
| **Diagnosis** | 1) Overnight leak-down per corner. 2) Bags/lines vs wet dryer vs compressor. 3) Height-sensor voltages after an impact. 4) Confirm all-corner height **before** alignment. 5) Separate from HV derate—a lean corner is not a pack fault. |
| **Repair** | Fix leaks; dryer/compressor; calibrate ride height in the specified mode; torque links; alignment at that height. |

### BEV Example 10 — Isolation after water / mud packing on HV connectors

| Field | Detail |
|---|---|
| **Vehicles** | R1T/R1S after fords, beach, or underbody spray |
| **Symptoms** | Propulsion limited; isolation alerts; charge refused; worse after a wet trail |
| **Diagnosis** | 1) Stable LV. 2) Isolation kΩ. 3) Underbody HV connectors, pack seams, charge port. 4) Section heaters, compressor, drive inverters. 5) Mud in radiator is thermal, not isolation—do not confuse the two. |
| **Repair** | Dry and replace contaminated connectors; repair pack or thermal parts as found; coolant coupler check; isolation retest; AC/DC charge; loaded hill drive. |

### BEV Example 11 — Thermal derate on repeated climbs / packed exchangers

| Field | Detail |
|---|---|
| **Vehicles** | R1T/R1S in mountains or desert trails |
| **Symptoms** | Power fades climbing; battery or drive-unit temps high; fans screaming; mud-packed stack |
| **Diagnosis** | 1) Pump operation vs command. 2) Grille/radiator mud packing (fins). 3) Coolant level. 4) Which loop is hot (pack vs drive unit). 5) Software / drive-mode thermal limits vs a failed pump. |
| **Repair** | Clean exchangers without folding fins; pumps/valves; coolant service; educate on drive-mode thermal limits; confirm a second climb without fade. |

### BEV Example 12 — HVIL open after underbody / service-panel work

| Field | Detail |
|---|---|
| **Vehicles** | R1T/R1S after shield, motor, or pack-adjacent service |
| **Symptoms** | No Ready after panels went back on; interlock DTCs; car drove in |
| **Diagnosis** | 1) Which HVIL loop is open (front, pack, charge, A/C). 2) Bent pins on reseated connectors. 3) Shield fasteners pinching a harness. 4) LV brownout mimicking HVIL. 5) Crash/pyro flags if the visit was collision-related. |
| **Repair** | Reseat HVIL connectors; repair bent pins; clear interlock DTCs; isolation retest; Ready + charge verify. |

### BEV Example 13 — Camp AC / portable EVSE handshake fail

| Field | Detail |
|---|---|
| **Vehicles** | R1T/R1S on travel EVSE, adapters, or campground pedestals |
| **Symptoms** | Portable EVSE errors; J1772/CCS handshake fail; GFCI trips; adapter hot |
| **Diagnosis** | 1) Site GFCI and known-good pedestal before condemning the car. 2) Pilot/proximity at the port. 3) Charge-port vs OBC DTCs. 4) Adapter heat and pin condition. 5) Isolation only when the handle is plugged. |
| **Repair** | Port/OBC/software as named; verify on a commercial AC pedestal; customer education on GFCI and adapter ratings. |

### BEV Example 14 — DC fast charge abort mid-session (thermal / ΔV)

| Field | Detail |
|---|---|
| **Vehicles** | R1T/R1S on CCS |
| **Symptoms** | Starts strong then 0 kW; isolation or cell ΔV; inlet overtemp |
| **Diagnosis** | 1) Preconditioning actually reached pack temp. 2) Coolant flow. 3) Cell ΔV vs isolation vs inlet. 4) Pins vs a second stall. 5) BMS software campaigns. |
| **Repair** | Thermal path first; BMS/pack modules if ΔV; inlet pins; AC then DC verification with recorded kW. |

### BEV Example 15 — Quad-motor: one corner silent / harshness

| Field | Detail |
|---|---|
| **Vehicles** | Quad-motor R1T/R1S; dual-motor similar on the live axle |
| **Symptoms** | Corner-specific whine; click on regen; vibration under torque; one motor not contributing |
| **Diagnosis** | 1) Road-test isolate corner vs hub vs half-shaft vs tire. 2) Inverter DTCs for that corner. 3) Isolation/coolant to that inverter. 4) Tire size mix (EV noise path). 5) Software torque-smoothing campaigns. |
| **Repair** | Corner drive unit or axle as indicated; balance tires; software; load-test that corner. |

### BEV Example 16 — Gear tunnel / powered tonneau water into electrics (R1T)

| Field | Detail |
|---|---|
| **Vehicles** | R1T |
| **Symptoms** | Latch errors; tonneau reverse; random LV/body DTCs after rain in the gear tunnel |
| **Diagnosis** | 1) Drain paths and standing water. 2) Harness chafe at hinges. 3) Latch motor vs water in the connector. 4) LV brownout secondary to wet modules. 5) Tonneau calibration after R&R. |
| **Repair** | Drain paths; dry/replace connectors; latch motors; harness repair; tonneau/latch calibration. |

### BEV Example 17 — Incomplete software / Service Mode: features missing

| Field | Detail |
|---|---|
| **Vehicles** | R1T/R1S after a failed infotainment or vehicle update |
| **Symptoms** | Drive modes missing; air-ride stuck; charge inoperative; U-codes; car was normal before the update |
| **Diagnosis** | 1) Solid LV—starved LV aborts flashes. 2) Which ECUs finished. 3) Do not trail-drive mid-config. 4) Distinguish incomplete software from a real HVIL/isolation fault. 5) Aftermarket devices on the vehicle network. |
| **Repair** | Complete Rivian flash on supported LV; replace only the module the procedure names; confirm Ready, heights, and AC/DC. |

### BEV Example 18 — Driver+ / cameras after windshield

| Field | Detail |
|---|---|
| **Vehicles** | R1T/R1S |
| **Symptoms** | Driver+ unavailable; camera faults after glass |
| **Diagnosis** | 1) Rivian-spec windshield. 2) Camera image and aim. 3) Calibration drives incomplete. 4) 12 V during cal. 5) Fascia cameras if the bumper was off. |
| **Repair** | Correct glass; camera R&R as needed; recal drives; verify Driver+ features recover. |

### BEV Example 19 — Park pawl / EPB / brake-hold will not release

| Field | Detail |
|---|---|
| **Vehicles** | R1T/R1S |
| **Symptoms** | Will not leave Park; rollback feel; brake-hold stuck; caliper drag after a trail |
| **Diagnosis** | 1) Brake-switch and shifter module. 2) EPB apply/release current. 3) Rear caliper seize vs software. 4) LV brownout during the shift. 5) Gear Guardian / hill-hold interactions. |
| **Repair** | EPB/shifter/brake-switch/software; free seized calipers; confirm Park release on a grade. |

### BEV Example 20 — Powered outlets / camp inverter isolation trip

| Field | Detail |
|---|---|
| **Vehicles** | R1T/R1S with bed or cabin outlets |
| **Symptoms** | Inverter trip when a compressor fridge or tools plug in; isolation message only with outlets on |
| **Diagnosis** | 1) Isolation with outlets off vs on. 2) Load type and GFCI. 3) Inverter module DTCs. 4) Wiring chafe in the bed. 5) LV collapse from the same camp setup. |
| **Repair** | Load management; inverter module/wiring; isolation retest with a known-good load; do not keep camping into an isolation flag. |

### BEV Example 21 — After collision: pack crush / HVIL / air suspension

| Field | Detail |
|---|---|
| **Vehicles** | R1T/R1S after underbody or frontal impact |
| **Symptoms** | No Ready; isolation; pyro/HVIL; lean stance; cameras out |
| **Diagnosis** | 1) Full HV + restraint checklist. 2) Pack puncture vs shield scrape. 3) HVIL through repaired harnesses. 4) Air-ride leaks from torn lines. 5) Camera/radar after fascia. |
| **Repair** | Pack/shield/HVIL as required; ride-height cal; ADAS recals; isolation; AC/DC; loaded drive only after lockout is reversed. |

---

## 5. Quick triage

| Symptom | First check | Next |
|---|---|---|
| Many unrelated warnings | LV / DC-DC | Then individual systems |
| Lean stance | Air leaks + dryer | Compressor + calibration |
| Reduced power wet | Isolation | Connectors/pack |
| Charge abort DC | Thermal + ΔV | BMS/pack/port |
| Whine one corner | Road test isolate | Drive unit vs hub |

---

## 6. Return-to-service

- [ ] Ride height calibrated in correct mode  
- [ ] Isolation within Rivian spec  
- [ ] AC + DC charge OK  
- [ ] No compressor timeout after overnight park  
- [ ] ADAS features recovering/calibrated  

---

*Rivian service information and torque/height specs are model-year sensitive—confirm for VIN.*
