# Great Wall and Hongqi — Compiled Guide (MY2020+)

Detailed information for **Great Wall Motor (GWM)** and **Hongqi (FAW)** passenger cars manufactured from **2020 onward**. Full diagnosis tables live in the brand files:

- [brands/china/great-wall.md](brands/china/great-wall.md) — Haval, Wey, Ora, Tank
- [brands/china/hongqi.md](brands/china/hongqi.md) — H-series, HS-series, HQ9, E-series

This compilation is a technician field aid. Confirm every job against VIN-specific factory service information, TSBs, and recalls. Orange high-voltage circuits require the factory lockout, the correct protective equipment, and an isolation check before service.

---

## Side-by-side

| Topic | Great Wall Motor | Hongqi (FAW) |
|---|---|---|
| **Group** | Independent OEM (Baoding, Hebei) | Luxury brand of China FAW Group (Changchun) |
| **Passenger brands** | Haval, Wey, Ora, Tank | Hongqi only |
| **Typical customer** | Volume SUV, off-road, and compact BEV | Premium sedan, SUV, MPV, and large BEV |
| **Scan tool** | GWM dealer tablet | FAW / Hongqi dealer tool |
| **ICE engines** | GW 1.5T / 2.0T GDI; 3.0T twin-turbo V6 | FAW CA4GB15TD 1.5T; CA4GC20TD 2.0T; 3.0 V6 (supercharged on later H9) |
| **Transmissions** | 7-speed wet DCT; DHT; 9HAT; ZF 8HP on some Tank 300; Hi4-T; Hi4-Z | 7DCT; Aisin 6AT (early HS5); 8AT; H5 HEV E-CVT |
| **Hybrid** | Lemon DHT HEV / PHEV; Hi4 AWD; Hi4-T off-road PHEV; Hi4-Z large-pack PHEV | 48 V mild hybrid; H5 HEV; HQ9 PHEV; H5 PHEV (2025+) |
| **BEV** | Ora (ME / Lemon electric) | E-HS3, E-HS9, E-QM5, EH7, EHS7 (later Tiangang-class) |
| **Charging** | GB/T in China; CCS2 / Type 2 on Europe, UK, Australia | GB/T in China; CCS2 / Type 2 on European-market BEVs |
| **ADAS** | Camera + radar; GWM targets | Camera + radar; Hongqi targets; lidar only on later flagship trims if fitted |
| **Workshop trap** | Three hybrid architectures plus DCT vs 9HAT vs ZF 8HP fluids | 7DCT vs 6AT vs 8AT vs E-CVT fluids; 48 V mistaken for a 12 V-only fault |

---

# Part 1 — Great Wall Motor (GWM)

**Also sold as:** GWM, Haval, Wey (WEY), Ora (ORA), Tank  
**Region:** China, with exports to Australia, Southeast Asia, the Middle East, Latin America, Russia, Europe, the UK, and South Africa  
**Out of this passenger guide:** GWM / Poer / Cannon pickups

GWM split its passenger lineup by use: **Haval** for volume SUVs, **Wey** for premium hybrid SUVs and MPVs, **Ora** for compact and mid-size BEVs, **Tank** for body-on-frame off-road SUVs. From 2020 the hardware sits on three technology families: **Lemon** (Haval / Wey urban), **Tank** (ladder-frame), and **Ora / ME** electric. Hybrid hardware then splits again into **DHT**, **Hi4**, **Hi4-T**, and **Hi4-Z**—identify that split from the VIN before ordering fluid or a drive unit.

## 1.1 2020+ model map

| Brand | Examples (MY2020+) | Powertrains |
|---|---|---|
| Haval | H6 (3rd gen), Jolion / Chulian, H6S, Big Dog / Dargo, Xiaolong / Xiaolong Max, Raptor, H9 (2nd gen) | 1.5T / 2.0T ICE, DHT HEV, DHT PHEV, Hi4 AWD PHEV |
| Wey | VV5 / VV6 / VV7 (run-out), Mocha, Macchiato, Latte (“coffee” series), Lanshan / Blue Mountain, Gaoshan MPV | 2.0T ICE, DHT HEV / PHEV, Hi4 PHEV |
| Ora | Good Cat (Ora 03 / Funky Cat), Ballet Cat, Lightning Cat (Ora 07), Black Cat / White Cat | BEV (LFP or NCM depending on version) |
| Tank | 300, 330 (limited 3.0 V6), 400, 500, 700 | 2.0T / 3.0T V6 ICE with 9HAT or ZF 8HP; HEV; Hi4-T PHEV; Hi4-Z PHEV |

## 1.2 Powertrain families

| Family | Where used | Service notes |
|---|---|---|
| 1.5T GDI | Jolion, H6, Wey coffee series | Intake-valve carbon, cold misfire, short-trip oil dilution |
| 2.0T GDI | H6, Wey, Tank 300 | Charge-pipe and intercooler leaks, coil and plug life |
| 3.0T twin-turbo V6 | Tank 500 / 700 / 330 | Cooling and boost faults present as limp mode |
| 7-speed wet DCT | Many Haval ICE models | Exact fluid; clutch adaptations after clutch, mechatronics, or battery work |
| 9HAT 9-speed automatic | Tank, Haval H9, select Wey | Torque-converter automatic; adaptation reset after fluid or valve-body work |
| ZF 8HP | Some Tank 300 ICE | Different fluid and adaptations from 9HAT |
| DHT | H6 HEV / PHEV, Jolion HEV, Wey DHT | Separate hybrid coolant; DHT-specific fluid |
| Hi4 | Xiaolong Max, Raptor, Wey Lanshan | Front DHT plus a rear electric drive unit |
| Hi4-T | Tank 400 / 500 / 700 PHEV | P2 motor and clutch ahead of the 9HAT; lockers and transfer case remain |
| Hi4-Z | Tank 500 large-pack PHEV | 3-speed hybrid unit and dual motors—not a 9HAT Hi4-T |
| Ora electric drive | Good Cat, Lightning Cat, Ballet Cat | Front motor on most versions; OBC and pack share thermal hardware |

## 1.3 Workshop setup

| Item | Practice |
|---|---|
| Scan tool | GWM dealer tablet for DHT, Hi4, 9HAT, Ora BMS, ADAS, and adaptations. Generic OBD-II will not run those functions. |
| Identify first | Brand, ICE vs HEV vs PHEV vs BEV, and DCT vs 9HAT vs ZF 8HP vs Hi4-T vs Hi4-Z from the VIN. |
| Fluids | DCT, DHT, 9HAT, and ZF 8HP are four different fluids. Wrong fluid produces shudder that looks like a failed clutch. |
| Coolant | Engine loop and hybrid / Ora pack-OBC loop are separate. Vacuum-fill each. |
| Brakes | DOT 4 unless the VIN specifies otherwise. EPB in service mode before rear pad work. |
| Charging | GB/T in China; CCS2 / Type 2 on Europe, UK, and Australia. Inlet hardware is not interchangeable. |
| HV lockout | GWM disable, wait time, verify 0 V. After underbody impact, inspect the pack before a road test. |
| ADAS | Camera and radar calibration with GWM targets after glass, bumper, or alignment. |

## 1.4 Malfunction cases and repairs

Full symptom, DTC, and procedure tables: [brands/china/great-wall.md](brands/china/great-wall.md).

### ICE / chassis

| Case | Repair |
|---|---|
| Haval H6 / Jolion wet DCT shudder and mechatronics faults | Exact DCT fluid, clutch adaptation reset, software, then mechatronics or clutch kit if slip remains |
| Turbo boost low or high | Smoke-test the intake; charge pipes, wastegate actuator, or turbo if shaft play is confirmed |
| 1.5T / 2.0T GDI cold misfire and carbon | Coils and plugs to OEM spec, intake-valve cleaning when carbon is confirmed, injector service, PCV check |
| All-wheel-drive binding or hop | Match tires, service coupling or transfer-case fluid, replace the clutch pack; confirm the driver is not in 4L on dry pavement |
| Tank 300 / 500 locker or 4L will not engage | Dry and seal axle connectors after fording, replace the actuator or sensor, extend breathers, verify each locker |
| Tank 9HAT harsh shift or flare | Fluid at the specified temperature, adaptation reset, software, then valve body |
| ADAS camera or radar after glass or bumper work | OEM-equivalent glass, static and dynamic calibration, correct bumper repair over the radar |
| Infotainment reboot and low-voltage drain | Software, parasitic-draw by fuse, replace the module that stays awake, remove faulty accessory feeds |
| Electric parking brake and Auto Hold faults | EPB service mode, caliper hardware and motor, EPB calibration |
| A/C odor and water on the passenger floor | Clear the evaporator drain, clean the evaporator, replace the cabin filter, dry carpets |
| Steering-angle or ESP warning after alignment | Re-center the wheel, calibrate the steering-angle sensor |
| Panoramic roof drain clog | Clear drains, dry carpets and headliner, reseat warped tubes |
| GDI oil dilution on short trips | Oil change, shorter interval, injectors or PCV if dilution returns immediately |
| ABS / ESP after mixed tires | Match tire size and tread, check wheel-speed data, TPMS learn |
| Tank 500 / 700 3.0T V6 overheat or limp | Fans, radiator and intercooler, thermostat, charge-air leaks before condemning the turbo |
| Incomplete Coffee OS / OTA, features missing | Stabilize 12 V, complete the dealer flash, do not road-test mid-configuration |

### DHT hybrid / Hi4 / PHEV

| Case | Repair |
|---|---|
| DHT shudder at 20–40 km/h | DHT fluid → adaptations → software → clutch or DHT if metal or slip remains |
| PHEV will not take AC charge, EV mode locked | Inlet, onboard charger, BMS charge permit, 12 V; full charge then EV drive |
| Hybrid-electronics coolant loss and power limit | Pressure-test hybrid vs engine loops, repair the leak, replace the pump if needed, vacuum-fill the hybrid loop |
| Harsh engine start out of EV mode | Mounts, start-control software, ignition and fuel on the first firing cycles |
| Cell imbalance and collapsed EV range | Cell voltages, pack or module repair, cooling path, state-of-charge relearn |
| Hybrid warnings that clear after a jump start | Load-test 12 V, confirm DC-DC in Ready, clean grounds, sleep-draw test |
| Hi4 rear motor disabled, AWD unavailable | HV lockout, rear connector and coolant, repair inverter or motor, load test AWD |
| Tank Hi4-T harsh P2 clutch engagement | Clutch and 9HAT adaptations, software, inspect the P2 clutch if harshness returns |
| Fuel aging and oil dilution from long EV-only use | Confirm a normal maintenance run, change oil if diluted, use the engine periodically |
| Vehicle-to-load not working | State-of-charge limit and settings, known-good adapter, then onboard charger |
| Hi4-Z charge power capped or derate | Confirm Hi4-Z not Hi4-T; pack cooling pumps and valves; BMS software; vacuum-fill the battery loop |
| Wrong transmission fluid after independent service | Identify DCT / DHT / 9HAT / ZF 8HP / Hi4-Z from the VIN; correct fluid; adaptations |

### Ora BEV

| Case | Repair |
|---|---|
| Onboard charger overheat, AC charge intermittent | Restore cooling, replace a heat-damaged OBC, vacuum-fill, software, multi-hour AC verify |
| Isolation fault in wet weather | Section PTC heater, compressor, OBC, pack; dry connectors; replace a leaking heater or compressor; retest insulation dry |
| Charge connector locked after charging | Manual release, lock motor, water in the port |
| Drive-unit whine or bearing noise | Rule out wheel bearings and tires, then repair the drive unit |
| Winter PTC heater drain or fault | Replace HV PTC under lockout, retest isolation, check heat-pump valves if fitted |
| 12 V sleep and telematics drain | Sleep-draw test, telematics software, 12 V replacement if degraded |
| DC fast charge refused or very slow | Second station, GB/T or CCS2 pins, BMS software, pack temperature before replacing the inlet |
| Lightning Cat flush handles or frameless windows not indexing | Re-initialize windows, handle motor and water in the connector, door-module software |
| Regenerative braking feel complaints | Separate full-battery / cold-pack limits from a blending-module fault |
| Interlock open after collision or front-end repair | Reconnect every HV service connector and interlock loop, crash-sensor reset |
| PEPS / key not recognized with 12 V apparently healthy | Load-test 12 V, PEPS antennas and key battery, remove accessory wiring, gateway software |

### GWM quick triage

| Symptom | First check | Next |
|---|---|---|
| DCT judder | Fluid spec and clutch adaptations | Mechatronics or clutch kit |
| DHT shudder | Fluid and adaptations | Clutch or DHT |
| Ora charge stops | OBC temperature and cooling | OBC replacement |
| PHEV has no EV mode | Charge permits | OBC or BMS |
| Isolation | PTC heater and compressor | Pack |
| AWD hop | Tire match | Coupling |
| Tank locker refused | Connectors after water | Actuator |
| Hi4 AWD unavailable | Rear coolant and connector | Rear inverter or motor |
| Hi4-Z slow DC charge | Pack cooling pumps | BMS software |
| Sudden shudder after fluid service | VIN transmission type | Correct fluid and adaptations |

---

# Part 2 — Hongqi (FAW)

**Parent:** China FAW Group  
**Region:** China, with exports to Norway and other European markets, the Middle East, and Southeast Asia  
**Low-volume / ceremonial:** L5 and related Golden Sunflower flagships use separate SI and are outside normal workshop volume.

Hongqi is FAW’s premium brand. From 2020 the volume cars are **H-series sedans**, **HS-series SUVs**, the **HQ9 MPV**, and **E-series BEVs**. Later BEVs (EH7, EHS7) sit on a newer electric architecture (Tiangang-class). The same model name can hide 7DCT, 8AT, 6AT, E-CVT, 48 V, or a plug-in pack—read the VIN before any fluid or hybrid diagnosis.

## 2.1 2020+ model map

| Line | Examples (MY2020+) | Powertrains |
|---|---|---|
| H-series sedans | H5, H6, H7 (run-out), H9 | 1.5T / 2.0T ICE; 3.0 V6 on top H9; 48 V on select variants; H5 HEV; H5 PHEV (2025+) |
| HS-series SUVs | HS3, HS5, HS7 | 1.5T / 2.0T ICE; 3.0 V6 on top HS7; HS5 6AT then 8AT after the 2023 facelift |
| E-series BEV | E-HS3, E-HS9, E-QM5, EH7, EHS7 | Single- or dual-motor BEV |
| MPV | HQ9 | ICE and PHEV by market |
| Large SUV | LS7 | Low-volume V8 luxury; separate SI |
| Flagship | L5 | Ceremonial ultra-luxury; outside normal workshop scope |

Export name notes: some Middle East H5 cars are badged **Ousado**. E-QM5 is common in fleet and ride-hail use.

## 2.2 Powertrain families

| Family | Where used | Service notes |
|---|---|---|
| CA4GB15TD 1.5T GDI | H5, HS3, some HS5 | Carbon, cold misfire, short-trip oil dilution; often 7DCT |
| CA4GC20TD 2.0T GDI | H5, H9, HS5, HS7, HQ9 | Most common Hongqi engine; coil, plug, and boost-leak work; 8AT on many 2.0T cars, 7DCT on some H9 2.0T |
| 3.0 V6 | Top H9, HS7 | Supercharged on later H9; tight packaging; cooling and charge-air leaks |
| 48 V mild hybrid | Select H-series (including H5 / H9 2.0T in some years) | Belt starter-generator, 48 V battery, DC-DC; drives start-stop |
| 7DCT | H5 1.5T, some H9 2.0T | Wet dual-clutch; exact fluid and adaptations |
| Aisin 6AT | HS5 2019–2022 | Not the same fluid or adaptation as the 2023+ 8AT |
| 8AT | H5 2.0T, HS5 facelift, H9 V6, HQ9 | Torque-converter automatic |
| H5 HEV E-CVT | Second-generation H5 hybrid | Not 7DCT diagnosis |
| HQ9 / H5 PHEV | HQ9 PHEV; H5 PHEV 2025+ | Charge-permit, hybrid coolant loop, engine-start clutch |
| E-HS9 dual motor | E-HS9 | Large NCM pack; air suspension on higher trims; heavy brake and tire wear |
| E-QM5 | Fleet sedan | High mileage: drive unit, brakes, suspension |
| EH7 / EHS7 | Later BEV sedan and SUV | Newer architecture; finish software before replacing hardware |

## 2.3 Workshop setup

| Item | Practice |
|---|---|
| Scan tool | FAW / Hongqi dealer tool for 48 V, E-CVT, PHEV permits, BEV BMS, air-suspension height, ADAS, and gateway configuration. |
| Identify first | Series, gearbox, 48 V yes/no, ICE vs PHEV vs BEV from the VIN. |
| Engine oil | Viscosity on the cap and in Hongqi SI. Direct-injection 1.5T / 2.0T: dilution and intake-valve carbon. |
| Transmission fluid | 7DCT, 6AT, 8AT, and E-CVT are different fluids and different adaptation routines. |
| 48 V | Jump-starting the 12 V battery will not recover a failed 48 V pack. |
| Coolant | Engine loop versus hybrid / BEV electronics loop. Vacuum-fill each. |
| Charging | GB/T in China; CCS2 / Type 2 on European-market BEVs. |
| HV lockout | Hongqi disable, wait time, verify 0 V. Stabilize 12 V before chasing luxury-trim U-codes. |
| ADAS | Camera and radar calibration with Hongqi targets after glass, bumper, or alignment. |

## 2.4 Malfunction cases and repairs

Full symptom, DTC, and procedure tables: [brands/china/hongqi.md](brands/china/hongqi.md).

### ICE / chassis

| Case | Repair |
|---|---|
| 2.0T cold misfire and carbon | Coils and plugs to OEM spec, intake-valve cleaning when carbon is confirmed, injector service, PCV check |
| Wet DCT judder or flare | Exact fluid, clutch adaptation reset, software, then mechatronics or clutch pack |
| Torque-converter automatic harsh shift | Fluid at specified temperature, adaptation reset, software, then valve body |
| Boost leak and limp mode (2.0T and V6) | Smoke-test, repair pipe or intercooler, actuator or sensor, compare desired and actual boost |
| 48 V mild-hybrid fault, start-stop unavailable | 48 V battery state and DC-DC output, belt and tensioner, starter-generator or 48 V battery, confirm inhibit flags clear |
| Air suspension lean or compressor timeout | Leak-test springs and lines, replace the leaking part, test compressor output, calibrate height |
| Comfort-module 12 V drain (luxury trims) | Parasitic-draw by fuse after full sleep, replace or update the module that stays awake, remove accessory wiring |
| Infotainment or digital cluster reboot after an update | Confirm 12 V stability, reflash head unit and cluster, check gateway configuration |
| ADAS camera or radar after glass or bumper work | OEM-equivalent glass, calibrate cameras and radar, correct bumper paint thickness over the radar |
| Headlamp condensation or adaptive-lighting fault | Vents and seals, dry or replace the lamp or module, aim the lamps |
| Electric parking brake or rear caliper faults | EPB service mode, caliper hardware and motor, EPB calibration |
| Sunroof drain blockage and water inside | Clear drains, dry carpets, check modules under the floor or in the footwell |
| Wrong transmission fluid (7DCT vs 8AT vs 6AT) | VIN gearbox, drain the wrong fluid, refill specified fluid, matching adaptation |
| HS5 harsh shift after 2023 facelift mix-up | Identify 6AT vs 8AT, correct fluid and software, complete the fitted adaptation |
| H5 HEV E-CVT shudder | E-CVT fluid and adaptations (not 7DCT fluid), engine mounts, hybrid software |
| H9 EPS or cluster warnings after 12 V disconnect | Charge or replace 12 V, steering-angle zero, reseat EPS connectors |

### PHEV (HQ9 / H5 PHEV)

| Case | Repair |
|---|---|
| EV mode unavailable or AC charge fault | Inlet latch, control-pilot, onboard charger, BMS permit, 12 V; full charge then EV drive |
| Hybrid coolant loss and power limit | Pressure-test hybrid and engine loops separately, repair the leaking one, vacuum-fill and bleed |
| Harsh engine start from EV mode | Engine mounts, start-control software, ignition and fuel on first firing cycles |
| HQ9 parked climate / rear HVAC draining 12 V | Climate timer and 12 V state, load-test, parasitic-draw, HVAC module if it will not sleep |
| H5 PHEV (2025+) charge permit refused | Same permit path as HQ9: inlet, OBC, BMS, 12 V; full charge and EV drive |

### E-series BEV

| Case | Repair |
|---|---|
| Isolation fault after rain or a car wash | Record insulation kΩ; section PTC, compressor, OBC; dry connectors; pack repair if the pack itself fails the threshold; AC then DC charge test |
| DC fast charge handshake failure | Second station, inlet lock, GB/T or CCS2 pins, BMS software, pack temperature, replace inlet if pins are damaged |
| Thermal derate and slow DC charging in heat | Coolant level and pump current, clean heat exchangers, sticking valve, thermal software |
| E-HS9 one motor disabled | HV lockout, that axle’s connector and coolant, inverter or motor, load test |
| Onboard charger cuts out on AC | Test EVSE and site voltage, charger cooling, replace OBC if it logs internal faults |
| Morning no-Ready from a 12 V drain | Replace degraded 12 V, confirm DC-DC in Ready, find the module that is not sleeping |
| Drive-unit whine or clunk | Rule out wheel bearings, tires, and mounts, then repair the drive unit |
| Range loss and cell imbalance | Cell voltages and capacity, balance or SOC relearn, repair or replace a group that stays low |
| Weak cabin heat and extra winter range loss | PTC under lockout or heat-pump valve, retest isolation |
| Regen and brake-blending complaints | Separate full-battery / cold-pack limits from a blending-module fault |
| E-QM5 fleet wear (ride-hail mileage) | Front bushings and links, alignment, rear discs from heavy regen, drive-unit inspection |
| Interlock open after collision or panel work | Reconnect every service connector and interlock loop, reset crash signals |
| EH7 / EHS7 incomplete OTA, no propulsion | Stabilize 12 V, complete dealer flash, do not replace a drive unit until programming finishes |
| E-HS9 air suspension leak with simultaneous thermal derate | Two jobs: leak-test and calibrate height; separately service pack cooling. Do not replace a pack for a lean corner. |

### Hongqi quick triage

| Symptom | First check | Next |
|---|---|---|
| Misfire | Coils and plugs | Carbon or injectors |
| DCT judder | Fluid spec and adaptations | Mechatronics or clutch |
| Start-stop never works | 48 V or 12 V battery state | Starter-generator or DC-DC |
| Air suspension low | Leak test | Compressor |
| BEV isolation | PTC heater and compressor | Pack |
| DC charge refused | Second station and pins | BMS software, inlet |
| Battery flat when parked | Sleep-draw by fuse | Comfort or telematics module |
| Harsh shift after fluid service | VIN gearbox (7DCT / 6AT / 8AT / E-CVT) | Correct fluid and adaptations |
| H5 HEV shudder | E-CVT fluid, not DCT | Mounts / software |
| EH7 no propulsion after update | 12 V + complete flash | Then hardware |

---

# Part 3 — Shared field notes

These two makers do not share platforms. They do share workshop habits that prevent wasted parts.

1. **Read the VIN powertrain before touching fluid.** GWM DCT / DHT / 9HAT / ZF 8HP / Hi4-Z and Hongqi 7DCT / 6AT / 8AT / E-CVT all produce the same customer complaint (shudder) from the wrong fluid.
2. **12 V first on any “hybrid / EV system” cluster of warnings.** Both makers’ high-voltage controllers drop out when the low-voltage battery is weak. Jump-start, load-test, then re-evaluate codes that remain.
3. **Two coolant loops.** Engine (or none on a BEV) versus electronics / pack / OBC. Independent shops that “do a coolant service” often fill the wrong loop.
4. **Isolation after water.** Section the PTC heater, electric compressor, and onboard charger before condemning a pack.
5. **ADAS after glass or bumper.** Camera and radar need that brand’s targets. Paint thickness over a radar is a repeat false-alert cause.
6. **Finish programming before replacing a drive unit.** Incomplete OTA on Ora Coffee OS and on Hongqi EH7 / EHS7 looks like a dead motor.

## Return-to-service (either brand)

- [ ] VIN powertrain and gearbox identified and recorded
- [ ] Correct fluids documented
- [ ] Transmission / DHT / E-CVT adaptations completed where applicable
- [ ] 12 V (and 48 V on Hongqi) load-tested; sleep-draw within limits
- [ ] Hybrid / EV mode transitions smooth on a road test
- [ ] AC charging verified (and DC if fitted)
- [ ] Isolation OK on BEVs and PHEVs
- [ ] ADAS calibrated if glass, bumper, or alignment was touched
- [ ] Tank lockers and 4L verified after off-road work (GWM Tank)
- [ ] Air suspension at height after a full sleep cycle (Hongqi H9 / HS7 / E-HS9)

---

*Case counts in this compilation: GWM 39, Hongqi 35. Procedure detail remains in the brand files linked at the top.*
