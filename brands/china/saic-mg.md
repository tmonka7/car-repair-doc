# SAIC / MG / Roewe / IM Motors — Repair Guide (MY2020+)

**Region focus:** China (MG global exports)  
**Groups:** SAIC passenger brands—MG, Roewe, IM Motors (Zhiji), Maxus passenger vans select  
**BEV highlight:** MG4 (Mulan EP1 platform), MG ZS EV, IM L7/LS7  
**Diagnostics:** SAIC/MG dealer tools (market-specific)

---

## 1. 2020+ model map

| Brand | Examples | Type |
|---|---|---|
| MG | MG4, ZS EV, HS, 5 | BEV & ICE |
| Roewe | R ER6, RX5, i series | BEV & ICE/PHEV |
| IM Motors | L7, LS7, LS6 | Premium BEV |
| MG ICE | HS, GT | ICE/hybrid markets |

---

## 2. ICE / general examples

### Example A — MG HS: dual-clutch / wet DCT shudder

| Field | Detail |
|---|---|
| **Symptoms** | Takeoff judder; overheat warnings |
| **Repair** | Fluid; adaptive; mechatronics; clutch |

### Example B — Turbo oil supply / cold rattle

| Field | Detail |
|---|---|
| **Symptoms** | Cold noise; later boost issues |
| **Repair** | Oil spec/interval; turbo feed; PCV |

### Example C — Infotainment / iSMART drain

| Field | Detail |
|---|---|
| **Symptoms** | Dead LV; telematics awake |
| **Repair** | Sleep current; TCU/software; battery |

### Example D — ADAS after bumper repair

| Field | Detail |
|---|---|
| **Symptoms** | ACC fail |
| **Repair** | Radar aim + calibration |

### Example E — Sunroof drain → head unit water (select)

| Field | Detail |
|---|---|
| **Symptoms** | Reboots in rain |
| **Repair** | Clear drains; dry modules |

---

## 3. BEV — MG4 / ZS EV detailed examples

### BEV Example 1 — 12 V drain / BMS sleep / morning no Ready

| Item | Detail |
|---|---|
| **Vehicles** | MG4 especially common field pattern |
| **Symptoms** | Dead 12 V; contactors won’t close until jump; repeats |

**Troubleshooting**

1. Charge LV; attempt Ready; note if DC-DC tops LV when HV awake.
2. Parasitic draw after full sleep (time to sleep varies—wait).
3. Check gateway/BMS software level vs campaigns.
4. Inspect aftermarket dashcam/tracker on B+.

**Repair procedure**

1. Replace LV battery if sulfated.
2. Update BMS/gateway software.
3. Repair DC-DC if no charge current when HV up.
4. Eliminate constant loads.
5. Verify quiescent current within MG spec over overnight test.

---

### BEV Example 2 — GB/T or CCS charge lock stuck

| Item | Detail |
|---|---|
| **Symptoms** | Connector won’t release; charge complete |
| **Repair** | Manual release (owner manual location) → replace electronic lock → seal port against water |

---

### BEV Example 3 — Isolation / reduced power

| Item | Detail |
|---|---|
| **Symptoms** | Propulsion warning; insulation DTCs |
| **Diagnosis** | Section OBC, PTC, compressor, pack, EDU |
| **Repair** | HV lockout → replace leaking HV cabin heater/compressor → dry connectors → isolation retest → charge + road test |

---

### BEV Example 4 — OBC AC charge cuts out

| Item | Detail |
|---|---|
| **Symptoms** | Home charging stops at fixed %; OBC hot |
| **Repair** | OBC cooling; OBC R&R; software; verify site supply |

---

### BEV Example 5 — Rear motor / RWD EDU noise (MG4)

| Item | Detail |
|---|---|
| **Symptoms** | Whine; click on regen |
| **Repair** | EDU; bearing vs tire differentiation |

---

### BEV Example 6 — ABS/ESP events from mismatched tires after repair

| Item | Detail |
|---|---|
| **Symptoms** | Traction interventions; torque caps |
| **Repair** | Match tire circumference; wheel-speed sensors |

---

## 4. IM Motors premium BEV examples

### BEV Example 1 — Air suspension + thermal derate together

| Item | Detail |
|---|---|
| **Symptoms** | Height errors; DC charge weak |
| **Repair** | Treat separately: air leaks/calibration AND battery pumps/coolant |

### BEV Example 2 — Lidar/NOA calibration

| Item | Detail |
|---|---|
| **Symptoms** | High-end ADAS disabled after front work |
| **Repair** | Full sensor calibration suite |

### BEV Example 3 — 800 V charge path (select IM)

| Item | Detail |
|---|---|
| **Symptoms** | Boost/pile incompatibility |
| **Repair** | Boost/OBC/BMS software; inlet |

### BEV Example 4 — Isolation after performance drive heat cycle

| Item | Detail |
|---|---|
| **Symptoms** | Warning after track-like use |
| **Repair** | Thermal first; then true isolation if persists cool |

---

## 5. Roewe PHEV / BEV notes

| Issue | Approach |
|---|---|
| PHEV no EV | Charge permit + OBC |
| ER6 isolation | Standard sectional |
| Hybrid mounts | NVH path |

---

## Additional field examples

### BEV Example 7 — MG4 isolation after rain or a flooded underpass

| Item | Detail |
|---|---|
| **Vehicles** | MG4 (Mulan / EP1), ZS EV |
| **Symptoms** | Propulsion warning; insulation DTCs; charge refused |
| **Diagnosis** | 1. Record kΩ. 2. Section OBC, PTC, compressor, pack, rear EDU. 3. Underbody orange connectors and inlet. |
| **Repair** | HV lockout; replace leaking HV heater / compressor; dry connectors; isolation retest; charge + road test. Do not replace a pack for a wet PTC. |

---

### BEV Example 8 — MG4 GB/T (or CCS export) handshake fail; lock cycles but session dies

| Item | Detail |
|---|---|
| **Vehicles** | MG4 China GB/T; export CCS2 |
| **Symptoms** | Pile connects; handshake abort; AC may still work |
| **Diagnosis** | Second pile; lock actuation; pin burn; BMS software vs pile; 12 V during plug-in (MG4 LV issues mimic permit fails). |
| **Repair** | Inlet / lock; BMS update; stabilize 12 V first; successful DC log. Export: use CCS lock location, not the China GB/T cable. |

---

### BEV Example 9 — MG4 charge-port lock stuck after a completed session

| Item | Detail |
|---|---|
| **Vehicles** | MG4, ZS EV |
| **Symptoms** | Connector will not release; owner forces the handle |
| **Diagnosis** | Manual release (owner-manual location); lock-motor current; water in port. |
| **Repair** | Replace electronic lock; reseal port; lock-cycle test. |

---

### BEV Example 10 — MG4 / ZS EV winter PTC: range collapse and isolation flicker

| Item | Detail |
|---|---|
| **Vehicles** | MG4, ZS EV |
| **Symptoms** | Cabin cold; SOC dumps parked with climate; intermittent insulation warning |
| **Diagnosis** | PTC current; heat-pump valves if fitted; isolation with PTC on vs off. |
| **Repair** | HV lockout; PTC / valve; isolation retest; winter heat test. |

---

### BEV Example 11 — After collision / front crash: no Ready, pyro / HVIL (MG4)

| Item | Detail |
|---|---|
| **Vehicles** | MG4, ZS EV |
| **Symptoms** | No Ready after body shop; interlock or crash DTCs |
| **Diagnosis** | Full HV checklist; pyro; every service HVIL; isolation; SRS reset. |
| **Repair** | Replace fired pyro and damaged HV parts; isolation retest; AC + DC. Use **MG** disconnect points, not a generic EV diagram. |

---

### BEV Example 12 — MG4 incomplete OTA / BMS flash: morning brick returns

| Item | Detail |
|---|---|
| **Vehicles** | MG4 after a sleep-current campaign flash |
| **Symptoms** | Features missing or 12 V drain returns; U-codes |
| **Diagnosis** | Flash completion; 12 V during programming; still-awake gateway vs a bad LV battery. |
| **Repair** | Stable 12 V; complete dealer flash; overnight quiescent proof. Do not replace an HV pack for a failed BMS sleep update. |

---

### BEV Example 5 — IM 800 V on a 400 V pile: boost abort

| Item | Detail |
|---|---|
| **Vehicles** | IM L7 / LS7 / LS6 800 V variants |
| **Symptoms** | “Incompatible” or session dies; AC OK; some city piles work |
| **Diagnosis** | Pile voltage class; boost / OBC / BMS DTCs; inlet pins; pack temp. |
| **Repair** | Boost / OBC / BMS software; inlet; validate on 400 V-class and 800 V-class piles. Not an MG4 400 V path. |

---

### BEV Example 6 — IM morning no-Ready / luxury-cabin 12 V drain

| Item | Detail |
|---|---|
| **Vehicles** | IM L7, LS7 |
| **Symptoms** | Weekend brick; jump restores Ready; sentry-like cabin features were on |
| **Diagnosis** | Sleep current; cabin domain; DC-DC in Ready; aftermarket tracker. |
| **Repair** | LV battery; software; remove constant loads; overnight test. |

---

### BEV Example 7 — IM isolation after rain (separate from air-suspension lean)

| Item | Detail |
|---|---|
| **Vehicles** | IM L7 / LS7 |
| **Symptoms** | Insulation warning the same week a corner sits low |
| **Diagnosis** | Treat as two systems: sectional HV isolation **and** air leak-down. Glycol vs air dryer are different fluids. |
| **Repair** | HV leak path first (PTC / compressor / OBC / pack); then air springs / dryer / height cal. Do not replace a pack for a lean corner. |

---

### PHEV Example 1 — Roewe / MG HS PHEV: no EV mode, AC charge refused

| Item | Detail |
|---|---|
| **Vehicles** | Roewe RX5 / i-series PHEV; MG HS PHEV where sold |
| **Symptoms** | Wallbox error; engine always runs |
| **Diagnosis** | Inlet latch; CP; OBC; BMS permit; 12 V. |
| **Repair** | OBC / inlet; software; full charge + EV drive. |

---

### PHEV Example 2 — MG HS wet DCT shudder after the wrong fluid

| Item | Detail |
|---|---|
| **Vehicles** | MG HS, GT (wet DCT markets) |
| **Symptoms** | Takeoff judder; overheat warnings after an independent “ATF service” |
| **Diagnosis** | Confirm wet DCT vs automatic from VIN; fluid spec; adaptive values; mechatronics DTCs. |
| **Repair** | Drain wrong fluid; OEM DCT fill; adaptive reset; mechatronics / clutch if metal or slip remains. |

---

## 6. Quick triage

| Symptom | First check | Next |
|---|---|---|
| MG4 morning dead | Sleep draw + DC-DC | BMS software |
| Lock stuck | Manual release | Lock motor |
| Isolation | PTC/compressor | Pack |
| DCT shudder | Fluid | Mechatronics |
| IM NOA down | Sensors | Calibration |

---

## 7. Return-to-service

- [ ] Overnight LV stability proven (MG4)  
- [ ] Isolation OK  
- [ ] Charge lock cycles OK  
- [ ] AC (+ DC) verified  
- [ ] ADAS calibrated if disturbed  

---

*MG4 LV sleep issues are frequently software + parasitic—don’t replace HV packs for morning no-Ready without LV proof.*
