# Chery / Exeed / Jaecoo — Repair Guide (MY2020+)

**Region focus:** China (global exports growing)  
**Brands:** Chery, Exeed, Jaecoo, Omoda (related)  
**Electrified:** Kunpeng hybrid / DHT; PHEV variants; some BEVs  
**Diagnostics:** Chery dealer diagnostic platforms

---

## 1. 2020+ model map

| Brand | Examples | Type |
|---|---|---|
| Chery | Arrizo, Tiggo 7/8 | ICE, hybrid |
| Exeed | TX/TXL, RX, Atlas | ICE, PHEV |
| Jaecoo / Omoda | J7, O5, etc. | ICE, PHEV markets |
| Chery New Energy | select EVs | BEV |

---

## 2. ICE examples

### Example A — Dual-clutch / CVT shudder (model-dependent)

| Field | Detail |
|---|---|
| **Symptoms** | Judder; flare; temp warnings |
| **Repair** | Exact OEM fluid only; adaptive; mechatronics/valve body; unit R&R if metal |

### Example B — 1.5T/1.6T misfire under load

| Field | Detail |
|---|---|
| **Symptoms** | P030x; hesitation |
| **Repair** | Coils/plugs; carbon; vacuum/boost leaks; HPFP |

### Example C — Coolant loss / thermostat housing

| Field | Detail |
|---|---|
| **Symptoms** | Level drop; smell; overheat |
| **Repair** | Pressure test; plastic housing updates; water pump |

### Example D — ADAS radar false alerts

| Field | Detail |
|---|---|
| **Symptoms** | Phantom brake; ACC drop |
| **Repair** | Bracket; paint; calibration |

### Example E — Wiring ground / cluster flicker

| Field | Detail |
|---|---|
| **Symptoms** | Random warning lamps |
| **Repair** | Battery terminals; body grounds; CAN integrity |

---

## 3. Hybrid / DHT / PHEV — detailed examples

### Hybrid Example 1 — Harsh engagement + warning lamps

| Item | Detail |
|---|---|
| **Symptoms** | Bang into Drive; hybrid system warning; intermittent EV |
| **Troubleshooting** | Scan hybrid MCU + TCM; fluid level/condition; mounts; 12 V; software |
| **Repair** | Fluid + adaptive; mounts; software; clutch/DHT repair |

---

### Hybrid Example 2 — Coolant intrusion into DHT (critical)

| Item | Detail |
|---|---|
| **Symptoms** | Milky oil/fluid; sweet smell; insulation DTCs; sudden hybrid failure |
| **Why serious** | Coolant + motor windings → isolation failure and unit destruction |

**Troubleshooting**

1. Immediate no-drive recommendation if milky fluid found.
2. Inspect DHT fluid on stick/plug.
3. Isolation resistance test before any Ready attempts.
4. Pressure-test cooling circuits feeding hybrid unit.

**Repair procedure**

1. HV lockout.
2. Replace/overhaul DHT / hybrid transmission as required (do not “flush and hope”).
3. Repair heat exchanger leak source.
4. Flush contaminated cool loops.
5. Isolation retest must pass before road return.
6. Software + adaptive relearn.
7. Extended road test monitoring isolation and temps.

---

### Hybrid Example 3 — PHEV will not charge

| Item | Detail |
|---|---|
| **Symptoms** | EVSE fault; EV mode unavailable |
| **Diagnosis** | Inlet latch; CP; OBC; BMS; LV |
| **Repair** | OBC/inlet; update; full charge verification |

---

### Hybrid Example 4 — Engine start vibration from EV mode

| Item | Detail |
|---|---|
| **Symptoms** | Shake when ICE couples |
| **Repair** | Mounts; ignition; start control calibration |

---

### Hybrid Example 5 — SOC logic / poor economy complaints

| Item | Detail |
|---|---|
| **Symptoms** | Fuel use high; engine always on |
| **Diagnosis** | Inhibit flags (A/C, SOC, grade); brake drag; tire pressure; capacity DTCs |
| **Repair** | Fix mechanical drag; battery if needed; explain inhibits |

---

### Hybrid Example 6 — e-motor over-temp / pump failure

| Item | Detail |
|---|---|
| **Symptoms** | Power limit; pump DTCs |
| **Repair** | Hybrid loop pump; radiator clean; coolant bleed |

---

## 4. BEV (Chery New Energy) examples

### BEV Example 1 — Isolation after water

| Item | Detail |
|---|---|
| **Symptoms** | Insulation warning; limp |
| **Repair** | Section PTC/compressor/OBC/pack; dry connectors |

### BEV Example 2 — GB/T handshake fail

| Item | Detail |
|---|---|
| **Symptoms** | DC pile abort |
| **Repair** | Inlet lock; BMS software; pins |

### BEV Example 3 — OBC thermal cut

| Item | Detail |
|---|---|
| **Symptoms** | AC charge stops mid-way |
| **Repair** | OBC cooling/OBC R&R |

### BEV Example 4 — 12 V drain

| Item | Detail |
|---|---|
| **Symptoms** | Morning no Ready |
| **Repair** | Sleep draw; DC-DC; LV battery |

---

## 5. Exeed / Jaecoo specific notes

| Topic | Guidance |
|---|---|
| Premium ADAS | Calibration mandatory after glass/bumper |
| PHEV exports | Connector standard may be CCS—don’t use China-only GB/T assumptions |
| Ride control | Height/damper calibrations after suspension work |

---

## Additional field examples

### Hybrid Example 7 — PHEV AC charge dies mid-session (OBC thermal)

| Item | Detail |
|---|---|
| **Vehicles** | Tiggo 8 PHEV, Arrizo 8 PHEV, Exeed RX PHEV, Jaecoo J7 PHEV |
| **Symptoms** | Wallbox starts; stops 40–70%; EV mode then locked |
| **Diagnosis** | 1. OBC temperature and coolant flow. 2. Inlet lock / CP. 3. BMS permit and 12 V. 4. Site voltage. |
| **Repair** | Restore OBC cooling; OBC R&R if internal faults; software; full charge + EV drive. |

---

### Hybrid Example 8 — Kunpeng DHT shudder 20–40 km/h (fluid / clutch, not coolant-in-unit)

| Item | Detail |
|---|---|
| **Vehicles** | Tiggo 8 / 7 DHT, Exeed / Jaecoo DHT hybrids |
| **Symptoms** | Judder leaving EV into engine; fluid looks normal (not milky) |
| **Diagnosis** | OEM DHT fluid and level; adaptive values; mounts vs clutch; software. If fluid is milky, stop and use Hybrid Example 2 (coolant intrusion). |
| **Repair** | OEM DHT fluid + adaptive learn; mounts; clutch / DHT if slip remains. Road-test EV and hybrid. |

---

### Hybrid Example 9 — Hybrid warnings that clear after a jump (12 V / DC-DC)

| Item | Detail |
|---|---|
| **Vehicles** | Chery / Exeed / Jaecoo PHEV |
| **Symptoms** | Many hybrid lamps; no Ready; all clear after a jump |
| **Diagnosis** | Load-test 12 V; DC-DC output in Ready; grounds; sleep draw. |
| **Repair** | LV battery; DC-DC; grounds; overnight quiescent test. Do not replace a DHT for jump-cleared U-codes. |

---

### Hybrid Example 10 — Electric A/C dead in EV; engine-on cool works

| Item | Detail |
|---|---|
| **Vehicles** | Tiggo 8 PHEV, Jaecoo J7 PHEV |
| **Symptoms** | Cabin cools only after the engine starts |
| **Diagnosis** | Electric compressor HV supply; A/C ECU; refrigerant; isolation if compressor leaks to the bus. |
| **Repair** | HV lockout if isolation failed; compressor / refrigerant / HV enable; prove engine-off A/C. |

---

### Hybrid Example 11 — AWD PHEV: rear e-axle disabled

| Item | Detail |
|---|---|
| **Vehicles** | Exeed / Tiggo AWD PHEV |
| **Symptoms** | AWD unavailable; rear inverter DTCs; front hybrid still drives |
| **Diagnosis** | Rear HVIL; coolant to rear inverter; wheel-speed match. |
| **Repair** | HV lockout; rear EDU / inverter / connector; AWD load test. |

---

### Hybrid Example 12 — Wrong fluid after independent shop (DHT vs DCT vs CVT)

| Item | Detail |
|---|---|
| **Vehicles** | Arrizo / Tiggo (model-dependent transmissions) |
| **Symptoms** | Sudden shudder or flare the day after a “gearbox service” |
| **Diagnosis** | VIN transmission type; fluid smell / color vs OEM; metal. |
| **Repair** | Drain the wrong fluid; refill the specified DHT / DCT / CVT fluid; adaptive reset. If milky, treat as coolant intrusion (Example 2). |

---

### BEV Example 5 — Isolation after standing water (sectional, not a pack-first guess)

| Item | Detail |
|---|---|
| **Vehicles** | Chery New Energy EVs; Omoda E5 |
| **Symptoms** | Insulation warning; limp; charge refused |
| **Diagnosis** | 1. Record kΩ. 2. Section PTC → compressor → OBC → pack. 3. Underbody connectors and inlet. |
| **Repair** | HV lockout; dry / replace leak path; pack only if module isolation fails; dry retest; AC + GB/T DC. |

---

### BEV Example 6 — GB/T handshake fail after a forced / stuck lock

| Item | Detail |
|---|---|
| **Vehicles** | Chery / Omoda BEV on GB/T |
| **Symptoms** | DC pile abort; AC may work; lock stuck or pins burnt |
| **Diagnosis** | Manual release; lock motor; pin inspection; second pile; BMS software. |
| **Repair** | Inlet / lock; BMS update; successful DC session log. |

---

### BEV Example 7 — OBC thermal cut plus 12 V sag during AC

| Item | Detail |
|---|---|
| **Vehicles** | Omoda E5, Chery small BEVs |
| **Symptoms** | AC charge stops; morning no-Ready the next day |
| **Diagnosis** | OBC coolant and temps; 12 V during charge; DC-DC when HV is up; sleep draw. |
| **Repair** | OBC cooling or OBC R&R; LV battery / DC-DC if sagging; overnight LV proof + a multi-hour AC session. |

---

### BEV Example 8 — Drive-unit whine vs wheel bearing (entry BEV)

| Item | Detail |
|---|---|
| **Vehicles** | Chery New Energy / Omoda BEV |
| **Symptoms** | Speed-related whine; click on regen |
| **Diagnosis** | Chassis ear at EDU vs corner bearing; tire noise. |
| **Repair** | EDU if mechanical; do not replace an EDU for a bearing or tire. |

---

### PHEV Example 1 — Exeed / Jaecoo export: CCS charge fail (shop used a GB/T playbook)

| Item | Detail |
|---|---|
| **Vehicles** | Jaecoo J7 PHEV, Exeed / Omoda PHEV exports |
| **Symptoms** | European or other CCS wallbox error; China-spec diagnosis finds “nothing” |
| **Diagnosis** | Confirm inlet standard from VIN; CCS lock / CP; OBC; BMS permit; 12 V. |
| **Repair** | Market-correct inlet / OBC path; software; full charge + EV drive. Do not assume GB/T lock or pin layout. |

---

## 6. Quick triage

| Symptom | First check | Next |
|---|---|---|
| Milky DHT fluid | STOP — isolation | DHT + cooler R&R |
| Bang engagement | Fluid + mounts | Clutch/DHT |
| No PHEV charge | Inlet/OBC | BMS |
| Load misfire | Plugs/coils | Boost leaks |
| Random lamps | Grounds + 12 V | CAN |

---

## 7. Return-to-service

- [ ] If fluid was contaminated: isolation pass mandatory  
- [ ] Hybrid transitions smooth  
- [ ] Charge verified on PHEV/BEV  
- [ ] Correct OEM fluids only  
- [ ] ADAS calibrated if needed  

---

*Any coolant-in-DHT case is a hard stop safety item—prove insulation before releasing the vehicle.*
