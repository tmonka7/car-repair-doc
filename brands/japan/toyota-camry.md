# Toyota Camry — Repair Guide (MY2020+)

**Platform:** TNGA-K (GA-K)  
**Scan tool:** Techstream / GTS+  
**Plants:** Georgetown, Kentucky (TMMK); Tsutsumi (Japan); Guangzhou (GAC Toyota); other regional plants  
**HV:** On hybrids, pull the service plug in the luggage compartment (confirm the exact cover in VIN SI), wait the specified time, and verify 0 V before any orange-cable work

Related family notes: [toyota-lexus.md](toyota-lexus.md)

---

## 1. Identify the car first

Two generations sit in the 2020+ window. Fluids, 12 V type, hybrid battery chemistry, and all-wheel drive are not interchangeable between them.

| Generation | Years in this guide | North America | Other markets |
|---|---|---|---|
| **XV70** (8th) | MY2020–2024 | 2.5 ICE, 3.5 V6, 2.5 hybrid | Same families; China-built XV70 also common |
| **XV80** (9th) | MY2025– | **Hybrid only** (FWD or electronic AWD) | Hybrid plus, in some regions, 2.0 / 2.5 ICE |

### XV70 powertrains (MY2020–2024)

| Code / family | Engine | Transmission | Drive |
|---|---|---|---|
| A25A-FKS (Dynamic Force 2.5) | 2.5 L D-4S (port + direct), typically 203 hp | **UB80E** 8-speed automatic | FWD; AWD from MY2020 on many trims |
| 2GR-FKS | 3.5 L V6 D-4S, typically 301 hp | **UA80E** (FWD) / **UA80F** (AWD) 8-speed | FWD; AWD on some trims |
| A25A-FXS hybrid | 2.5 L Atkinson-cycle + MG1/MG2 | **P710** eCVT (power-split) | FWD |

XV70 hybrid traction battery is **nickel-metal hydride** under the rear seat. 12 V on stop-start ICE cars is **AGM** and must be registered after replacement.

### XV80 powertrains (MY2025+)

| Code / family | Engine | Transmission | Drive |
|---|---|---|---|
| A25A-FXS + 5th-gen THS (NA) | 2.5 L hybrid, ~184 hp engine | Aisin T110-class eCVT | FWD: ~225 hp combined |
| Same + rear motor (NA AWD) | Rear PM motor ~30 kW / 40 hp | eCVT + electronic on-demand AWD | ~232 hp combined |
| A25A-FKS + UB80 (non-NA) | 2.5 ICE | 8-speed automatic | FWD (select markets) |
| M20A-FKS / M20C-FKS (China and some exports) | 2.0 ICE | K120 CVT with a physical first gear | FWD |

XV80 hybrid traction battery is **lithium-ion**. Do not use XV70 NiMH pack tests or module policy on an XV80.

### Workshop setup

| Item | Practice |
|---|---|
| **Scan tool** | Techstream for idle-stop inhibits, 8AT adaptations, hybrid inverter temps, block voltages, ADAS calibration. Generic OBD-II will not register an AGM battery or run hybrid utilities. |
| **Engine oil** | A25A: typically **0W-16** (API SN/SP or ILSAC GF-6B) — confirm the cap. 2GR-FKS: typically **0W-20**. Short-trip dilution is common; do not extend intervals on city-only cars. |
| **ATF** | UB80 and UA80 both take Toyota **ATF WS**. Fluid level is temperature-specific on the overflow method. Wrong fluid or a cold level check causes flare that looks like a failed valve body. |
| **Hybrid transaxle** | Specified WS / hybrid fluid only. Not a belt CVT — do not “CVT-flush” a P710. |
| **Coolant** | SLLC (pink). ICE has one loop. Hybrids have a **second inverter / MG loop** with its own reservoir, electric pump, and fill procedure. |
| **12 V** | ICE stop-start: AGM + Techstream battery registration. Hybrid: auxiliary 12 V plus DC-DC; a jump-start that restores Ready is not a completed repair. |
| **ADAS** | XV70: Toyota Safety Sense 2.5+ (forward camera, radar). XV80: TSS 3.0. Recalibrate after windshield, bumper, or alignment. |
| **Campaigns** | Always run the VIN for open Toyota campaigns before condemning a 2.5 block, fuel pump, occupant sensor, or 2025 inverter fastener. |

---

## 2. ICE / chassis — Camry-specific cases

### Example A — 2.5 (UB80) 8-speed harsh shift, flare, or shudder

| Field | Detail |
|---|---|
| **Vehicles** | MY2020–2024 Camry A25A-FKS with **UB80E** (not the V6 UA80) |
| **Symptoms** | Bang into 2nd/3rd, flare on light throttle, shudder 20–50 km/h, delayed reverse |
| **Root causes** | Adaptations lost after battery work; ATF WS low or checked cold; TCM calibration; valve body; rare converter |
| **Diagnosis** | 1) Confirm UB80 from the VIN, not UA80. 2) Fluid level at the specified ATF temperature on Techstream. 3) Record shift times and slip. 4) Check TCM software vs TSB for that year. |
| **Repair** | Correct WS level and quality → TCM update → reset learned values → valve body or transaxle only if slip remains. Road-test 1–2–3 upshifts and 3–2 coast down. |

### Example B — V6 (UA80) whine or grind

| Field | Detail |
|---|---|
| **Vehicles** | MY2020–2024 Camry 2GR-FKS with **UA80E / UA80F** |
| **Symptoms** | Gear whine or grind with speed or on light accel; not a tire howl |
| **Root causes** | Front carrier pinion-shaft wear on some production ranges (Toyota TSB: replace the transaxle when serial range matches) |
| **Diagnosis** | Confirm UA80, not UB80. Road-test vs known tire/bearing noise. Check transmission serial against the current TSB range. |
| **Repair** | If the bulletin applies, replace the transaxle assembly per TIS. If it does not apply, continue with the repair-manual noise diagnosis — do not install a UB80 into a V6 car. |

### Example C — A25A electric water pump leak / P26CA, P26CB

| Field | Detail |
|---|---|
| **Vehicles** | Especially MY2020 Camry / Camry Hybrid A25A-FKS and A25A-FXS |
| **Symptoms** | Coolant at the pump body or connector; MIL; P26CB71, P26CA14, P26CA31 |
| **Diagnosis** | Inspect the electric pump and connector for pink residue; confirm ECM software; do not confuse this leak with the hybrid inverter loop on HEV cars |
| **Repair** | Replace the leaking pump, repair the connector, fill SLLC, bleed, then ECM update if a TSB requires it. Recheck level cold. |

### Example D — Oil leak at the pan / stiffening crankcase (2023–2024)

| Field | Detail |
|---|---|
| **Vehicles** | MY2023–2024 Camry and Camry Hybrid with A25A-FKS / A25A-FXS |
| **Symptoms** | Oil at the pan-to-stiffener joint, not the drain plug |
| **Repair** | Confirm the leak at that joint. Remove the pan, apply the specified FIPG, reinstall to TIS torque and wait time. Do not reuse a crushed pan. |

### Example E — Valve-cover / cam-cover seepage (North American A25A)

| Field | Detail |
|---|---|
| **Vehicles** | MY2020–2022 NAP A25A-FKS / FXS |
| **Symptoms** | Oil at the cover rail, burning smell on the exhaust after a highway run |
| **Repair** | Clean, confirm the source, replace the cover gasket (and cover if warped). Recheck after a heat cycle. |

### Example F — A25A D-4S cold misfire / P030x

| Field | Detail |
|---|---|
| **Vehicles** | 2.5 ICE and 2.5 hybrid |
| **Symptoms** | Rough cold idle, flashing MIL under load, P0301–P0304 |
| **Root causes** | Coil or plug (gap and heat range); port-injector contribution on D-4S; fuel quality; rare high-pressure pump |
| **Diagnosis** | Misfire counters; swap coils; inspect iridium plugs; fuel trims; D-4S switches between port and direct — a failed port injector can still look like a coil. |
| **Repair** | OEM coils and plugs; injector service if trims and balance point there; do not walnut-blast as a first step on D-4S unless borescope shows carbon. |

### Example G — Reduced power in freezing weather (throttle DTCs)

| Field | Detail |
|---|---|
| **Vehicles** | Some MY2020–2022 Camry A25A-FKS (confirm VIN / T-SB-0005-24 family) |
| **Symptoms** | Reduced engine power in freeze conditions; P01201C, P210015, P210019, P211172 |
| **Repair** | When the bulletin applies, replace **ECM and fuel-pump assembly together** — the new ECM is calibrated to the revised pump. Do not flash an old ECM onto a new pump or the reverse. |

### Example H — 2020 2.5 porous block / internal coolant leak (campaign)

| Field | Detail |
|---|---|
| **Vehicles** | Certain MY2020 Camry, Camry Hybrid, related A25A vehicles |
| **Symptoms** | Coolant loss with no external leak, overheat, milky oil, white exhaust |
| **Repair** | Stop and check the VIN for the engine-casting campaign. If it applies, follow Toyota’s engine-replacement procedure — do not “seal” a porous block. |

### Example I — Fuel pump: crank/no-start or stall (VIN campaign)

| Field | Detail |
|---|---|
| **Symptoms** | Long crank, stall, P0087 / low fuel-pressure codes |
| **Repair** | Check open fuel-pump campaigns first (Denso impeller families are VIN-specific). Replace the pump assembly per TIS; confirm low-side pressure on a road test. |

### Example J — Auto Idle Stop not ready (ICE only)

| Field | Detail |
|---|---|
| **Vehicles** | MY2020–2024 2.5 and V6 with Auto Idle Stop |
| **Symptoms** | Green “A” never ready; stop-start message |
| **Inhibits** | Weak AGM; battery not registered; hood-latch switch; brake vacuum / pressure sensor; A/C load; steering angle; SOC |
| **Repair** | Load-test AGM, **register** the replacement in Techstream, repair the hood switch, then work remaining inhibit PIDs. Hybrid Camry does not use this ICE idle-stop system. |

### Example K — ABS / VSC after tires or hubs

| Field | Detail |
|---|---|
| **Vehicles** | All 2020+ Camry |
| **Symptoms** | ABS + VSC lamps; traction on a straight road |
| **Typical DTCs** | C1201, C146E, wheel-speed rationality |
| **Repair** | Match size, load, and remaining tread (especially 18/19 in SE/XSE vs 16 in LE). Clean or replace tone rings; repair chafe at the knuckle; ABS actuator self-check. |

### Example L — 2.5 mechanical AWD binding (XV70)

| Field | Detail |
|---|---|
| **Vehicles** | MY2020–2024 Camry 2.5 AWD (rear coupling, not a rear electric motor) |
| **Symptoms** | Hop on tight dry turns; AWD lamp |
| **Repair** | Match tires (same brand, size, wear). Service the rear coupling fluid. This is **not** the XV80 rear-motor AWD — do not order an XV80 rear drive unit for an XV70. |

### Example M — Toyota Safety Sense after glass or bumper

| Field | Detail |
|---|---|
| **Vehicles** | XV70 TSS 2.5+; XV80 TSS 3.0 |
| **Symptoms** | Pre-collision, lane keep, or radar cruise unavailable |
| **Repair** | Toyota-grade windshield (camera bracket), static/dynamic camera calibration, radar aim after bumper work. Paint thickness over the radar causes false alerts. |

### Example N — EPS lamp after 12 V disconnect

| Field | Detail |
|---|---|
| **Symptoms** | Heavy steering, EPS warning |
| **Repair** | Charge or replace the 12 V battery, Techstream steering-angle zero point, reseat the torque-sensor connector. |

### Example O — Moonroof drain → wet carpet / BCM

| Field | Detail |
|---|---|
| **Symptoms** | Passenger or driver footwell wet after rain; mold smell |
| **Repair** | Clear the four moonroof drains with a soft line, dry carpets, inspect modules in the wet footwell. |

### Example P — Electric parking brake / rear drag

| Field | Detail |
|---|---|
| **Symptoms** | EPB warning, rear groan, Auto Hold unavailable |
| **Repair** | EPB service mode before pad work, clean or replace rear hardware and motors, run EPB calibration. |

---

## 3. Hybrid — Camry-specific cases

### HEV Example 1 — Inverter / MG coolant loss (both generations)

| Item | Detail |
|---|---|
| **Vehicles** | XV70 Camry Hybrid and XV80 Camry Hybrid |
| **Customer report** | “Check Hybrid System,” loud fans, power drop on grades, sweet smell at the cowl |
| **Typical DTCs** | P0A93, related inverter cooling / PCU codes |
| **Data** | Inverter temp climbs vs MG temps; hybrid pump at 100%; hybrid reservoir low |

**Diagnosis**

1. Health-check HV and MG ECUs; save freeze-frame.
2. Inspect the **hybrid** reservoir, not only the engine tank.
3. Pressure-test the inverter loop at the hybrid-loop spec (not engine cap pressure).
4. Active-test the electric pump; check current and cavitation.
5. Confirm the engine loop is intact so you do not mix the two fills.

**Repair**

1. HV service plug; verify 0 V.
2. Replace the pump, quick-connects, or cooler that leaks.
3. Vacuum-fill with SLLC; Techstream bleed/utility.
4. Road-test until inverter temperature stabilizes; recheck level cold.

---

### HEV Example 2 — XV70 NiMH pack imbalance / P0A80

| Item | Detail |
|---|---|
| **Vehicles** | High-mileage MY2020–2024 Camry Hybrid (NiMH) |
| **Symptoms** | Weak assist, SOC jumps, warmth under the rear seat, P0A80 |
| **Diagnosis** | Techstream block voltages and temps under accel and regen; intake filter and cooling fan behind the rear seat |
| **Repair** | HV lockout. Replace the assembly or serviceable modules per market policy. Replace a clogged intake filter. SOC relearn drive. Do **not** apply this NiMH module map to an XV80 Li-ion pack. |

---

### HEV Example 3 — P1C5D19 / P1C5F19 inverter over-current (early hybrid)

| Item | Detail |
|---|---|
| **Vehicles** | Some MY2019–2020 Camry Hybrid (often low miles when it first sets) |
| **Symptoms** | Hybrid System Malfunction, then the car often drives normally afterward |
| **DTCs** | P1C5D19 (drive motor inverter current), P1C5F19 (generator inverter current) |
| **Repair** | Follow the current Toyota bulletin: typically motor-cable / connection repair on the P710, not an automatic inverter replacement. Confirm with a health check before parts. |

---

### HEV Example 4 — Harsh engine start out of EV quiet

| Item | Detail |
|---|---|
| **Vehicles** | XV70 and XV80 hybrid |
| **Symptoms** | Jolt when the 2.5 fires; brief hybrid warning that clears |
| **Causes** | Hydraulic engine mount; MG1 start control; first-cycle misfire; calibration |
| **Repair** | Inspect mounts for fluid leak, fuel/ignition on first fires, TSB calibrations. Verify starts at high and low SOC. |

---

### HEV Example 5 — Ready, no movement

| Item | Detail |
|---|---|
| **Symptoms** | Ready on, D selected, no torque |
| **Diagnosis** | Shift-position PID, brake-lamp switch, P710 resolver connector at the transaxle |
| **Repair** | Interlock / brake switch / resolver terminals first. Inverter or MG only after pinpoint. |

---

### HEV Example 6 — Active grille shutter (hybrid and some ICE)

| Item | Detail |
|---|---|
| **Symptoms** | MIL, grille-shutter DTCs, reduced efficiency, overheat in traffic |
| **Repair** | Clear debris, repair the shutter motor/linkage, confirm ECM sees commanded vs actual position. |

---

### HEV Example 7 — XV80 Li-ion thermal derate / weak EV feel

| Item | Detail |
|---|---|
| **Vehicles** | MY2025+ Camry Hybrid (Li-ion, 5th-gen THS) |
| **Symptoms** | Assist fades in heat or after a highway run; inverter or battery temp messages |
| **Repair** | Hybrid-loop level and pump; pack cooling path; software. Treat thermal derate and a 12 V brownout as separate jobs. |

---

### HEV Example 8 — XV80 electronic AWD: rear motor disabled

| Item | Detail |
|---|---|
| **Vehicles** | MY2025+ Camry Hybrid AWD (rear PM motor — not XV70 coupling AWD) |
| **Symptoms** | FWD-only feel; AWD unavailable; rear inverter / motor DTCs |
| **Repair** | HV lockout. Inspect the rear connector, isolation, and that axle’s coolant if fitted. Repair the rear inverter or motor the codes name. Load-test AWD from a stop on a low-grip surface. |

---

### HEV Example 9 — 12 V / DC-DC: hybrid warnings that clear after a jump

| Item | Detail |
|---|---|
| **Symptoms** | Multiple hybrid lamps, no Ready, all clear after jump-start |
| **Repair** | Load-test the 12 V battery, confirm DC-DC output in Ready, clean grounds, sleep-draw test. Then re-evaluate any codes that return. |

---

### HEV Example 10 — 2025+ inverter fastener campaign (VIN)

| Item | Detail |
|---|---|
| **Vehicles** | Certain MY2025– Camry Hybrid (confirm VIN; campaign families such as inverter-bolt torque) |
| **Symptoms** | May be none until a loss of drive or inverter fault |
| **Repair** | Do not “snug bolts” as a field workaround. HV lockout and complete the Toyota campaign procedure for that VIN (inspect/replace specified fastener and related parts). |

---

## 4. Quick triage (Camry only)

| Symptom | First check | Next |
|---|---|---|
| 2.5 8AT flare | UB80 fluid temp and WS spec | TCM update / adaptations |
| V6 trans whine | Confirm **UA80** + serial range | TSB transaxle R&R if it applies |
| Coolant at 2.5 pump | Electric pump body/connector | Pump + ECM TSB |
| Hybrid fans + power loss | **Hybrid** reservoir, not engine | Pump / inverter loop |
| P0A80 on XV70 | Block ΔV + rear-seat filter | NiMH pack |
| AWD hop on XV70 | Tire match | Rear coupling fluid |
| AWD missing on XV80 | Rear-motor DTCs | Rear inverter / isolation |
| Idle-stop dead (ICE) | AGM registered? | Hood switch / inhibit PIDs |
| Reduced power in freeze | Throttle DTCs | VIN bulletin: ECM **and** pump |
| ABS after tires | Wheel-speed PIDs | Tone ring / size mismatch |

---

## 5. Return-to-service

- [ ] Generation and powertrain recorded from the VIN (XV70 vs XV80; UB80 vs UA80 vs P710 / T110; NiMH vs Li-ion)  
- [ ] Correct oil viscosity and ATF WS documented  
- [ ] 8AT or hybrid transaxle adaptations completed if fluid or battery work was done  
- [ ] AGM registered on ICE stop-start cars  
- [ ] Hybrid inverter loop level and temps stable on HEV road test  
- [ ] HV service plug locked; isolation within spec  
- [ ] ABS self-check if tires, hubs, or sensors were touched  
- [ ] TSS camera/radar calibrated if glass, bumper, or alignment was touched  
- [ ] Open Toyota campaigns checked and closed on that VIN  

---

*Camry 2.5 ICE, V6, XV70 hybrid, and XV80 hybrid are four diagnostic paths. Identify the VIN build before ordering a transaxle, a hybrid pack, or an AWD unit.*
