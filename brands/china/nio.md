# NIO — Repair Guide (MY2020+)

**Region focus:** China (also Europe select)  
**Unique:** Battery-as-a-Service (BaaS) + Power Swap stations  
**Models:** ES6/ES7/ES8, ET5/ET5T/ET7, EC6/EC7, etc.  
**Diagnostics:** NIO service diagnostics; swap station logs are gold for pack issues

---

## 1. 2020+ model map

| Series | Type | Notes |
|---|---|---|
| ES / EC | BEV SUV/coupe SUV | Swap-capable packs |
| ET | BEV sedan | Swap-capable |
| Newer 900 V lines | BEV | Check market year |

---

## 2. Body / ADAS / LV examples

### Example A — LV drain with Always-On cabin features

| Field | Detail |
|---|---|
| **Symptoms** | No Ready after weekend; NOMI/cabin awake |
| **Repair** | Sleep draw; DCM; software; LV battery; disable unnecessary Always-On |

### Example B — Air suspension lean (ES/ET select)

| Field | Detail |
|---|---|
| **Symptoms** | Corner down; compressor overtime |
| **Repair** | Leak test; dryer; compressor; height calibration |

### Example C — Aquila Super Sensing calibration after glass/bumper

| Field | Detail |
|---|---|
| **Symptoms** | NOP/Navigate on Pilot unavailable |
| **Repair** | Camera/radar/lidar calibration per NIO |

### Example D — Door soft-close / falcon-like power doors (select)

| Field | Detail |
|---|---|
| **Symptoms** | Reverse, pinch, water in door module |
| **Repair** | Latch; drains; module |

### Example E — Tire / TPMS after swap-related jacking

| Field | Detail |
|---|---|
| **Symptoms** | TPMS faults; rubbing after wrong height mode |
| **Repair** | Height mode for tire service; TPMS relearn |

---

## 3. BEV + Power Swap — detailed examples

### BEV Example 1 — After swap: cannot Ready / HVIL open

| Item | Detail |
|---|---|
| **Symptoms** | Immediately after Power Swap: vehicle won’t enter Ready; HVIL or pack auth errors |
| **Why unique** | Swap mates HVIL rails, cooling quick-couplers, and digital pack authentication |

**Troubleshooting**

1. Pull swap station log (success flags, coupler pressure, HVIL).
2. Vehicle BMS: pack ID auth, HVIL status, isolation.
3. Inspect pack rail connectors for bent pins/contamination.
4. Check coolant level—loss after swap is common if coupler mis-mate.

**Repair procedure**

1. Reseat or replace HVIL/pack connectors.
2. Repair coolant quick-couplers; vacuum refill battery loop; leak check.
3. Bind/authenticate pack with NIO procedure.
4. Isolation retest.
5. Ready → short drive → AC charge → (optional) another swap verification.

---

### BEV Example 2 — Coolant loss after “successful” swap

| Item | Detail |
|---|---|
| **Symptoms** | Sweet smell; thermal derate days after swap; pink/blue residue near pack rails |
| **Repair** | Coupler seals; underbody lines; pressure test; never ignore dried coolant on HV rails |

---

### BEV Example 3 — Isolation fault not related to swap

| Item | Detail |
|---|---|
| **Symptoms** | Insulation warning; reduced power |
| **Diagnosis** | Section OBC, PTC, compressor, pack, drive units |
| **Repair** | Replace leaking HV PTC/compressor; dry connectors; pack if needed |

---

### BEV Example 4 — Drive unit / reduction gear whine

| Item | Detail |
|---|---|
| **Symptoms** | Constant-speed whine; torque vibration |
| **Repair** | EDU replacement; distinguish wheel bearing with chassis ear |

---

### BEV Example 5 — DC charge abort with non-swap pack issues

| Item | Detail |
|---|---|
| **Symptoms** | GB/T or CCS session dies; cell ΔV |
| **Repair** | Thermal pumps; BMS; consider pack swap as service method if BaaS policy allows; inlet pins |

---

### BEV Example 6 — Pack authentication / firmware mismatch after mobile service

| Item | Detail |
|---|---|
| **Symptoms** | Pack installed but features limited; warnings |
| **Repair** | Dealer flash bind; matching firmware generations |

---

### BEV Example 7 — Regenerative braking complaints / brake blending

| Item | Detail |
|---|---|
| **Symptoms** | Grabby or soft pedal after pad service |
| **Repair** | Bleed; EPB service mode; brake ECU calibration; wheel-speed cleanliness |

---

## 4. Swap-station influenced failure patterns (summary)

| Pattern | Symptom | First action |
|---|---|---|
| HVIL pin damage | No Ready post-swap | Inspect rails |
| Coupler drip | Thermal derate later | Pressure test |
| Auth fail | Pack rejected | Station + BMS logs |
| Wrong pack class | Performance limits | Verify pack SKU |

---

## Additional field examples

### BEV Example 8 — Wrong pack class / SKU after a station or mobile swap

| Item | Detail |
|---|---|
| **Vehicles** | ES6 / ES8 / ET5 / ET7 on BaaS |
| **Symptoms** | Ready, but power or range capped; “pack not matched” or performance-limit messages |
| **Diagnosis** | 1. Station log: pack SKU vs vehicle class. 2. BMS pack ID vs NIO catalog. 3. Firmware generation on the newly installed pack. |
| **Repair** | Swap to the correct pack class; bind / authenticate; do not chase EDU hardware for a SKU mismatch. |

---

### BEV Example 9 — Coolant coupler weep that only shows after a heat cycle

| Item | Detail |
|---|---|
| **Vehicles** | Any swap-capable ES / ET / EC |
| **Symptoms** | No drip on the pad; days later thermal derate and residue on HV rails |
| **Diagnosis** | 1. Pressure-test battery loop. 2. UV dye at quick-couplers. 3. Compare pre/post-swap coolant level in station log. 4. Isolation if glycol reached orange connectors. |
| **Repair** | Coupler seals / lines; vacuum refill; 24 h level hold; isolation retest if rails were wet. Never ignore dried coolant on HV rails. |

---

### BEV Example 10 — Pack authentication fail after mobile service (not a station swap)

| Item | Detail |
|---|---|
| **Vehicles** | ET5 / ET7 after roadside pack work |
| **Symptoms** | Pack physically seated; features limited; auth or firmware-mismatch warnings |
| **Diagnosis** | BMS bind status; pack firmware vs vehicle generation; leftover station auth from a previous pack. |
| **Repair** | Dealer flash bind; matching firmware generations; Ready → drive → charge. |

---

### BEV Example 11 — Isolation after typhoon / standing water (not swap-related)

| Item | Detail |
|---|---|
| **Vehicles** | ES8, ES6, ET5T (underbody HV routes) |
| **Symptoms** | Insulation warning after deep water; limp; charge refused |
| **Diagnosis** | Section OBC, PTC, compressor, pack, drive units; inspect swap-rail connectors even if no recent swap (they sit low). |
| **Repair** | Dry / replace connectors; HV heater or compressor if leaking to the bus; pack if module isolation fails; dry retest. |

---

### BEV Example 12 — 900 V-class charge abort on a 500 V pile

| Item | Detail |
|---|---|
| **Vehicles** | Newer 900 V NIO lines (confirm VIN) |
| **Symptoms** | Handshake fail or boost thermal abort; older 400 V NIOs on the same pile are fine |
| **Diagnosis** | Pile voltage class; boost / charge DTCs; pack temp; inlet pins. |
| **Repair** | Boost / inlet / BMS software; validate on a compatible high-voltage pile. Architecture first — do not use an ES6 400 V flowchart. |

---

### BEV Example 13 — DC charge abort from cell ΔV, swap offered as service

| Item | Detail |
|---|---|
| **Vehicles** | BaaS cars with persistent imbalance |
| **Symptoms** | GB/T or CCS dies mid-curve; AC finishes but range is short |
| **Diagnosis** | Cell voltages under DC; thermal pumps; inlet pins; station vs vehicle. |
| **Repair** | Thermal first; then pack swap as a **service method** if BaaS policy allows; bind the new pack; log a full DC curve. |

---

### BEV Example 14 — Dual-motor: one axle disabled after a swap (HVIL only on that rail)

| Item | Detail |
|---|---|
| **Vehicles** | ES8, ET7 AWD |
| **Symptoms** | AWD unavailable immediately after swap; that axle’s inverter DTCs; other axle fine |
| **Diagnosis** | Swap-rail HVIL pins for that circuit; coupler not fully home on one side; wheel-speed. |
| **Repair** | Reseat / replace the damaged rail pins; authenticate; load-test AWD. Do not replace an EDU until rails prove out. |

---

### BEV Example 15 — OBC AC cut-out at home, swap-station DC OK

| Item | Detail |
|---|---|
| **Vehicles** | ET5, ES6 |
| **Symptoms** | Home EVSE stops mid-session; Power Swap and DC still work |
| **Diagnosis** | Site earth / GFCI; OBC coolant and temps; inlet latch on AC. |
| **Repair** | OBC cooling or OBC R&R; inlet; software; electrician on earth/neutral if only one site fails. |

---

### BEV Example 16 — Winter PTC / heat-pump: range collapse plus isolation flicker

| Item | Detail |
|---|---|
| **Vehicles** | ES / ET with HV PTC |
| **Symptoms** | Cabin cold; SOC dump while parked with climate; intermittent insulation warning |
| **Diagnosis** | PTC current; heat-pump valves; isolation with PTC commanded vs off. |
| **Repair** | HV lockout; PTC or valve block; isolation retest; winter heat test. |

---

### BEV Example 17 — Charge-port lock stuck (GB/T or CCS export)

| Item | Detail |
|---|---|
| **Vehicles** | China GB/T and Europe CCS NIOs |
| **Symptoms** | Cable will not release; next handshake fails |
| **Diagnosis** | Manual release; lock motor; pin burn; water in port. |
| **Repair** | Replace lock / inlet; reseal; lock-cycle + charge log. Export cars: do not assume a GB/T release location. |

---

### BEV Example 18 — Incomplete OTA → NOP / NAD greyed, U-codes

| Item | Detail |
|---|---|
| **Vehicles** | ET5, ET7, ES8 after a cabin-domain OTA |
| **Symptoms** | Features missing; multiple U-codes; sometimes no Ready |
| **Diagnosis** | Which domain failed; 12 V during the update; do not confuse with a bad pack auth. |
| **Repair** | Stabilize LV; complete dealer flash; do not swap a pack or EDU mid-config. |

---

### BEV Example 19 — Aquila / NAD after bumper or lidar bracket work

| Item | Detail |
|---|---|
| **Vehicles** | ET7, ES8, EC7 with Aquila Super Sensing |
| **Symptoms** | NOP / NAD unavailable after a parking-sensor or bumper respray |
| **Diagnosis** | Radar / lidar / camera cal status; paint thickness on the radar cover; bracket torque. |
| **Repair** | Full NIO sensor suite calibration; correct brackets; do not “clear codes and drive.” |

---

### BEV Example 20 — Swap-rail contamination (road film / salt) → intermittent HVIL

| Item | Detail |
|---|---|
| **Vehicles** | Northern-China winter ES / ET |
| **Symptoms** | Random no-Ready, often after a swap or a wash; HVIL flickers |
| **Diagnosis** | Rail pins for film and corrosion; station log coupler-mate quality; isolation. |
| **Repair** | Clean / replace rails per NIO; protect seals; Ready + short drive + optional swap verify. |

---

### BEV Example 21 — V2L / Power Swap adjacent discharge not working

| Item | Detail |
|---|---|
| **Vehicles** | Models with external discharge |
| **Symptoms** | Adapter in; no output; charge still works |
| **Diagnosis** | SOC floor; settings; known-good adapter; OBC discharge DTCs. |
| **Repair** | Settings first; adapter; OBC if discharge function is dead. |

---

## 5. Quick triage

| Symptom | First check | Next |
|---|---|---|
| Fail right after swap | Station log + HVIL | Couplers/auth |
| Isolation | Section HV loads | PTC/pack |
| Whine | Corner isolate | EDU |
| Dead LV | Sleep draw | Battery/DC-DC |
| NOP down | Sensors/glass | Calibration |

---

## 6. Return-to-service

- [ ] Pack authenticated  
- [ ] Coolant stable 24 h after coupler work  
- [ ] Isolation OK  
- [ ] Charge OK  
- [ ] Suspension calibrated if opened  

---

*Coordinate with NIO Power Swap operations when diagnosing post-swap faults—station data shortens diagnosis dramatically.*
