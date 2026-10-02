# Li Auto (Li Xiang) — Repair Guide (MY2020+)

**Region focus:** China  
**Architecture:** Extended-Range EV (EREV)—ICE range extender generates electricity; wheels driven electrically  
**Models:** Li One; L7 / L8 / L9; MEGA (BEV later); others  
**Critical failure mode:** Extender won’t start while HV SOC low → vehicle may become immovable when pack depletes

---

## 1. 2020+ model map

| Model | Type | Notes |
|---|---|---|
| Li One | EREV | Early generation |
| L7 / L8 / L9 | EREV | Family SUV flagships |
| MEGA | BEV MPV | Different playbook |
| Newer SSE/others | EREV/BEV | Confirm VIN |

---

## 2. Cabin / body / LV examples

### Example A — 12 V / smart cabin drain

| Field | Detail |
|---|---|
| **Symptoms** | No HV Ready; screens dark morning |
| **Repair** | Sleep draw; LV battery; DC-DC; aftermarket devices |

### Example B — Air suspension (L series) lean / compressor

| Field | Detail |
|---|---|
| **Symptoms** | Height faults; long compressor runs |
| **Repair** | Leaks; dryer; calibration |

### Example C — ADAS / lidar stack after front work

| Field | Detail |
|---|---|
| **Symptoms** | NOA unavailable |
| **Repair** | Lidar/camera calibration; bracket torque |

### Example D — Refrigerator / rear HVAC draining LV when parked

| Field | Detail |
|---|---|
| **Symptoms** | Owners leave cabin fridge on |
| **Repair** | Educate; check modes; LV test |

### Example E — Door soft-close water intrusion

| Field | Detail |
|---|---|
| **Symptoms** | Latch faults after rain |
| **Repair** | Drains; latch module |

---

## 3. EREV — detailed malfunction examples

### EREV Example 1 — Range extender will not start (critical)

| Item | Detail |
|---|---|
| **Symptoms** | SOC declining; extender never fires; warnings for range extender system; eventual stop |
| **Customer report** | “Ran out of battery even with fuel in tank” |

**Troubleshooting**

1. Confirm fuel level/quality and fuel pump operation.
2. Extender ECU DTCs (crank/cam, generator, exhaust, throttle).
3. Starter-generator engagement current.
4. HV generation path: contactors, inverter for generation.
5. Exhaust / EMAP / catalyst over-temp inhibits.
6. Software version vs known campaigns.

**Repair procedure**

1. Repair fuel/ignition/sensors as pinpointed.
2. HV lockout if generator/inverter service needed.
3. Replace starter-generator or extender assembly if required.
4. Clear inhibits; force extender run with dealer tool.
5. Verify generation current charging the pack.
6. Road test: deplete toward low SOC safely and confirm auto extender start.
7. Do not release vehicle without proven generation.

---

### EREV Example 2 — Extender starts but no effective charge (generation fault)

| Item | Detail |
|---|---|
| **Symptoms** | Engine runs; SOC still falls under load |
| **Causes** | Generator performance; inverter; BMS charge permit; belt/coupling (design-dependent); thermal derate |
| **Repair** | Generation path components; thermal system; BMS; verify kW into pack under highway load |

---

### EREV Example 3 — Harsh extender start / NVH complaint

| Item | Detail |
|---|---|
| **Symptoms** | Bang or drone when extender starts in EV silence |
| **Causes** | Mounts; start control software; misfire on first fires |
| **Repair** | Mounts; plugs; software; explain normal start events vs faulty |

---

### EREV Example 4 — Forced battery-only limp with fuel present

| Item | Detail |
|---|---|
| **Symptoms** | Extender locked out after fault; tortoise mode |
| **Repair** | Store DTCs first; repair root; run extender clearance procedure; full charge sustain test |

---

### EREV Example 5 — Winter: HV PTC / heat pump faults → range collapse

| Item | Detail |
|---|---|
| **Symptoms** | Cabin cold; huge SOC drop parked/idling climate; PTC codes |
| **Troubleshooting** | PTC current when commanded; heat pump valves; refrigerant; isolation if PTC leaks |
| **Repair procedure** | HV lockout → replace HV PTC or heat pump valve block → isolation retest → winter heat performance test |

---

### EREV Example 6 — Fuel system evaporative / filler interlocks

| Item | Detail |
|---|---|
| **Symptoms** | Can’t refuel; pressure faults; extender inhibits |
| **Repair** | Tank isolation valve; filler door; EVAP; software |

---

### EREV Example 7 — Coolant loops confused (engine extender vs battery)

| Item | Detail |
|---|---|
| **Symptoms** | Overheat extender; battery derate after independent shop “coolant service” |
| **Repair** | Map loops; correct chemistry; vacuum fill each; bleed |

---

## 4. MEGA / pure BEV notes

| Issue | Approach |
|---|---|
| Isolation / charge | Standard BEV sectional diagnosis |
| OBC/DC fail | Inlet + BMS + thermal |
| ADAS | Same lidar-careful calibration |

---

## Additional field examples

### EREV Example 8 — Extender cranks, fires, then aborts — no sustained generation kW

| Item | Detail |
|---|---|
| **Vehicles** | L7 / L8 / L9, Li One |
| **Symptoms** | Engine blips then dies; SOC keeps falling; owner hears “it started” |
| **Diagnosis** | 1. Live generation kW into the pack — rpm without current is a fail. 2. Generator / inverter DTCs. 3. BMS charge-permit and pack temp. 4. Exhaust / catalyst inhibit. 5. Software vs abort campaigns. |
| **Repair** | Repair generator / inverter / fuel / inhibits as pinpointed; force extender run; **prove measured kW into the HV battery** under a highway load before release. |

---

### EREV Example 9 — Generation kW collapses in heat (pumps, not “weak engine”)

| Item | Detail |
|---|---|
| **Vehicles** | L9, L8 after summer highway |
| **Symptoms** | Extender runs loud; SOC still falls on grades; motor or generator temp DTCs |
| **Diagnosis** | Extender loop vs battery-loop pump current; coolant level each loop; radiator debris. |
| **Repair** | Pumps / valves; vacuum fill the correct loop; software thermal map. Do not replace a generator for an empty battery loop. |

---

### EREV Example 10 — Low-SOC no-start because fuel is stale or water-contaminated

| Item | Detail |
|---|---|
| **Vehicles** | L7 / L8 / L9 left on EV-heavy use for months |
| **Symptoms** | Fuel gauge not empty; extender cranks / hunts; eventual stop |
| **Diagnosis** | Fuel quality / water; pump pressure; spark on first fires; inhibit flags. |
| **Repair** | Fresh fuel; repair pump / ignition if needed; force extender; prove generation kW. Advise periodic engine use. |

---

### EREV Example 11 — Dual-motor L series: rear axle disabled, extender still runs

| Item | Detail |
|---|---|
| **Vehicles** | L9 / L8 AWD |
| **Symptoms** | AWD unavailable; rear inverter DTCs; extender and front drive still work |
| **Diagnosis** | Rear HVIL; coolant to rear inverter; wheel-speed match. |
| **Repair** | HV lockout; rear EDU / inverter / connector; AWD load test. Extender generation test is a separate checkbox. |

---

### EREV Example 12 — After collision: extender locked out, pyro / HVIL, fuel present

| Item | Detail |
|---|---|
| **Vehicles** | L7 / L8 / L9 |
| **Symptoms** | No Ready or battery-only limp after body work; crash inhibits extender |
| **Diagnosis** | Crash-signal / pyro; every HVIL; isolation; extender ECU inhibits stored **before** clear. |
| **Repair** | Reset crash path; repair HV / SRS; then extender clearance procedure; prove generation kW. |

---

### EREV Example 13 — Incomplete OTA: extender will not start, false “fuel system” story

| Item | Detail |
|---|---|
| **Vehicles** | L9 / L8 after a powertrain-domain OTA |
| **Symptoms** | Multiple U-codes; extender never commanded; fuel and spark are fine |
| **Diagnosis** | Domain flash status; 12 V during OTA; compare with a hardware no-start (no crank current vs no command). |
| **Repair** | Stabilize LV; complete dealer flash; then a commanded extender run + generation kW. Do not replace a generator mid-config. |

---

### EREV Example 14 — Oil dilution / catalyst maintenance run vs real misfire

| Item | Detail |
|---|---|
| **Vehicles** | L series on short urban trips |
| **Symptoms** | Extender starts parked; oil level up; rough first fires |
| **Diagnosis** | Maintenance flags vs misfire DTCs; oil smell / level; start-abort loop vs one clean run. |
| **Repair** | Oil change if diluted; educate if no DTCs. Repair ignition only if starts abort repeatedly. |

---

### EREV Example 15 — Filler / EVAP interlock after a body-shop bumper

| Item | Detail |
|---|---|
| **Vehicles** | L7 / L8 / L9 |
| **Symptoms** | Cannot refuel; pressure faults; extender inhibits with “fuel system” |
| **Diagnosis** | Filler door switch; tank isolation valve; EVAP; harness pinched at the bumper. |
| **Repair** | Door / valve / EVAP / software; prove a fill **and** a generation run. |

---

### EREV Example 16 — Cabin fridge + parked climate: 12 V dead, looks like “HV failed”

| Item | Detail |
|---|---|
| **Vehicles** | L9 / L8 with refrigerator and parked HVAC |
| **Symptoms** | Morning dark screens; no HV Ready; fridge was left on |
| **Diagnosis** | Sleep draw; fridge and rear HVAC modes; LV battery; DC-DC in Ready. |
| **Repair** | Educate on parked loads; replace sulfated 12 V; software if a module will not sleep. Not an extender fault. |

---

### BEV Example 1 — MEGA isolation after rain or a wash

| Item | Detail |
|---|---|
| **Vehicles** | Li MEGA (BEV MPV — not an EREV flowchart) |
| **Symptoms** | Insulation warning; power limited; charge refused |
| **Diagnosis** | 1. Record BMS kΩ. 2. Section PTC, compressor, OBC, pack. 3. Underbody and charge-inlet moisture. |
| **Repair** | HV lockout; dry / replace leak path; pack if module isolation fails; dry retest; AC then DC. |

---

### BEV Example 2 — MEGA 800 V DC handshake / boost fail on a 400 V pile

| Item | Detail |
|---|---|
| **Vehicles** | MEGA |
| **Symptoms** | Pile connects then stops; AC OK; some city piles work, some do not |
| **Diagnosis** | Pile voltage class; boost / BMS DTCs; inlet pins; pack temp. |
| **Repair** | Boost / inlet / BMS software; validate on 400 V-class and 800 V-class piles. Do not use an L9 extender diagram. |

---

### BEV Example 3 — MEGA morning no-Ready / 12 V cabin drain

| Item | Detail |
|---|---|
| **Vehicles** | MEGA |
| **Symptoms** | Brick after sitting; jump restores Ready |
| **Diagnosis** | Sleep current; gateway; aftermarket loads; DC-DC in Ready. |
| **Repair** | LV battery; software; remove constant B+ taps; overnight quiescent test. |

---

### BEV Example 4 — MEGA OBC thermal cut on public AC

| Item | Detail |
|---|---|
| **Vehicles** | MEGA |
| **Symptoms** | AC charge stops mid-way; resumes after cool |
| **Diagnosis** | OBC coolant flow; site voltage; inlet latch. |
| **Repair** | OBC cooling or OBC R&R; software; multi-hour AC verify. |

---

### BEV Example 5 — MEGA dual-motor: one axle disabled

| Item | Detail |
|---|---|
| **Vehicles** | MEGA AWD |
| **Symptoms** | AWD unavailable; one inverter’s DTCs |
| **Diagnosis** | That axle’s HVIL, coolant, wheel-speed. |
| **Repair** | HV lockout; EDU / inverter / connector; load-test AWD. Isolation retest if water was involved. |

---

## 5. Quick triage

| Symptom | First check | Next |
|---|---|---|
| Fuel but no miles | Extender DTCs + generation kW | Generator/fuel |
| Engine runs SOC falls | Generation path | Inverter/BMS |
| Winter range death | PTC/heat pump | HV heater R&R |
| No Ready morning | LV | DC-DC |
| NOA down | Sensor cal | Brackets/glass |

---

## 6. Return-to-service (EREV)

- [ ] Extender starts on command and on low SOC  
- [ ] Measured charge power into HV battery under load  
- [ ] Fuel + EV systems no active DTCs  
- [ ] Cabin heat test (seasonal)  
- [ ] Suspension calibrated if applicable  

---

*EREV diagnosis must prove electrical generation—not just that the engine “runs.”*
