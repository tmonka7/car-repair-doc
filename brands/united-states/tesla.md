# Tesla — Repair Guide (MY2020+)

**Region focus:** United States  
**Diagnostics:** In-car Service Mode / Toolbox (service centers & authorized)  
**Architecture:** HV pack, drive units, heat pump (many 2021+), LV AGM or lithium  
**Safety:** Pyro fuse may be open after crash or severe HV fault—vehicle will not ready

---

## 1. 2020+ model map

| Model | Notes |
|---|---|
| Model 3 / Y | Volume BEVs; heat pump on many; Highland/Juniper refreshes later |
| Model S / X | Refreshed “Plaid”/dual-motor lines |
| Cybertruck | Structural battery, 48 V systems (later years) |

---

## 2. Low-voltage & body examples

### Example A — LV battery death (classic overnight brick)

| Field | Detail |
|---|---|
| **Symptoms** | Center screen dark; doors use mechanical release; no HV contactors |
| **Causes** | Aged LV battery; vampire drain (Sentry, Cabin Overheat, third-party devices); DC-DC failure; lithium LV mismanagement on newer cars |
| **Diagnosis** | Support LV externally; read alerts in Service Mode; measure DC-DC output when HV awake |
| **Repair** | Replace LV (correct AGM or Li type); investigate Sentry settings; repair DC-DC; verify contactors close |

### Example B — Phantom braking / Autopilot camera obstruction

| Field | Detail |
|---|---|
| **Symptoms** | Sudden brake events; camera dirty warnings chronic |
| **Repair** | Clean cameras; check firmware; camera replacement + calibration drive; windshield quality |

### Example C — Door handle / falcon/trunk latch faults

| Field | Detail |
|---|---|
| **Symptoms** | Handle won’t present; latch ajar false |
| **Repair** | Handle motor/harness; latch calibration; water intrusion into handle pocket |

### Example D — Suspension creak / front lateral link (3/Y)

| Field | Detail |
|---|---|
| **Symptoms** | Clunk over bumps |
| **Repair** | Inspect bushings, control arms, hub; torque to spec after alignment |

---

## 3. BEV propulsion & HV — detailed examples

### BEV Example 1 — “Unable to Drive” / contactors open

| Item | Detail |
|---|---|
| **Alerts (examples)** | BMS_a064, contactors welded/open variants, pyro blown, isolation |
| **Symptoms** | Vehicle won’t enter Drive; may charge or may not |

**Troubleshooting**

1. Provide solid LV support first.
2. Service Mode → Alerts + Contactor state.
3. Check pyro fuse if crash or airbag history.
4. Isolation resistance and pack coolant contamination (oil in coolant is critical).
5. Inspect HV battery junction / main contactors.

**Repair procedure**

1. HV lockout per Tesla procedure (pack isolation confirmed).
2. Replace pyro fuse / contactors / pack only as alert tree directs.
3. Coolant vacuum refill with specified Tesla coolant.
4. Clear alerts; firmware check.
5. Drive cycle + Supercharger test if isolation was involved.

---

### BEV Example 2 — Supercharging stuck at low kW / thermal

| Item | Detail |
|---|---|
| **Symptoms** | Peak 20–50 kW only; “Battery conditioning”; heat pump noisy |
| **Causes** | Octovalve/super manifold faults; low coolant; radiator shutters stuck; extreme SOC/temp; software |

**Troubleshooting**

1. Thermal system pressures/temps in Service Mode.
2. Coolant level in bottle; look for oil contamination.
3. Shutter operation; radiator debris.
4. Compare inlet vs pack cell temps.

**Repair**

Replace octovalve/manifold/heat pump components as indicated → full vacuum fill & bleed → verify Supercharger curve (should rise after conditioning).

---

### BEV Example 3 — Drive unit whine / click on regen

| Item | Detail |
|---|---|
| **Symptoms** | Gear whine proportional to speed; click when lifting throttle |
| **Differentiate** | Wheel bearing (corner-specific), tire noise, drive unit |
| **Repair** | Drive unit replacement per TSB/policy; road-test regen settings |

---

### BEV Example 4 — HV coolant leak onto pack connectors

| Item | Detail |
|---|---|
| **Symptoms** | Isolation faults; sweet smell; white residue |
| **Repair** | Immediate stop-drive guidance; dry/replace contaminated connectors; pressure-test loops; never ignore glycol on HV joints |

---

### BEV Example 5 — Charge port / latch / proximity faults

| Item | Detail |
|---|---|
| **Symptoms** | Charge door won’t open; cable stuck; blinking red charge port |
| **Repair** | Charge port ECU; latch; manual release; pin damage from partially inserted cables |

---

### BEV Example 6 — BMS brick imbalance / persistent range loss

| Item | Detail |
|---|---|
| **Symptoms** | Sudden range drop; charge stops early; pack imbalance alerts |
| **Diagnosis** | Cell group voltages; contactors behavior near full SOC |
| **Repair** | Pack section or full pack; balancing charge procedures; thermal verification |

---

### BEV Example 7 — Heat pump “whooshing” / poor cabin heat

| Item | Detail |
|---|---|
| **Symptoms** | Loud refrigerant noise; weak heat below 0°C |
| **Repair** | Heat pump assembly; valves; refrigerant recovery with EV-trained tech; software |

---

### BEV Example 8 — After collision: HV interlock + restraint

| Item | Detail |
|---|---|
| **Symptoms** | Airbags deployed; no Drive; pyro open |
| **Repair** | Full SRS + HV checklist; pyro; harness; pack inspection for crush; structural battery rules |

---

## 4. Cybertruck-specific notes (high level)

| Topic | Guidance |
|---|---|
| 48 V system | Do not treat as 12 V architecture; use Tesla procedures only |
| Steer-by-wire | Calibration critical after related work |
| Structural pack | Collision → specialized structural/HV assessment |

---

## Additional MY2020+ field examples

### BEV Example 9 — Lithium LV brick after Sentry / Cabin Overheat

| Field | Detail |
|---|---|
| **Vehicles** | Model 3/Y (2021+ lithium LV); some later S/X |
| **Symptoms** | Dark center screen overnight; mechanical door releases only; HV contactors never close; jump-pack restores screens briefly |
| **Diagnosis** | 1) Support LV externally before opening Service Mode. 2) Resting LV voltage and age (lithium packs often look “OK” until they collapse under load). 3) Sleep current after Sentry, Cabin Overheat, Dashcam, and third-party USB/trackers. 4) DC-DC output when HV is awake (should hold LV). 5) Alerts for BMS/DC-DC vs a simple depleted brick. |
| **Repair** | Replace the correct AGM or lithium LV type; turn off always-on cabin features; repair DC-DC if it will not support LV; confirm contactors close and a parked overnight hold. |

### BEV Example 10 — Pyro fuse open / contactors will not close

| Field | Detail |
|---|---|
| **Vehicles** | 3/Y/S/X after crash, airbag event, or severe HV fault |
| **Symptoms** | Unable to Drive; charge may also refuse; pyro or contactor alerts; no Ready after body repair that “only” replaced airbags |
| **Diagnosis** | 1) Stable LV first—low LV mimics open contactors. 2) Service Mode: contactor state, pyro status, crash flags. 3) Airbag/restraint history even if the car was driven afterward. 4) Isolation kΩ and coolant contamination before condemning the pack. 5) Junction-box / main contactor inspection per Tesla HV lockout. |
| **Repair** | HV lockout; replace pyro fuse / contactors / pack only as the alert tree directs; complete SRS + HV checklist; firmware check; drive cycle. Do not bypass a blown pyro. |

### BEV Example 11 — Supercharge stuck low after thermal / inlet overtemp

| Field | Detail |
|---|---|
| **Vehicles** | 3/Y/S/X on V3/V4 Superchargers |
| **Symptoms** | Peak 20–50 kW after preconditioning; inlet or cable overtemp; heat pump noisy; “Battery conditioning” that never finishes |
| **Diagnosis** | 1) Supercharger session vs AC charge (AC OK points away from the pack). 2) Pack vs inlet temperatures in Service Mode. 3) Coolant bottle level and oil-in-coolant. 4) Octovalve / super-manifold / radiator shutters. 5) Charge-port pins and a second known-good stall. |
| **Repair** | Restore thermal loop (pumps, octovalve, heat pump, shutters); vacuum-fill Tesla coolant; repair charge-port inlet if overtemp; verify Supercharger curve rises after conditioning. |

### BEV Example 12 — Rear drive unit click on regen / speed-related whine

| Field | Detail |
|---|---|
| **Vehicles** | Model 3/Y rear motor; dual-motor front unit separately |
| **Symptoms** | Click when lifting off; gear whine proportional to speed; not corner-specific like a hub |
| **Diagnosis** | 1) Road-test: noise follows vehicle speed vs one wheel. 2) Swap regen setting—click at lift-off is classic drive-unit lash. 3) Chassis ear at the unit vs hub/tire. 4) Half-shaft click on takeoff vs unit bearing. 5) Alerts for inverter/drive unit before NVH-only replacement. |
| **Repair** | Drive-unit replacement per Tesla policy/TSB; torque half-shafts; road-test with regen on/off; do not confuse with wheel bearing or tire noise. |

### BEV Example 13 — Glycol or inverter oil on pack connectors

| Field | Detail |
|---|---|
| **Vehicles** | 3/Y/S/X with pack-adjacent coolant joints |
| **Symptoms** | Isolation faults; sweet smell; white residue; oil film in the coolant bottle (critical) |
| **Diagnosis** | 1) Stop-drive guidance—do not keep Supercharging. 2) Isolation sectional: heater, compressor, charge path, pack. 3) Pressure-test loops; inspect orange connectors and pack seams. 4) Coolant appearance (oil contamination vs plain glycol). 5) Service Mode thermal and BMS isolation history. |
| **Repair** | Immediate HV lockout; dry/replace contaminated connectors; repair the leak (manifold, lines, pack coupling); never ignore glycol on HV joints; isolation retest dry, then AC and DC charge. |

### BEV Example 14 — Charge port latch / proximity / adapter faults

| Field | Detail |
|---|---|
| **Vehicles** | 3/Y/S/X; NACS cars using CCS adapters |
| **Symptoms** | Charge door will not open; cable stuck; blinking red port; adapter hot; AC works, DC adapter fails |
| **Diagnosis** | 1) Manual release and latch position. 2) Pin damage from a partially inserted handle. 3) Proximity/pilot on a known-good EVSE. 4) Charge-port ECU alerts vs OBC. 5) Adapter and stall before replacing the port. |
| **Repair** | Charge-port ECU/latch/manual release; replace damaged pins; customer education on full insertion; verify Level 2 and DC (or adapter) sessions. |

### BEV Example 15 — Heat pump whoosh / no cabin heat / winter range collapse

| Field | Detail |
|---|---|
| **Vehicles** | 2021+ 3/Y heat-pump cars; later S/X |
| **Symptoms** | Loud refrigerant whoosh; weak heat below 0 °C; PTC-only feel; range far below winter expectation |
| **Diagnosis** | 1) Service Mode heat-pump and octovalve positions vs command. 2) Refrigerant pressures with an EV-trained tech. 3) Cabin vs battery loop mix-up. 4) Software thermal maps after a recent firmware. 5) Compare to a same-weather known-good car of the same hardware. |
| **Repair** | Heat-pump assembly / valves as indicated; specified refrigerant recovery; octovalve if stuck; firmware; cabin-heat verification in the cold. |

### BEV Example 16 — Autopilot / FSD camera obstruction after glass or fascia

| Field | Detail |
|---|---|
| **Vehicles** | HW3/HW4 3/Y/S/X; Cybertruck cameras |
| **Symptoms** | Autopilot/FSD unavailable; chronic camera dirty; phantom braking after windshield or front fascia |
| **Diagnosis** | 1) Clean all cameras; check heater/washer where fitted. 2) Service Mode camera image and alignment. 3) Aftermarket or wrong-spec glass. 4) Firmware camera calibration drive incomplete. 5) Bumper/fascia camera aim after collision. |
| **Repair** | Tesla-spec windshield; camera replacement + calibration drive; fascia aim; do not tint over the camera envelope. |

### BEV Example 17 — Model S/X air suspension lean / compressor timeout

| Field | Detail |
|---|---|
| **Vehicles** | Model S/X with air ride (refreshed Plaid/dual-motor included) |
| **Symptoms** | One corner low overnight; compressor runs endlessly; Easy Entry height faults; ride harsh |
| **Diagnosis** | 1) Overnight leak-down per corner. 2) Listen bags/lines vs compressor/dryer. 3) Height-sensor voltages. 4) Separate from HV thermal derate (a lean car is not a pack fault). 5) Aftermarket lowering valves. |
| **Repair** | Fix leaks; dryer/compressor; height calibration; torque links; road-test all height modes. |

### BEV Example 18 — Cybertruck 48 V brick / steer-by-wire unavailable

| Field | Detail |
|---|---|
| **Vehicles** | Cybertruck (48 V architecture, later years) |
| **Symptoms** | No steer-by-wire; screens dark; 48 V alerts; jumping a 12 V pack does nothing useful |
| **Diagnosis** | 1) Do **not** treat as 12 V—confirm 48 V service docs for the VIN. 2) Support the Tesla 48 V system only with specified equipment. 3) DC-DC / 48 V battery state in Service Mode. 4) Steer-by-wire calibration flags after related work. 5) Structural-pack crash flags if collision history. |
| **Repair** | Tesla 48 V battery/DC-DC per procedure; steer-by-wire calibration; structural/HV assessment after any crush; never jury-rig 12 V jump methods. |

### BEV Example 19 — Incomplete firmware / MCU black / features missing

| Field | Detail |
|---|---|
| **Vehicles** | All Tesla after a failed infotainment or vehicle firmware install |
| **Symptoms** | Black MCU; missing Autopilot; contactors odd; “install failed”; car drove in before the update |
| **Diagnosis** | 1) Support LV solidly—starved LV aborts flashes. 2) Service Mode / Toolbox: incomplete config vs real HV fault. 3) Do not road-test mid-install. 4) MCU vs vehicle controller mismatch. 5) Aftermarket MCU “upgrades” that broke signing. |
| **Repair** | Complete the Tesla firmware sequence on stable LV; replace MCU only if the reflash tree says so; confirm Drive, charge, and cameras after. |

### BEV Example 20 — Dual-motor: one drive unit silent / RWD-only feel

| Field | Detail |
|---|---|
| **Vehicles** | Dual-motor 3/Y; Plaid S/X |
| **Symptoms** | Weak launch; front or rear unit quiet; inverter alerts; traction lamp |
| **Diagnosis** | 1) Which axle is producing torque in Service Mode. 2) Isolation and coolant to that inverter. 3) HV connector at the silent unit. 4) Mismatched tires mimicking a dead axle. 5) Contactor/pack power available to both inverters. |
| **Repair** | Match tires; repair that drive unit/inverter and coolant; load-test from a stop; isolation retest. |

### BEV Example 21 — Cabin climate parked / Camp Mode LV collapse

| Field | Detail |
|---|---|
| **Vehicles** | 3/Y/S/X left in Cabin Overheat, Dog, or Camp |
| **Symptoms** | Morning brick; climate was on for hours; DC-DC never woke; same pattern as Sentry drain |
| **Diagnosis** | 1) Settings history (Cabin Overheat, Keep Climate On). 2) LV type and state of health. 3) DC-DC wake when HV should have supported climate. 4) Aftermarket always-hot USB. 5) Heat-pump vs PTC load in extreme ambient. |
| **Repair** | Recover/replace LV; repair DC-DC if it will not support parked climate; educate on Camp/Sentry limits; overnight verification with climate off. |

### BEV Example 22 — After collision: incomplete HV restore / airbags + pack crush

| Field | Detail |
|---|---|
| **Vehicles** | Any Tesla after SRS deployment or underbody impact |
| **Symptoms** | Body shop released the car; still no Drive; pyro open; isolation low; structural battery questions on 3/Y/Cybertruck |
| **Diagnosis** | 1) Full SRS + HV checklist, not just airbag lights. 2) Pyro and contactor state. 3) Pack crush / coolant at the pack. 4) HVIL through repaired harnesses. 5) Camera/radar/Autopilot after fascia and glass. |
| **Repair** | Tesla structural/HV assessment; pyro; harness; pack as required; Autopilot calibration; AC/DC charge and a loaded drive only after lockout is reversed correctly. |

---

## 5. Quick triage

| Symptom | First check | Likely deeper |
|---|---|---|
| No Drive | LV + alerts | Contactors/pyro/isolation |
| Slow Supercharge | Thermal loop | Octovalve/heat pump |
| Whine | Speed vs corner | Drive unit vs bearing |
| Charge port red | Cable/port pins | Charge port ECU |
| Range collapse | Cell imbalance | Pack |

---

## 6. Return-to-service

- [ ] No critical alerts  
- [ ] Contactors close reliably  
- [ ] Coolant level stable after drive  
- [ ] AC and DC charge verified  
- [ ] Autopilot cameras clear / calibrating  

---

*Tesla procedures and alert IDs change with firmware—use current Toolbox/Service documentation.*
