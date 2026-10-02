# BYD — Repair Guide (MY2020+)

**Region focus:** China (exports worldwide)  
**Diagnostics:** BYD dealer OSS / Diag tablets  
**Tech pillars:** Blade Battery, DM-i / DM-p hybrids, e-Platform 3.0, GB/T charging in China  
**HV safety:** Follow BYD high-voltage disable; Blade packs are structurally integrated—collision inspection is mandatory

---

## 1. 2020+ model map

| Line | Examples | Type |
|---|---|---|
| Han / Tang / Song / Qin | Han EV, Tang DM, Qin Plus DM-i | BEV & DM hybrid |
| Seal / Dolphin / Atto 3 (Yuan Plus) | e-Platform 3.0 | BEV |
| Sealion / Seal U | later SUV | BEV/DM markets |
| Seagull / smaller EVs | entry BEV | BEV |

---

## 2. ICE-side / DM engine bay examples (DM-i)

### Example A — DM-i frequent engine start / vibration

| Field | Detail |
|---|---|
| **Symptoms** | Engine starts often in city; shake at transition; owner believes “hybrid broken” |
| **Often normal** | Heat request, SOC sustain, high load |
| **Real faults** | Mounts; ISG/resolver; outdated calibration; fuel/ignition causing start abort loops |
| **Diagnosis** | Diag inhibit flags; mount inspection; ISG DTCs; fuel trims |
| **Repair** | Mounts; software; ISG repair; spark/injectors; educate on heat-SOC matrix |

### Example B — Engine maintenance mode noise / parked start

| Field | Detail |
|---|---|
| **Symptoms** | Engine runs while parked/charging occasionally |
| **Action** | Confirm no DTCs; catalyst/engine maintenance logic; investigate only if smoke/over-temp |

### Example C — 12 V / DC-DC causing false DM alarms

| Field | Detail |
|---|---|
| **Symptoms** | Multiple hybrid warnings that clear after jump |
| **Repair** | LV battery; DC-DC; ground points; sleep draw |

### Example D — DHT/transmission harshness (DM-p performance lines)

| Field | Detail |
|---|---|
| **Symptoms** | Bang on engagement; shudder 20–40 km/h |
| **Repair** | OEM DHT fluid; adaptive reset; clutch diagnosis |

### Example E — A/C weak with engine off (DM-i heat pump/electric A/C)

| Field | Detail |
|---|---|
| **Symptoms** | Cool only when engine runs |
| **Repair** | Electric compressor HV supply; A/C ECU; refrigerant; HV enable path |

---

## 3. BEV — detailed examples

### BEV Example 1 — Insulation/isolation fault after rain or flood path

**Vehicles:** Seal, Atto 3/Yuan Plus, Dolphin, Han EV

| Item | Detail |
|---|---|
| **Symptoms** | Power limited; charging prohibited; insulation resistance warning on cluster |
| **Common leak paths** | HV PTC cabin heater; electric A/C compressor; underbody HV connectors; charge inlet |

**Troubleshooting**

1. Record insulation kΩ from BMS.
2. Visually inspect pack underside and orange connectors for moisture/white glycol residue.
3. Sectional disable/isolate PTC, compressor, OBC per BYD flowchart.
4. Check for recent underbody damage or water crossings.

**Repair procedure**

1. HV lockout; verify 0 V.
2. Dry and replace damaged connectors; replace PTC or compressor if leakage to HV bus confirmed.
3. If Blade module isolation fails threshold → pack repair/replacement per BYD.
4. Reseal; insulation retest dry.
5. AC charge test; GB/T DC charge test where applicable.
6. Road test with live insulation monitoring if tool supports.

---

### BEV Example 2 — GB/T DC fast charge handshake failure

| Item | Detail |
|---|---|
| **Symptoms** | Pile connects, then stops at handshake; AC charge OK |
| **Causes** | Electronic lock on inlet; CC2 faults; BMS software vs pile; pin wear; BMS voltage limits |

**Troubleshooting**

1. Try second DC pile (rule out pile).
2. Observe inlet lock actuation.
3. Diag BMS communication during handshake.
4. Inspect GB/T pins for burn/bend.

**Repair**

Replace inlet lock/port → BMS update → BMS/OBC hardware if required → successful DC session log (voltage/current curve).

---

### BEV Example 3 — Blade Battery thermal derate / slow charge in heat

| Item | Detail |
|---|---|
| **Symptoms** | Charge kW collapses; power limit after highway; pump noise |
| **Diagnosis** | Battery loop pump current; coolant level; radiator debris; temp sensor spread |
| **Repair** | Pump/valve; coolant vacuum fill (BYD-spec); clean exchangers; software thermal map |

---

### BEV Example 4 — e-Platform drive unit noise

| Item | Detail |
|---|---|
| **Symptoms** | Whine at constant speed; click into regen |
| **Differentiate** | Wheel bearing, tire, reducer |
| **Repair** | Drive unit assembly; half-shaft; torque software updates |

---

### BEV Example 5 — OBC overheat on public AC

| Item | Detail |
|---|---|
| **Symptoms** | AC charge stops at 40–70%; resumes after cool |
| **Repair** | OBC coolant flow; OBC replacement; site voltage issues; software |

---

### BEV Example 6 — 12 V drain / smart cabin modules awake

| Item | Detail |
|---|---|
| **Symptoms** | Morning cannot Ready; Bluetooth modules chatter |
| **Repair** | Sleep current; gateway update; LV battery; aftermarket dashcam on constant 12 V |

---

### BEV Example 7 — ADAS / DiPilot camera after glass

| Item | Detail |
|---|---|
| **Symptoms** | ADAS unavailable; lane keep abort |
| **Repair** | BYD glass + static/dynamic calibration

---

## 4. DM-i hybrid — additional deep examples

### DM Example 1 — SOC oscillation / poor fuel economy complaint

| Item | Detail |
|---|---|
| **Symptoms** | Fuel use higher than brochure; SOC swings |
| **Diagnosis** | Tire pressure; brake drag; software; HV capacity; short-trip profile |
| **Repair** | Mechanical drag fix; battery if capacity DTCs; driving mode settings |

### DM Example 2 — Generator (ISG) fault → cannot sustain HV

| Item | Detail |
|---|---|
| **Symptoms** | Pack depletes; vehicle stops; generation DTCs |
| **Repair** | HV lockout; ISG/resolver/PCU per flow; verify generation current into pack |

### DM Example 3 — Coolant mixing / wrong loop fill after independent shop work

| Item | Detail |
|---|---|
| **Symptoms** | Overheat + hybrid derate after “coolant service” |
| **Repair** | Identify engine vs electronics loops; flush incorrect chemistry; bleed both |

---

## Additional field examples

### BEV Example 8 — Blade pack underside scrape / isolation after parking-block hit

| Item | Detail |
|---|---|
| **Vehicles** | Seal, Atto 3 / Yuan Plus, Han EV, Dolphin (CTB / structurally integrated Blade) |
| **Symptoms** | Insulation warning days after a scrape; charging refused; no visible orange-connector damage |
| **Diagnosis** | 1. Record BMS isolation kΩ hot and cold. 2. Lift and inspect Blade underside and side rails for crushed cooling plates or torn mastic. 3. Section PTC, compressor, OBC first — do not condemn the pack until those are clear. 4. Look for dried glycol on the pack skin. |
| **Repair** | HV lockout; repair or replace the damaged cooling plate / module per BYD Blade structural rules; vacuum-fill the battery loop; dry retest isolation; AC then GB/T DC session. Collision inspection is mandatory — do not “seal and hope.” |

---

### BEV Example 9 — GB/T inlet lock stuck after a completed DC session

| Item | Detail |
|---|---|
| **Vehicles** | Han EV, Seal, Atto 3, Sealion 07 |
| **Symptoms** | Cable will not release; owner pulls and bends the handle; next session fails handshake |
| **Diagnosis** | 1. Use the manual release (owner-manual location — usually luggage-side cable). 2. Command lock open/close with OSS and watch actuator current. 3. Inspect GB/T pins for burn or bent CC2. 4. Check port drain for standing water. |
| **Repair** | Replace electronic lock / inlet assembly; reseal the port; successful lock-cycle + GB/T DC log. Educate: do not force the handle. |

---

### BEV Example 10 — Heat-pump / HV PTC winter range collapse (e-Platform 3.0)

| Item | Detail |
|---|---|
| **Vehicles** | Seal, Dolphin, Atto 3, Seal U |
| **Symptoms** | Cabin barely warm; SOC drops fast while parked with climate on; PTC or heat-pump valve DTCs |
| **Diagnosis** | 1. Command PTC and read current. 2. Check heat-pump valves and refrigerant. 3. Isolation test if PTC is a leak suspect. 4. Confirm coolant loop to the heater is not air-locked after indie “coolant service.” |
| **Repair** | HV lockout → replace leaking PTC or sticking valve block → isolation retest → winter heat performance test. Do not replace a Blade pack for weak cabin heat. |

---

### BEV Example 11 — Dual-motor Han / Tang EV: rear axle disabled

| Item | Detail |
|---|---|
| **Vehicles** | Han EV AWD, Tang EV AWD |
| **Symptoms** | “Rear drive system” or AWD unavailable; yaw correction; FWD-only feel |
| **Diagnosis** | 1. Rear inverter / EDU DTCs. 2. Rear HVIL and orange connector for water or bent pins. 3. Coolant level to the rear inverter. 4. Wheel-speed rationality (mismatched tire can mimic). |
| **Repair** | HV lockout; repair rear HVIL / EDU / inverter; match tire circumference; load-test AWD from a stop. |

---

### BEV Example 12 — After collision: Blade structural pack + pyro / no Ready

| Item | Detail |
|---|---|
| **Vehicles** | Any e-Platform 3.0 with CTB Blade |
| **Symptoms** | No Ready after body repair; pyro fired; HVIL open; isolation fail |
| **Diagnosis** | 1. Full BYD HV checklist — do not use a generic EV disconnect diagram. 2. Inspect pack rails and cooling plates for crush. 3. SRS / crash-signal reset status. 4. OBC and front junction in the crush zone. |
| **Repair** | Replace fired pyro and damaged HV parts per OSS; Blade pack repair/replace if structural; isolation retest; AC + GB/T DC; DiPilot calibration if glass/radar moved. |

---

### BEV Example 13 — Vehicle-to-load (V2L) no output, charge still works

| Item | Detail |
|---|---|
| **Vehicles** | Seal, Atto 3, Sealion (markets with V2L adapter) |
| **Symptoms** | Discharge adapter connects; no 220 V; AC charge from a wallbox still OK |
| **Diagnosis** | 1. SOC above the discharge floor and V2L enabled in the car. 2. Known-good adapter. 3. OBC discharge DTCs vs charge-only DTCs. 4. Inlet lock during V2L. |
| **Repair** | Settings / SOC limit first; replace adapter; then OBC if discharge function is dead. Verify with a measured load, not just a lamp. |

---

### DM Example 4 — DM-i engine will not start; pack depletes to a stop

| Item | Detail |
|---|---|
| **Vehicles** | Qin Plus DM-i, Song Plus DM-i, Destroyer 05, Seal 06 DM-i |
| **Symptoms** | Owner: “ran out of battery with fuel in the tank”; engine never fires; eventual no-go |
| **Diagnosis** | 1. Fuel level/quality and pump. 2. Inhibit flags (catalyst, crash, ISG, HV). 3. ISG / resolver current on commanded start. 4. Xiaoyun 1.5 crank/cam and spark. 5. Software vs start-abort campaigns. |
| **Repair** | Repair fuel/ignition/ISG as pinpointed; force engine run with OSS; prove generation current into the Blade pack; road-test a low-SOC auto start before release. |

---

### DM Example 5 — DM-i AC charge OK once, then EV mode locked

| Item | Detail |
|---|---|
| **Vehicles** | Qin Plus DM-i, Song Plus Champion, Tang DM-i |
| **Symptoms** | Wallbox session completes or dies at handshake; next day EV range greyed; engine always on |
| **Diagnosis** | 1. Inlet lock and CP. 2. OBC thermal history. 3. BMS charge permit and cell ΔV. 4. 12 V during plug-in (false permits from low LV). |
| **Repair** | Inlet / OBC / BMS software; stabilize 12 V; full charge + EV-only drive to verify permit. |

---

### DM Example 6 — DM-p performance: rear e-axle fault / launch shudder

| Item | Detail |
|---|---|
| **Vehicles** | Han DM-p, Tang DM-p |
| **Symptoms** | Launch bang; rear motor DTCs; AWD disabled; 20–40 km/h clutch shudder remains after fluid |
| **Diagnosis** | 1. Separate DHT clutch shudder from rear EDU. 2. Rear HVIL and inverter temps. 3. OEM DHT fluid and adaptive values. 4. Mount vs clutch. |
| **Repair** | OEM DHT fluid + adaptive reset; rear EDU/inverter if codes persist; mounts; software. Road-test EV, hybrid, and Sport launch. |

---

### DM Example 7 — Parked engine run: maintenance logic vs start-abort loop

| Item | Detail |
|---|---|
| **Vehicles** | Any DM-i after weeks of EV-heavy use |
| **Symptoms** | Engine starts while plugged in or parked; owner thinks hybrid is broken; sometimes smoke smell |
| **Diagnosis** | 1. Confirm catalyst / fuel-quality / oil-dilution maintenance flags vs misfire DTCs. 2. Watch start — does it catch or abort and retry? 3. Oil level rise (short-trip dilution). |
| **Repair** | Educate if no DTCs and one clean maintenance run. Change oil if diluted. Repair spark/injectors/ISG only if starts abort in a loop. |

---

### DM Example 8 — Electric A/C / heat-pump isolation leak (engine-off cool dead)

| Item | Detail |
|---|---|
| **Vehicles** | Song Plus DM-i, Seal 06 DM, Tang DM-i |
| **Symptoms** | Cabin cools only after the engine starts; insulation warning in rain; compressor HV DTCs |
| **Diagnosis** | 1. Command electric compressor with engine inhibited. 2. Isolation sectional: compressor vs PTC vs OBC. 3. Refrigerant charge and HV enable path. |
| **Repair** | HV lockout; replace leaking electric compressor or PTC; dry connectors; isolation retest; prove engine-off A/C. |

---

## 5. Quick triage

| Symptom | First check | Next |
|---|---|---|
| Insulation warning | kΩ + PTC/compressor | Pack |
| DC handshake fail | Inlet lock + second pile | BMS/OBC |
| DM vibration | Mounts + inhibit flags | ISG |
| Slow charge heat | Thermal pumps | Coolant/OBC |
| No Ready morning | LV sleep draw | DC-DC |

---

## 6. Return-to-service

- [ ] Insulation within BYD spec  
- [ ] AC + GB/T DC verified  
- [ ] DM transitions smooth (if hybrid)  
- [ ] Both coolant loops correct  
- [ ] ADAS calibrated if disturbed  

---

*Use BYD VIN-specific OSS procedures; Blade pack structural rules override generic EV habits.*
