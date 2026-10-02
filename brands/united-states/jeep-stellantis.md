# Jeep / Stellantis PHEV — Repair Guide (MY2020+)

**Region focus:** United States (Stellantis NA)  
**Scan tools:** wiTECH 2.0  
**Focus models:** Wrangler 4xe, Grand Cherokee 4xe, Pacifica Plug-In Hybrid, Hornet PHEV  
**Critical:** Hybrid coolant loops are separate from engine—mis-filling causes repeat failures

---

## 1. 2020+ electrified passenger map

| Model | Architecture |
|---|---|
| Wrangler 4xe | PHEV, eMotor integrated, ESS underbody |
| Grand Cherokee 4xe | PHEV |
| Pacifica PHEV | PHEV minivan |
| Dodge Hornet R/T PHEV | PHEV |

---

## 2. ICE / shared chassis examples (4xe hosts)

### Example A — Wrangler water intrusion (electrical)

| Field | Detail |
|---|---|
| **Symptoms** | Random cluster; USB; after deep water or poor drain |
| **Repair** | Drain plugs; connector dielectric; BCM water damage assessment |

### Example B — Axle disconnect / 4WD lamp (non-HV)

| Field | Detail |
|---|---|
| **Symptoms** | Service 4WD; grind |
| **Repair** | Disconnect motor; wiring; vacuum/electronic actuation per year |

### Example C — Pacifica sliding door cable / tracks

| Field | Detail |
|---|---|
| **Symptoms** | Door reverses; rubbing |
| **Repair** | Cables; rollers; align; software |

### Example D — 3.6 Pentastar tick / oil filter housing seep

| Field | Detail |
|---|---|
| **Symptoms** | Valve cover area oil; coolant housing seepage on some |
| **Repair** | Updated housings/gaskets; oil spec |

---

## 3. PHEV — Wrangler / Grand Cherokee 4xe detailed examples

### PHEV Example 1 — “Service Electrified Propulsion System”

| Item | Detail |
|---|---|
| **Symptoms** | Propulsion warning; EV mode lost; charge inhibited; possible limp |
| **Modules** | BPCM, PICU, PHEV ECM interactions |

**Troubleshooting**

1. wiTECH full vehicle scan—save all DTCs + freeze frames.
2. Check 12 V AGM health (critical).
3. ESS isolation and cell data.
4. eMotor coolant pump (ePump) command vs current.
5. Charge port latch and OBC status.
6. Hybrid vs engine coolant levels (two systems).

**Repair procedure**

1. HV battery service disconnect / lockout per 4xe manual.
2. Replace ePump, OBC, ESS modules, or high-voltage cables as pinpointed.
3. Refill hybrid electronics coolant correctly (color/spec).
4. Flash BPCM/PICU as required.
5. Plug-in charge verification + EV-only drive + hybrid transition test.
6. Road test 4WD modes (Wrangler) to ensure no HVIL stress with articulation.

---

### PHEV Example 2 — ePump failure / ESS over-temperature

| Item | Detail |
|---|---|
| **Symptoms** | Charge rate collapses; EV disabled when warm; ePump DTCs |
| **Diagnosis** | Active test pump; feel line temp delta; debris in hybrid radiator |
| **Repair** | ePump; hybrid radiator stack clean; coolant vacuum fill/bleed; verify ESS temps on grade |

---

### PHEV Example 3 — Will not charge (AC) / LED fault codes on port

| Item | Detail |
|---|---|
| **Symptoms** | EVSE error; vehicle charge schedule ignored |
| **Causes** | Latch; proximity resistor; OBC; TIM; stolen-vehicle or charge schedule settings; GFCI site |
| **Repair** | Port/OBC; software; customer charge schedule reset; verify Level 2 overnight |

---

### PHEV Example 4 — Harsh eMotor engagement / shudder

| Item | Detail |
|---|---|
| **Symptoms** | Shake at low speed EV or transition |
| **Causes** | Mounts; eMotor; transmission hybrid controls; tire; rare ESS power limiting oscillation |
| **Repair** | Mounts; software; eMotor pinpoint; wheel balance |

---

### PHEV Example 5 — ESS / battery pack capacity loss

| Item | Detail |
|---|---|
| **Symptoms** | EV range far below EPA sticker; charge ends early |
| **Diagnosis** | Cell ΔV; thermal history; campaign software |
| **Repair** | Module or pack; thermal path; SOC gauges relearn |

---

### PHEV Example 6 — “Fuel door” / charge door interlocks confused by owners

| Item | Detail |
|---|---|
| **Symptoms** | Claims car “won’t charge or fuel” |
| **Action** | Verify interlock logic; repair door sensors; explain sequence |

---

## 4. Pacifica PHEV detailed examples

### PHEV Example 1 — Charge fault after cabin water (roof/drain)

| Item | Detail |
|---|---|
| **Symptoms** | OBC/BPCM water damage; intermittent charge |
| **Repair** | Fix drains first; dry modules; replace OBC if corroded |

### PHEV Example 2 — Transmission / ETRS and EV mode conflicts

| Item | Detail |
|---|---|
| **Symptoms** | Shift to D delayed; Ready quirks |
| **Repair** | ETRS calibration; brake switch; PHEV control software |

### PHEV Example 3 — Underbody pack shield scrape → HVIL

| Item | Detail |
|---|---|
| **Symptoms** | After steep driveway hit: no EV |
| **Repair** | Shield; HVIL connectors; pack inspection for puncture (critical safety) |

---

## 5. Hornet PHEV notes

| Issue | Approach |
|---|---|
| DHT/hybrid transmission shudder | Fluid + adaptive + software |
| Charge port faults | Same Stellantis OBC playbook |
| Sport modes vs EV inhibit | Check inhibit PIDs before parts |

---

## Additional MY2020+ field examples

### Example E — Wrangler 4xe water into BCM / cluster after a ford

| Field | Detail |
|---|---|
| **Vehicles** | Wrangler 4xe (and ICE Wrangler hosts with the same drains) |
| **Symptoms** | Random cluster, USB, radio; after deep water or clogged drains; sometimes paired with HV warnings later |
| **Diagnosis** | 1) Drain plugs and carpet wetness. 2) Connector dielectric vs green corrosion on BCM. 3) 12 V AGM health (water events kill LV). 4) wiTECH U-codes vs true ESS faults. 5) Do not condemn the pack for a soaked BCM. |
| **Repair** | Restore drains; dry/replace water-damaged modules; dielectric on connectors; BCM assessment; confirm 4xe propulsion after LV is stable. |

### Example F — Grand Cherokee 4xe 4WD / axle disconnect lamp (non-HV)

| Field | Detail |
|---|---|
| **Vehicles** | Grand Cherokee 4xe; Wrangler 4xe similar 4WD hardware |
| **Symptoms** | Service 4WD; grind; lamp with EV mode still available |
| **Diagnosis** | 1) Disconnect motor command vs actual. 2) Wiring at the axle. 3) Vacuum/electronic actuation per year. 4) Do not confuse with eMotor shudder. 5) Fluid in the axle after a water crossing. |
| **Repair** | Disconnect motor/wiring/actuation per SI; axle service if contaminated; road-test 4WD modes without HVIL stress from torn harnesses. |

### PHEV Example 7 — 4xe “Service Electrified Propulsion” after a 12 V collapse

| Field | Detail |
|---|---|
| **Vehicles** | Wrangler 4xe, Grand Cherokee 4xe |
| **Symptoms** | Propulsion warning; EV mode lost; charge inhibited; limp; started after a dead AGM or a jump |
| **Diagnosis** | 1) wiTECH full scan + freeze frames. 2) 12 V AGM load test—critical. 3) ESS isolation and cell data. 4) ePump command vs current. 5) Hybrid vs engine coolant levels (two necks). 6) Charge port / OBC only if isolation and LV are clean. |
| **Repair** | Restore AGM; HV disconnect lockout; ePump/OBC/ESS/cables as pinpointed; correct hybrid-electronics coolant; flash BPCM/PICU; plug-in charge + EV-only + hybrid transition + 4WD articulation test. |

### PHEV Example 8 — 4xe ePump failed / ESS over-temp on grade

| Field | Detail |
|---|---|
| **Vehicles** | Wrangler 4xe, Grand Cherokee 4xe |
| **Symptoms** | Charge rate collapses; EV disabled when warm; ePump DTCs; ESS hot on a climb |
| **Diagnosis** | 1) Active-test the ePump. 2) Line temp delta. 3) Debris in the hybrid radiator stack. 4) Correct hybrid coolant (not engine fill). 5) Isolation if the pump leaked onto HV parts. |
| **Repair** | ePump; stack clean; vacuum fill/bleed hybrid loop; verify ESS temps on a grade; do not mix fill necks. |

### PHEV Example 9 — 4xe will not AC charge / port LED fault

| Field | Detail |
|---|---|
| **Vehicles** | Wrangler 4xe, Grand Cherokee 4xe |
| **Symptoms** | EVSE error; charge schedule ignored; port LEDs coded; EV miles stuck |
| **Diagnosis** | 1) Known-good EVSE and GFCI. 2) Latch and proximity resistor. 3) OBC / TIM. 4) Stolen-vehicle or schedule settings. 5) BPCM permit and isolation. |
| **Repair** | Port/OBC/software; customer schedule reset; Level 2 overnight to full; then an EV drive. |

### PHEV Example 10 — Wrangler 4xe water at ESS / HVIL after a crossing

| Field | Detail |
|---|---|
| **Vehicles** | Wrangler 4xe used in water above the advertised fording sense |
| **Symptoms** | No EV after a crossing; isolation; HVIL; underbody wet connectors |
| **Diagnosis** | 1) ESS isolation vs BCM water (different jobs). 2) Underbody pack connectors and shields. 3) HVIL pins. 4) Pack puncture vs splash. 5) ePump and hybrid radiator ingested water/mud. |
| **Repair** | Dry/replace connectors; shield/HVIL; pack inspect for puncture (safety-critical); hybrid coolant if contaminated; charge + EV + 4WD test. |

### PHEV Example 4 — Pacifica PHEV roof-drain water into OBC / BPCM

| Field | Detail |
|---|---|
| **Vehicles** | Pacifica Plug-In Hybrid |
| **Symptoms** | Intermittent charge after rain; OBC/BPCM corrosion; cabin water at the pillar |
| **Diagnosis** | 1) Roof/sunroof drains first—fix water before modules. 2) OBC and BPCM for corrosion. 3) Charge-port vs OBC DTCs. 4) 12 V after the soak. 5) Sliding-door drains contributing. |
| **Repair** | Clear drains; dry modules; replace OBC if corroded; Level 2 charge verify; do not keep charging a wet OBC. |

### PHEV Example 5 — Pacifica PHEV charge fault with a dry cabin

| Field | Detail |
|---|---|
| **Vehicles** | Pacifica PHEV |
| **Symptoms** | No plug-in charge; EVSE unhappy; EV mode locked; no roof leak |
| **Diagnosis** | 1) Port latch/pilot. 2) OBC temp and isolation. 3) BPCM permit. 4) Charge schedule / app. 5) Underbody pack shield scrape → HVIL if recent driveway hit. |
| **Repair** | Port/OBC/software; HVIL/shield if impact; ETRS/brake-switch if Ready is also odd; full charge then EV drive. |

### PHEV Example 6 — Pacifica PHEV ETRS / delayed Drive plus EV inhibit

| Field | Detail |
|---|---|
| **Vehicles** | Pacifica PHEV |
| **Symptoms** | Shift to D delayed; Ready quirks; EV mode drops when selecting Drive |
| **Diagnosis** | 1) ETRS calibration and brake-switch. 2) PHEV control software vs transmission. 3) 12 V during the shift. 4) Distinguish from OBC charge faults. 5) Sliding-door module U-codes flooding the bus. |
| **Repair** | ETRS calibration; brake switch; PHEV software; door-module repair if the bus is noisy; EV and Hybrid mode road test. |

### PHEV Example 1 — Hornet R/T PHEV: EV mode lost / propulsion lamp

| Field | Detail |
|---|---|
| **Vehicles** | Dodge Hornet R/T PHEV |
| **Symptoms** | Propulsion warning; EV inhibit; charge refused; sport modes still request engine |
| **Diagnosis** | 1) wiTECH inhibit PIDs before parts. 2) 12 V. 3) Isolation and OBC. 4) DHT/hybrid transmission DTCs vs ESS. 5) Sport-mode vs real EV lockout. |
| **Repair** | Software/inhibits first; OBC/port/ESS as pinpointed; DHT fluid + adaptive if shudder remains; charge + EV drive. |

### PHEV Example 2 — Hornet PHEV DHT shudder / hybrid transmission

| Field | Detail |
|---|---|
| **Vehicles** | Hornet R/T PHEV |
| **Symptoms** | Shudder leaving EV into engine; flare; harsh restart |
| **Diagnosis** | 1) Correct hybrid DHT fluid (not a random ATF). 2) Adaptive values. 3) Software campaigns. 4) Mounts vs clutch. 5) ESS power-limit oscillation mimicking shudder. |
| **Repair** | Fluid + adaptive + software; mounts; eMotor/DHT pinpoint if slip remains; EV-to-engine transition road test. |

### PHEV Example 3 — Hornet PHEV charge-port / OBC faults

| Field | Detail |
|---|---|
| **Vehicles** | Hornet R/T PHEV |
| **Symptoms** | Same Stellantis port LED / EVSE errors as 4xe; Level 2 never completes |
| **Diagnosis** | 1) Known-good EVSE. 2) Latch/pilot. 3) OBC isolation and temp. 4) Charge schedule. 5) Incomplete module flash after a battery R&R. |
| **Repair** | Port/OBC playbook; PMI/flash; Level 2 to full; EV miles confirm. |

### PHEV Example 4 — Hornet PHEV incomplete flash / no Ready

| Field | Detail |
|---|---|
| **Vehicles** | Hornet R/T PHEV after wiTECH session or OTA-style update |
| **Symptoms** | Modules mismatch; no Ready; features missing; car arrived under power |
| **Diagnosis** | 1) Support 12 V. 2) Which modules finished. 3) Do not road-test mid-config. 4) Inhibit PIDs vs real HV fault. 5) Gateway/BPCM/PICU sequence per SI. |
| **Repair** | Complete Stellantis flash on a booster; then isolation and a charge cycle; EV + Hybrid verification. |

---

## 6. Quick triage

| Symptom | First check | Next |
|---|---|---|
| Service Electrified Propulsion | 12 V + wiTECH | ePump/ESS/OBC |
| No charge | Port LEDs + EVSE | OBC |
| EV lost when warm | ePump + hybrid coolant | ESS thermal |
| Shudder | Mounts | eMotor/software |
| After underbody hit | HVIL + pack inspect | Shield/pack |

---

## 7. Return-to-service

- [ ] Both coolant systems correct and bled  
- [ ] AC charge to full completed  
- [ ] EV and Hybrid modes verified  
- [ ] wiTECH clears; no pending BPCM faults  
- [ ] 4WD/axle functions (Wrangler/GC) OK  

---

*4xe HV procedures are mandatory—use the official Stellantis high-voltage manual for the VIN.*
