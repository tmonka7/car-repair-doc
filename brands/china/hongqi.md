# Hongqi (FAW) — Repair Guide (MY2020+)

**Region focus:** China (exports to Norway and other European markets, the Middle East, and Southeast Asia)  
**Parent:** FAW Group (China FAW)  
**Diagnostics:** FAW / Hongqi dealer diagnostic tool; generic OBD-II covers emissions data only  
**Tech pillars:** 1.5T / 2.0T / 3.0 V6 ICE, 48 V mild hybrid on select variants, E-series BEV, PHEV in the HQ9 MPV  
**Charging:** GB/T in China; CCS2 / Type 2 on European-market BEVs  
**HV safety:** Use the Hongqi high-voltage disable procedure and verify 0 V before touching orange cables; luxury trims carry many low-voltage comfort modules, so check 12 V health before chasing faults

---

## 1. 2020+ model map

| Line | Examples (MY2020+) | Powertrains |
|---|---|---|
| H-series sedans | H5, H6, H7, H9 | 1.5T / 2.0T ICE, 3.0 V6 on top H9; 48 V mild hybrid on select variants |
| HS-series SUVs | HS3, HS5, HS7 | 1.5T / 2.0T ICE, 3.0 V6 on top HS7 |
| E-series BEV | E-HS3, E-HS9, E-QM5, EH7, EHS7 | Single- or dual-motor BEV |
| MPV | HQ9 | PHEV and ICE versions by market |
| Flagship | L5 | Low-volume V8 ultra-luxury (outside normal workshop scope) |

### Powertrain families

| Family | Where used | Service notes |
|---|---|---|
| 1.5T GDI | H5, HS3, HS5 | Direct injection: carbon, cold misfire, short-trip oil dilution |
| 2.0T GDI | H5, H9, HS5, HS7, HQ9 | Most common Hongqi engine; coil, plug, and boost-leak work |
| 3.0 V6 | Top H9, HS7 | Tight packaging; cooling and charge-air leaks; long labor times |
| 48 V mild hybrid | Select H-series variants | Belt starter-generator, 48 V battery, and DC-DC converter; drives start-stop |
| Wet DCT or torque-converter automatic | Varies by engine and year | Confirm which transmission is fitted from the VIN before ordering fluid or parts |
| E-HS9 dual motor | E-HS9 | Large NCM pack; air suspension on higher trims; heavy vehicle, so tire and brake wear are high |
| E-QM5 | Fleet and ride-hail sedan | High mileage; drive-unit, brake, and suspension wear dominate |
| EH7 / EHS7 | Later BEV sedan and SUV | Tiangang-class architecture on later cars; check software level first on any warning |
| H5 HEV | Second-generation H5 hybrid | E-CVT hybrid path—not the same diagnosis as the 7DCT 1.5T or the 8AT 2.0T |
| H5 PHEV | 2025+ H5 plug-in (markets) | Charge-permit diagnosis like HQ9 PHEV; confirm pack and OBC from the VIN |

### Workshop setup

| Item | Practice |
|---|---|
| **Scan tool** | FAW / Hongqi dealer tool for 48 V, E-CVT, PHEV charge permits, BEV BMS, air-suspension height, ADAS, and gateway configuration. Generic OBD-II is emissions data only. |
| **Identify first** | VIN build: H-series / HS-series / HQ9 / E-series; 7DCT vs 8AT vs 6AT vs E-CVT; 48 V yes/no; ICE vs PHEV vs BEV. |
| **Engine families** | CA4GB15TD 1.5T; CA4GC20TD 2.0T (several dash numbers); 3.0 V6 (supercharged on later H9); LS7 / L5 flagships are low-volume and use separate SI. |
| **Engine oil** | Use the viscosity on the cap and in Hongqi SI. Direct-injection 1.5T / 2.0T: short-trip dilution and intake-valve carbon. |
| **Transmission fluid** | 7DCT, Aisin 6AT (early HS5), 8AT, and H5 HEV E-CVT are different fluids and different adaptation routines. |
| **48 V** | Belt starter-generator, 48 V battery, and DC-DC. Jump-starting on 12 V only will not charge a failed 48 V pack. |
| **Coolant** | Engine loop versus hybrid/BEV electronics loop. Vacuum-fill each. |
| **Charging** | GB/T in China; CCS2 / Type 2 on European-market BEVs. |
| **HV lockout** | Hongqi disable procedure, wait time, verify 0 V. Luxury trims have many comfort modules—stabilize 12 V before chasing network U-codes. |
| **ADAS** | Camera and radar calibration with Hongqi targets after glass, bumper, or alignment. |

---

## 2. ICE / chassis examples

### Example A — 2.0T cold misfire and carbon

| Field | Detail |
|---|---|
| **Vehicles** | H5, H9, HS5, HS7 with the 2.0T |
| **Symptoms** | Rough cold idle, flashing MIL under load, P0300–P0304 |
| **Root causes** | Coil or plug failure; intake-valve carbon; low-quality fuel; injector leakage |
| **Diagnosis** | Misfire counters per cylinder; swap coils; borescope the intake valves; long- and short-term fuel trims |
| **Repair** | Coils and plugs to OEM spec, intake-valve cleaning when carbon is confirmed, injector service, PCV check |

### Example B — Wet DCT judder or flare

| Field | Detail |
|---|---|
| **Vehicles** | DCT-equipped H-series and HS-series (confirm by VIN) |
| **Symptoms** | Judder on takeoff, creep surge, flare on upshift, transmission warning |
| **Root causes** | Wrong or aged fluid; adaptations lost after battery work; worn clutch pack; mechatronics fault |
| **Repair** | Fluid with the exact spec, clutch adaptation reset, software update, then mechatronics or clutch pack |

### Example C — Torque-converter automatic harsh shift

| Field | Detail |
|---|---|
| **Vehicles** | Automatic-equipped H-series and HS-series (confirm by VIN) |
| **Symptoms** | Bang into gear, delayed engagement, flare on downshift |
| **Repair** | Fluid level checked at the specified temperature, adaptation reset, software, then valve body if harshness remains |

### Example D — Boost leak and limp mode (2.0T and V6)

| Field | Detail |
|---|---|
| **Symptoms** | P0299 underboost, limp mode, hiss under load |
| **Root causes** | Loose clamp or split charge pipe; intercooler leak; boost-control actuator; boost sensor |
| **Repair** | Smoke-test the intake, repair the pipe or intercooler, replace the actuator or sensor, compare desired and actual boost on a road test |

### Example E — 48 V mild-hybrid fault, start-stop unavailable

| Field | Detail |
|---|---|
| **Vehicles** | Select H-series variants with 48 V |
| **Symptoms** | Start-stop never works; 48 V system warning; weak restart; battery light |
| **Root causes** | 48 V battery degraded or below temperature limit; belt starter-generator fault; DC-DC converter not charging the 12 V side; belt slip |
| **Repair** | Read 48 V battery state and DC-DC output, inspect the belt and tensioner, replace the starter-generator or 48 V battery the data points to, then confirm start-stop inhibit flags clear |

### Example F — Air suspension lean or compressor timeout

| Field | Detail |
|---|---|
| **Vehicles** | H9, HS7, E-HS9 where fitted |
| **Symptoms** | One corner low overnight, suspension warning, compressor runs long |
| **Root causes** | Air-spring leak; valve-block leak; compressor worn; height-sensor linkage bent |
| **Repair** | Leak-test springs and lines, replace the leaking part, test compressor output, calibrate ride height |

### Example G — Comfort-module 12 V drain (luxury trims)

| Field | Detail |
|---|---|
| **Symptoms** | Battery flat after a few days; random warnings on the next start |
| **Root causes** | Seat, massage, ambient-lighting, or rear-entertainment module not sleeping; telematics awake; aftermarket accessories |
| **Repair** | Parasitic-draw test by fuse after the full sleep time, replace or update the module that stays awake, remove faulty accessory wiring |

### Example H — Infotainment or digital cluster reboot after an update

| Field | Detail |
|---|---|
| **Symptoms** | Screens reboot, black screen, functions missing after an over-the-air update |
| **Repair** | Confirm 12 V stability, reflash the head unit and cluster with the dealer tool, check gateway configuration |

### Example I — ADAS camera or radar faults after glass or bumper work

| Field | Detail |
|---|---|
| **Symptoms** | Adaptive cruise, lane keep, or forward collision warning disabled |
| **Repair** | OEM-equivalent glass, calibrate cameras and radar with Hongqi targets, correct bumper paint thickness over the radar |

### Example J — Headlamp condensation or adaptive-lighting fault

| Field | Detail |
|---|---|
| **Symptoms** | Fog inside the lamp, adaptive or matrix lighting disabled |
| **Repair** | Check lamp vents and seals, dry the lamp, replace the lamp or control module if water damage is present, aim the lamps |

### Example K — Electric parking brake or rear caliper faults

| Field | Detail |
|---|---|
| **Symptoms** | EPB warning, brake will not release, rear brake drag |
| **Repair** | EPB service mode, clean or replace caliper hardware and motor, run the EPB calibration |

### Example L — Sunroof drain blockage and water inside

| Field | Detail |
|---|---|
| **Symptoms** | Wet headliner or footwell, module faults after rain |
| **Repair** | Clear the drains, dry the carpets, check modules mounted under the floor or in the footwell |

### Example M — Wrong transmission fluid (7DCT vs 8AT vs 6AT)

| Field | Detail |
|---|---|
| **Vehicles** | H9 2.0T often 7DCT; H9 3.0 V6 8AT; HS5 2019–2022 Aisin 6AT, 2023+ 8AT; H5 1.5T 7DCT, H5 2.0T 8AT |
| **Symptoms** | Harsh shift or flare immediately after a fluid change |
| **Repair** | Confirm the transmission from the VIN, drain the wrong fluid, refill with the specified fluid, run the matching adaptation |

### Example N — HS5 harsh shift after 2023 facelift mix-up

| Field | Detail |
|---|---|
| **Vehicles** | HS5 (pre-facelift 6AT vs facelift 8AT) |
| **Symptoms** | Bang into gear; shop applied 6AT procedure to an 8AT (or the reverse) |
| **Repair** | Identify the gearbox, correct fluid and software, complete the 8AT or 6AT adaptation as fitted |

### Example O — H5 HEV E-CVT shudder

| Field | Detail |
|---|---|
| **Vehicles** | Second-generation H5 hybrid |
| **Symptoms** | Shake leaving a stop, flare in hybrid mode |
| **Repair** | E-CVT fluid and adaptations (not 7DCT fluid), engine mounts, hybrid software |

### Example P — H9 EPS or cluster warnings after 12 V disconnect

| Field | Detail |
|---|---|
| **Symptoms** | Heavy steering, EPS lamp, cluster messages after battery work |
| **Repair** | Charge or replace the 12 V battery, steering-angle zero, reseat EPS connectors |

---

## 3. PHEV (HQ9 / H5 PHEV) — detailed examples

Verify which HQ9 or H5 PHEV powertrain is fitted from the VIN; ICE-only versions use the Section 2 examples.

### PHEV Example 1 — EV mode unavailable or AC charge fault

| Item | Detail |
|---|---|
| **Symptoms** | Engine always runs; wallbox error; charge-port lamp shows a fault |
| **Diagnosis** | Inlet latch; control-pilot signal; onboard charger; battery-management charge permit; 12 V level |
| **Repair** | Onboard charger or inlet, battery-management software, full charge followed by an EV drive to verify |

---

### PHEV Example 2 — Hybrid coolant loss and power limit

| Item | Detail |
|---|---|
| **Symptoms** | Power limited; inverter or motor temperature DTCs |
| **Repair** | Pressure-test the hybrid and engine loops separately, repair the leaking one, vacuum fill and bleed |

---

### PHEV Example 3 — Harsh engine start from EV mode

| Item | Detail |
|---|---|
| **Symptoms** | Jolt when the engine starts or couples in |
| **Repair** | Engine mounts, start-control software, ignition and fuel quality on the first firing cycles |

---

### PHEV Example 4 — HQ9 parked climate / rear HVAC draining 12 V

| Item | Detail |
|---|---|
| **Symptoms** | Flat battery after using parked climate or rear HVAC |
| **Repair** | Confirm the climate timer and 12 V state, load-test the battery, parasitic-draw test, update or replace the HVAC module if it will not sleep |

---

### PHEV Example 5 — H5 PHEV (2025+) charge permit refused

| Item | Detail |
|---|---|
| **Vehicles** | H5 PHEV where sold |
| **Symptoms** | Wallbox error; EV range missing |
| **Repair** | Same charge-permit path as HQ9: inlet, onboard charger, BMS permit, 12 V; then a full charge and EV drive |

---

## 4. E-series BEV — detailed examples

### BEV Example 1 — Isolation fault after rain or a car wash

| Item | Detail |
|---|---|
| **Vehicles** | E-HS9, E-QM5, EH7, EHS7, E-HS3 |
| **Symptoms** | Insulation warning, power limited, charging refused; P0AA6-type isolation codes |
| **Common leak paths** | High-voltage PTC heater; electric A/C compressor; onboard charger; underbody connectors; charge inlet |

**Troubleshooting**

1. Record the insulation resistance reported by the battery-management system.
2. Inspect the pack underside and orange connectors for moisture or coolant residue.
3. Isolate the heater, compressor, and onboard charger one at a time per the Hongqi flowchart.
4. Ask about recent water crossings, underbody impacts, or pressure washing.

**Repair procedure**

1. High-voltage lockout; verify 0 V.
2. Dry and replace damaged connectors; replace the heater or compressor if leakage to the high-voltage bus is confirmed.
3. If the pack itself fails the insulation threshold, repair or replace it per Hongqi.
4. Reseal and retest insulation dry.
5. AC charge test, then DC charge test.

---

### BEV Example 2 — DC fast charge handshake failure

| Item | Detail |
|---|---|
| **Symptoms** | Station connects, then stops at the handshake; AC charging is fine |
| **Causes** | Inlet lock; pin wear or burn; battery-management software versus the station; pack temperature out of range |
| **Repair** | Try a second station, check lock actuation, inspect GB/T or CCS2 pins, update battery-management software, replace the inlet if pins are damaged |

---

### BEV Example 3 — Thermal derate and slow DC charging in heat

| Item | Detail |
|---|---|
| **Symptoms** | Charge power collapses, power limit after highway driving, loud pump or fans |
| **Repair** | Check coolant level and pump current, clean the front heat exchangers, repair a sticking valve, update the thermal software |

---

### BEV Example 4 — E-HS9: one motor disabled

| Item | Detail |
|---|---|
| **Symptoms** | Reduced power; all-wheel drive unavailable; front or rear drive-unit DTCs |
| **Repair** | High-voltage lockout, inspect that axle’s connector and coolant, repair the inverter or motor the codes point to, test under load |

---

### BEV Example 5 — Onboard charger cuts out on AC

| Item | Detail |
|---|---|
| **Symptoms** | Charging stops mid-session at home or on public AC |
| **Repair** | Test the EVSE and site voltage, check charger cooling, replace the onboard charger if it logs internal faults |

---

### BEV Example 6 — Morning no-Ready from a 12 V drain

| Item | Detail |
|---|---|
| **Symptoms** | Car will not wake or reach Ready after sitting |
| **Repair** | Replace a degraded 12 V battery, confirm DC-DC output in Ready, find the module that is not sleeping |

---

### BEV Example 7 — Drive-unit whine or clunk

| Item | Detail |
|---|---|
| **Symptoms** | Speed-related whine, clunk when switching between drive and regen |
| **Repair** | Rule out wheel bearings, tires, and mounts, then repair the drive unit |

---

### BEV Example 8 — Range loss and cell imbalance

| Item | Detail |
|---|---|
| **Symptoms** | Range well below expected for age; charging ends early |
| **Repair** | Read cell voltages and capacity, run a balance or state-of-charge relearn, repair or replace modules if a group stays low |

---

### BEV Example 9 — Weak cabin heat and extra winter range loss

| Item | Detail |
|---|---|
| **Symptoms** | Poor heat, PTC or heat-pump DTCs, large winter range drop |
| **Repair** | Repair the PTC heater under lockout or the heat-pump valve, retest isolation |

---

### BEV Example 10 — Regen and brake-blending complaints

| Item | Detail |
|---|---|
| **Symptoms** | Regen strength changes, pedal feel inconsistent |
| **Repair** | Separate normal limits (full battery, cold pack) from a real fault; repair the brake-blending module if codes are stored |

---

### BEV Example 11 — E-QM5 fleet wear (ride-hail mileage)

| Item | Detail |
|---|---|
| **Symptoms** | Suspension knocks, uneven tire wear, brake noise, drive-unit noise at high mileage |
| **Repair** | Front suspension bushings and links, alignment, brake service including corroded rear discs from heavy regen use, drive-unit inspection |

---

### BEV Example 12 — Interlock open after collision or panel work

| Item | Detail |
|---|---|
| **Symptoms** | No Ready after body repair; high-voltage interlock DTC |
| **Repair** | Reconnect and verify every service connector and interlock loop, reset crash signals, clear codes |

---

### BEV Example 13 — EH7 / EHS7 incomplete OTA, no propulsion

| Item | Detail |
|---|---|
| **Symptoms** | Multiple U-codes, Ready refused, features missing after an over-the-air update |
| **Repair** | Stabilize 12 V, complete the dealer flash on the Tiangang-class architecture, do not replace a drive unit until programming finishes |

---

### BEV Example 14 — E-HS9 air suspension leak with simultaneous thermal derate

| Item | Detail |
|---|---|
| **Symptoms** | One corner low and charge power capped at the same visit |
| **Repair** | Treat as two systems: leak-test and calibrate height; separately service pack cooling pumps and coolant. Do not replace a pack for a lean corner. |

---

## 5. Quick triage

| Symptom | First check | Next |
|---|---|---|
| Misfire | Coils and plugs | Carbon or injectors |
| DCT judder | Fluid spec and adaptations | Mechatronics or clutch |
| Start-stop never works | 48 V or 12 V battery state | Starter-generator or DC-DC |
| Air suspension low | Leak test | Compressor |
| BEV isolation | PTC heater and compressor | Pack |
| DC charge refused | Second station and pins | Battery-management software, inlet |
| Battery flat when parked | Sleep-draw by fuse | Comfort or telematics module |
| Harsh shift after fluid service | VIN gearbox (7DCT / 6AT / 8AT / E-CVT) | Correct fluid and adaptations |
| H5 HEV shudder | E-CVT fluid, not DCT | Mounts / software |
| EH7 no propulsion after update | 12 V + complete flash | Then hardware |

---

## 6. Return-to-service

- [ ] Transmission adaptations completed  
- [ ] 48 V and start-stop function verified where fitted  
- [ ] Air suspension at correct height after a full sleep cycle  
- [ ] AC and DC charging verified on BEVs  
- [ ] Isolation OK on BEVs and PHEVs  
- [ ] ADAS calibrated if glass, bumper, or alignment was touched  
- [ ] Sleep-draw within limits on luxury trims  

---

*Hongqi transmission fitment varies by engine and year, and BEV software changes often—confirm the VIN build and software level before ordering parts.*
