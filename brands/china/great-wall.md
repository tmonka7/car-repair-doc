# Great Wall Motor (GWM) — Haval / Wey / Ora / Tank — Repair Guide (MY2020+)

**Region focus:** China (exports to Australia, Southeast Asia, Middle East, Latin America, Russia, Europe, UK, South Africa)  
**Brands under GWM:** Haval, Wey, Ora, Tank (pickups under the GWM / Poer / Cannon name are outside this passenger guide)  
**Diagnostics:** GWM dealer diagnostic tablet; generic OBD-II / EOBD covers emissions data only  
**Tech pillars:** L.E.M.O.N. platform (Haval / Wey), Tank off-road platform, ME platform (Ora BEV), DHT dedicated hybrid transmission, Hi4 all-wheel-drive hybrid, 9HAT nine-speed automatic  
**Charging:** GB/T in China; CCS2 / Type 2 in Europe, UK, and Australia  
**HV safety:** Use the GWM high-voltage disable procedure, verify 0 V at the pack output, and treat any underbody impact on a BEV or PHEV as a pack inspection

---

## 1. 2020+ model map

| Brand | Examples (MY2020+) | Powertrains |
|---|---|---|
| Haval | H6 (3rd gen), Jolion / Chulian, H6S, Big Dog / Dargo, Xiaolong / Xiaolong Max, Raptor, H9 (2nd gen) | 1.5T / 2.0T ICE, DHT HEV, DHT PHEV, Hi4 AWD PHEV |
| Wey | VV5 / VV6 / VV7 (run-out), Mocha, Macchiato, Latte (“coffee” series), Lanshan / Blue Mountain, Gaoshan MPV | 2.0T ICE, DHT HEV / PHEV, Hi4 PHEV |
| Ora | Good Cat (Ora 03), Ballet Cat, Lightning Cat (Ora 07), Black Cat / White Cat | BEV (LFP or NCM packs depending on version) |
| Tank | 300, 400, 500, 700 | 2.0T / 3.0T V6 ICE with 9HAT, Hi4-T PHEV |

### Powertrain families

| Family | Where used | Service notes |
|---|---|---|
| 1.5T GDI | Haval Jolion, H6, Wey coffee series | Direct injection: intake-valve carbon, cold misfire, oil dilution on short trips |
| 2.0T GDI | Haval H6, Wey, Tank 300 | Higher boost: charge-pipe and intercooler leaks, coil and plug life |
| 3.0T V6 | Tank 500 / 700 | Paired with 9HAT; cooling and boost faults present as limp mode |
| 7-speed wet DCT | Haval H6, Jolion and other ICE models | Exact fluid spec; clutch adaptations after any clutch, mechatronics, or battery work |
| 9HAT 9-speed automatic | Tank, Haval H9, select Wey | Torque-converter automatic; adaptation reset after fluid or valve-body work |
| DHT (dual-motor dedicated hybrid) | Haval H6 HEV / PHEV, Jolion HEV, Wey DHT models | Separate hybrid coolant circuit; DHT-specific fluid; inverter and motor temperatures in live data |
| Hi4 | Haval Xiaolong Max, Raptor; Wey Lanshan | DHT at the front plus a rear electric drive unit for all-wheel drive |
| Hi4-T | Tank 400 / 500 / 700 PHEV | P2 motor and clutch ahead of the 9HAT; off-road lockers and transfer case remain |
| Ora electric drive | Good Cat, Lightning Cat, Ballet Cat | Single front motor on most versions; onboard charger and pack share the thermal system |
| Hi4-Z | Tank 500 (and related) PHEV | Longitudinal 3-speed hybrid unit plus dual motors and a large underfloor pack; do not treat it as a 9HAT Hi4-T |
| ZF 8HP 8-speed | Some Tank 300 ICE | Different fluid and adaptations from GWM 9HAT—confirm from the VIN before any transmission service |

### Workshop setup

| Item | Practice |
|---|---|
| **Scan tool** | GWM dealer tablet for DHT, Hi4, 9HAT, Ora BMS, ADAS calibration, and adaptations. Generic OBD-II will not run those functions. |
| **Identify first** | Read the VIN build: brand (Haval / Wey / Ora / Tank), ICE vs DHT HEV vs PHEV vs BEV, DCT vs 9HAT vs ZF 8HP vs Hi4-T vs Hi4-Z. |
| **Engine oil** | GDI 1.5T / 2.0T / V6: use the viscosity and ACEA/API grade on the oil cap and in GWM SI. Short-trip dilution is common—do not extend intervals on city-only cars. |
| **DCT / DHT / 9HAT fluid** | Three different fluids. Using ATF in a DHT, or 9HAT fluid in a ZF 8HP, causes shudder that looks like a clutch failure. |
| **Coolant** | Engine loop and hybrid/inverter (or Ora pack/OBC) loop are separate. Vacuum-fill each; do not mix chemistries. |
| **Brake fluid** | DOT 4 unless the VIN specifies otherwise. EPB must be in service mode before rear pad work. |
| **Charging** | GB/T in China; CCS2 / Type 2 on Europe, UK, and Australia exports. Inlet hardware is not interchangeable. |
| **HV lockout** | GWM disable procedure, wait time, verify 0 V at pack output. After underbody impact on Ora or a PHEV, inspect the pack and orange connectors before a road test. |
| **ADAS** | Windshield camera and front radar need GWM targets after glass, bumper, or alignment work. |

---

## 2. ICE / chassis examples

### Example A — Haval H6 / Jolion: wet DCT shudder and mechatronics faults

| Field | Detail |
|---|---|
| **Vehicles** | Haval H6, Jolion, and other 1.5T / 2.0T models with the 7-speed wet DCT |
| **Symptoms** | Judder on takeoff, flare between 1st and 2nd, creep surge in traffic, transmission warning |
| **Typical DTCs** | Clutch slip or engagement codes, mechatronics pressure or position codes |
| **Root causes** | Wrong or aged fluid; clutch adaptations lost after battery or module work; worn clutch pack; mechatronics solenoid fault |
| **Diagnosis** | 1) Confirm fluid level and spec. 2) Read clutch adaptation values and slip counters. 3) Road test in creep and light throttle. 4) Separate engine mounts from clutch judder. |
| **Repair** | Fluid service with the exact spec, clutch adaptation reset with the dealer tool, transmission software, then mechatronics or clutch kit if slip remains |

### Example B — Turbo boost low or high

| Field | Detail |
|---|---|
| **Symptoms** | Limp mode, P0299 (underboost) or overboost codes, whistle or whoosh under load |
| **Root causes** | Split charge pipe or loose clamp; intercooler leak; wastegate actuator or linkage; boost sensor fault |
| **Diagnosis** | Smoke-test the intake; compare desired and actual boost in live data; check actuator travel |
| **Repair** | Charge pipes and clamps, wastegate actuator, turbo if shaft play or oil leak is confirmed |

### Example C — 1.5T / 2.0T GDI cold misfire and carbon

| Field | Detail |
|---|---|
| **Symptoms** | Rough cold idle, flashing MIL under load, P0300–P0304 |
| **Root causes** | Coil or plug failure; intake-valve carbon; low-quality fuel; injector leakage |
| **Diagnosis** | Misfire counters per cylinder; swap coils; borescope the intake valves; fuel trims |
| **Repair** | Coils and plugs to OEM spec, intake-valve cleaning when carbon is confirmed, injector service, PCV check |

### Example D — All-wheel-drive binding or hop (Haval AWD, Tank)

| Field | Detail |
|---|---|
| **Symptoms** | Hop or bind on tight, dry turns; AWD warning |
| **Root causes** | Mismatched tire sizes or wear; coupling fluid aged; coupling clutch pack worn; Tank transfer case left in a locked mode on pavement |
| **Repair** | Match tires, service the coupling or transfer-case fluid, replace the clutch pack, and confirm the driver is not using 4L or a locked mode on dry pavement |

### Example E — Tank 300 / 500: electronic locker or 4L will not engage

| Field | Detail |
|---|---|
| **Symptoms** | Locker lamp flashes and never goes solid; 4L request refused; transfer-case DTCs |
| **Root causes** | Water in axle actuator connectors after fording; actuator motor seized; position sensor fault; low 12 V |
| **Diagnosis** | Actuator current and position in live data; inspect connectors at each axle; check breathers |
| **Repair** | Dry and seal connectors, replace the actuator or sensor, extend breathers if fording is regular, verify each locker engages |

### Example F — Tank 9HAT harsh shift or flare

| Field | Detail |
|---|---|
| **Symptoms** | Bang into 2nd or 3rd, flare on downshift, delayed reverse |
| **Root causes** | Adaptations not reset after fluid service; low fluid; valve-body solenoid fault; outdated calibration |
| **Repair** | Correct fluid level at the specified temperature, adaptation reset, software update, then valve body if still harsh |

### Example G — ADAS camera or radar faults after glass or bumper work

| Field | Detail |
|---|---|
| **Symptoms** | Forward collision warning, lane keep, or adaptive cruise disabled |
| **Root causes** | Non-OEM windshield; missing calibration; bumper paint too thick over the radar; bracket bent |
| **Repair** | OEM-equivalent glass, static and dynamic calibration with GWM targets, correct bumper repair over the radar |

### Example H — Infotainment reboot loop and low-voltage drain

| Field | Detail |
|---|---|
| **Symptoms** | Screen reboots repeatedly, battery flat after a few days parked |
| **Root causes** | Head unit or telematics module not sleeping; gateway software; aftermarket accessory wiring |
| **Repair** | Software update, parasitic-draw test by fuse, replace the module that stays awake, remove the faulty accessory feed |

### Example I — Electric parking brake and Auto Hold faults

| Field | Detail |
|---|---|
| **Symptoms** | EPB warning, parking brake will not release, Auto Hold unavailable |
| **Root causes** | Corroded rear caliper slides or motor connector; low 12 V; pads replaced without service mode |
| **Repair** | Put the EPB into service mode, clean or replace caliper hardware and motor, then run the EPB calibration |

### Example J — Air-conditioning odor and water on the passenger floor

| Field | Detail |
|---|---|
| **Symptoms** | Musty smell, wet carpet on the passenger side |
| **Root causes** | Blocked evaporator drain; microbial growth on the evaporator; blocked cabin filter |
| **Repair** | Clear the drain, clean the evaporator, replace the cabin filter, dry the carpet and check modules under it |

### Example K — Steering-angle or ESP warning after alignment

| Field | Detail |
|---|---|
| **Symptoms** | ESP or lane-keep warning, steering wheel off-center after an alignment |
| **Repair** | Re-center the steering wheel during alignment, then calibrate the steering-angle sensor with the dealer tool |

### Example L — Panoramic roof drain clog

| Field | Detail |
|---|---|
| **Vehicles** | Haval H6, Wey Mocha / Lanshan, Tank 500 where a panoramic roof is fitted |
| **Symptoms** | Wet headliner or A-pillar, musty odor, intermittent body-control faults after rain |
| **Repair** | Clear roof drains with a soft line, dry carpets and headliner, inspect warped drain tubes and reseat them |

### Example M — 1.5T / 2.0T GDI oil dilution on short trips

| Field | Detail |
|---|---|
| **Symptoms** | Oil level rising, fuel smell on the dipstick, misfire after a cold start |
| **Root causes** | Repeated short trips; leaking injectors; PCV fault |
| **Repair** | Oil and filter change, shorten the interval for city use, repair injectors or PCV if dilution returns immediately, borescope if knock is present |

### Example N — ABS / ESP after mixed tires

| Field | Detail |
|---|---|
| **Symptoms** | ABS or ESP lamps, traction intervention on a straight road |
| **Repair** | Match tire size, load rating, and remaining tread; check wheel-speed live data; complete a TPMS learn if sensors were swapped |

### Example O — Tank 500 / 700 3.0T V6 overheat or limp

| Field | Detail |
|---|---|
| **Symptoms** | Temperature warning, limp mode, boost-related DTCs after a climb or trailer work |
| **Repair** | Cooling fans, radiator and intercooler cleanliness, thermostat, charge-air leaks; repair cooling before condemning the turbo |

### Example P — Incomplete Coffee OS / OTA, features missing

| Field | Detail |
|---|---|
| **Symptoms** | Multiple U-codes, blank screens, ADAS or HVAC functions missing after an update |
| **Repair** | Stabilize 12 V, complete the dealer flash, do not road-test while modules are mid-configuration |

---

## 3. DHT hybrid and PHEV (Haval / Wey) — detailed examples

### HEV/PHEV Example 1 — DHT shudder at 20–40 km/h

| Item | Detail |
|---|---|
| **Vehicles** | Haval H6 HEV / PHEV, Jolion HEV, Wey coffee-series DHT |
| **Symptoms** | Shake in hybrid mode, worse when warm or at low state of charge transitions |
| **Troubleshooting** | Fluid condition; adaptation values; engine mount versus clutch; software version |
| **Repair procedure** | DHT fluid service with the OEM fluid → adaptation reset with the dealer tool → software → clutch or DHT repair if metal or slip remains → road test in EV and hybrid modes |

---

### HEV/PHEV Example 2 — PHEV will not take an AC charge, EV mode locked

| Item | Detail |
|---|---|
| **Symptoms** | Wallbox error; engine always runs |
| **Diagnosis** | Inlet latch; control-pilot signal; onboard charger; battery-management charge permit; 12 V level |
| **Repair** | Onboard charger or inlet, battery-management software update, full charge followed by an EV drive to verify |

---

### HEV/PHEV Example 3 — Hybrid-electronics coolant loss and power limit

| Item | Detail |
|---|---|
| **Symptoms** | Power limited; motor or inverter temperature DTCs |
| **Diagnosis** | Identify the hybrid loop versus the engine loop; pressure-test each; check the electric pump |
| **Repair** | Repair the leak, replace the pump if needed, vacuum fill and bleed the hybrid loop |

---

### HEV/PHEV Example 4 — Harsh engine start out of EV mode

| Item | Detail |
|---|---|
| **Symptoms** | Bang or jolt when the engine couples in |
| **Repair** | Engine mounts, start-control software, ignition and fuel quality on the first firing cycles |

---

### HEV/PHEV Example 5 — Cell imbalance and collapsed EV range

| Item | Detail |
|---|---|
| **Symptoms** | Charging ends early; EV range far below new |
| **Repair** | Read cell voltages, repair the pack or modules, check the battery cooling path, then relearn state of charge |

---

### HEV/PHEV Example 6 — Hybrid system warning that clears after a jump start

| Item | Detail |
|---|---|
| **Vehicles** | H6 HEV, Jolion HEV |
| **Symptoms** | Several hybrid warnings at once, will not reach Ready, all clear after jump-starting |
| **Root causes** | Weak 12 V battery; DC-DC converter not charging; poor ground |
| **Repair** | Load-test and replace the 12 V battery, confirm DC-DC output in Ready, clean grounds, then a sleep-draw test |

---

### HEV/PHEV Example 7 — Hi4 rear motor disabled, all-wheel drive unavailable

| Item | Detail |
|---|---|
| **Vehicles** | Haval Xiaolong Max, Raptor; Wey Lanshan |
| **Symptoms** | AWD unavailable message; front-wheel drive only; rear drive-unit DTCs |
| **Root causes** | Rear inverter over-temperature from low coolant; damaged rear high-voltage connector; rear motor position-sensor fault |
| **Repair** | High-voltage lockout, inspect the rear connector and coolant level, repair the inverter or motor, clear codes, test AWD under load |

---

### HEV/PHEV Example 8 — Tank Hi4-T: harsh engagement of the P2 clutch

| Item | Detail |
|---|---|
| **Vehicles** | Tank 400 / 500 / 700 Hi4-T |
| **Symptoms** | Jolt when the engine joins the electric drive; shift harshness on the 9HAT |
| **Repair** | Clutch and 9HAT adaptation reset, software update, then inspect the P2 clutch if harshness returns |

---

### HEV/PHEV Example 9 — Fuel aging and oil dilution from long EV-only use

| Item | Detail |
|---|---|
| **Symptoms** | Engine runs on its own to maintain itself; rough engine start after weeks of EV-only use |
| **Repair** | Confirm it is a normal maintenance run, change oil if dilution is found, advise the owner to use the engine periodically |

---

### HEV/PHEV Example 10 — Vehicle-to-load (external discharge) not working

| Item | Detail |
|---|---|
| **Symptoms** | Discharge adapter connects but no output |
| **Root causes** | State of charge below the discharge limit; adapter fault; onboard charger discharge function disabled in settings |
| **Repair** | Check the state-of-charge limit and settings, test with a known-good adapter, then repair the onboard charger |

---

### HEV/PHEV Example 11 — Hi4-Z charge power capped or derate

| Item | Detail |
|---|---|
| **Vehicles** | Tank 500 Hi4-Z and related large-pack PHEV |
| **Symptoms** | DC charge stays low; power limited after highway driving |
| **Repair** | Confirm Hi4-Z (3-speed hybrid unit), not Hi4-T 9HAT; check pack cooling pumps and valves; update battery-management software; vacuum-fill the battery loop |

---

### HEV/PHEV Example 12 — Wrong transmission fluid after independent service

| Item | Detail |
|---|---|
| **Symptoms** | Sudden shudder or flare after a “transmission service” |
| **Repair** | Identify DCT, DHT, 9HAT, ZF 8HP, or Hi4-Z from the VIN; drain the wrong fluid, refill with the specified fluid, reset adaptations |

---

## 4. Ora BEV — detailed examples

### BEV Example 1 — Onboard charger overheat, AC charge intermittent

| Item | Detail |
|---|---|
| **Symptoms** | Charging stops mid-session, resumes later, onboard-charger temperature DTCs |
| **Troubleshooting** | Charger coolant flow; fan operation; grille blockage; site voltage |
| **Repair procedure** | Restore cooling → replace the onboard charger if it is heat-damaged → vacuum-fill the coolant → software → several hours of AC charging to verify |

---

### BEV Example 2 — Isolation fault in wet weather

| Item | Detail |
|---|---|
| **Symptoms** | Insulation warning, reduced power, charging refused; P0AA6-type isolation codes |
| **Common leak paths** | High-voltage PTC heater; electric A/C compressor; onboard charger; underbody connectors |
| **Repair** | Isolate the heater, compressor, charger, and pack one at a time; dry the connectors; replace the heater or compressor if it is leaking to the high-voltage bus; retest insulation dry |

---

### BEV Example 3 — Charge connector locked after charging

| Item | Detail |
|---|---|
| **Symptoms** | Cable stays locked after the session ends |
| **Repair** | Manual release, lock motor, check for water in the port |

---

### BEV Example 4 — Drive-unit whine or bearing noise

| Item | Detail |
|---|---|
| **Symptoms** | Noise that rises with road speed |
| **Repair** | Rule out wheel bearings and tires first, then repair the electric drive unit |

---

### BEV Example 5 — Winter PTC heater drain or fault

| Item | Detail |
|---|---|
| **Symptoms** | Range collapse in cold weather; PTC DTCs; weak cabin heat |
| **Repair** | Replace the high-voltage PTC under lockout, retest isolation, check heat-pump valves if fitted |

---

### BEV Example 6 — 12 V sleep and telematics drain

| Item | Detail |
|---|---|
| **Symptoms** | Car will not wake in the morning |
| **Repair** | Sleep-draw test, telematics software update, 12 V battery replacement if it is degraded |

---

### BEV Example 7 — DC fast charge refused or very slow

| Item | Detail |
|---|---|
| **Symptoms** | Station stops at the handshake, or charges at a fraction of the expected power |
| **Root causes** | Inlet lock or pin damage; battery-management software versus the station; pack too cold or hot |
| **Repair** | Try a second station, inspect GB/T or CCS2 pins, update battery-management software, check pack temperature before replacing the inlet |

---

### BEV Example 8 — Lightning Cat: flush door handles or frameless windows not indexing

| Item | Detail |
|---|---|
| **Symptoms** | Handles do not present, windows do not drop when the door opens, after a 12 V disconnect or in freezing weather |
| **Repair** | Re-initialize the window positions, check the handle motor and its connector for water, update the door-module software |

---

### BEV Example 9 — Regenerative braking or brake-feel complaints

| Item | Detail |
|---|---|
| **Symptoms** | Inconsistent regen strength, pedal feels different from day to day |
| **Repair** | Separate normal limits (full battery, cold pack) from a real fault; repair the brake-blending module if codes are stored |

---

### BEV Example 10 — Interlock open after collision or front-end repair

| Item | Detail |
|---|---|
| **Symptoms** | No Ready after body repair; high-voltage interlock DTC |
| **Repair** | Reconnect and verify every high-voltage service connector and interlock loop, check the crash-sensor reset, clear codes |

---

### BEV Example 11 — PEPS / key not recognized with 12 V apparently healthy

| Item | Detail |
|---|---|
| **Symptoms** | No Ready, key-not-detected message, aftermarket alarm recently fitted |
| **Repair** | Load-test 12 V under cranking/wake, check PEPS antennas and key battery, remove parasitic accessory wiring, then gateway software |

---

## 5. Quick triage

| Symptom | First check | Next |
|---|---|---|
| DCT judder | Fluid spec and clutch adaptations | Mechatronics or clutch kit |
| DHT shudder | Fluid and adaptations | Clutch or DHT |
| Ora charge stops | Onboard-charger temperature and cooling | Onboard charger replacement |
| PHEV has no EV mode | Charge permits | Onboard charger or battery management |
| Isolation | PTC heater and compressor | Pack |
| AWD hop | Tire match | Coupling |
| Tank locker refused | Connectors after water | Actuator |
| Hi4 AWD unavailable | Rear coolant and connector | Rear inverter or motor |
| Hi4-Z slow DC charge | Pack cooling pumps | BMS software |
| Sudden shudder after fluid service | VIN transmission type | Correct fluid and adaptations |
| Oil level rising | Short-trip dilution | Injectors / PCV |

---

## 6. Return-to-service

- [ ] DCT, DHT, or 9HAT adaptations completed  
- [ ] Hybrid and EV transitions smooth on the road test  
- [ ] AC charging verified (and DC if fitted)  
- [ ] Correct fluids documented  
- [ ] Isolation OK on BEVs and PHEVs  
- [ ] ADAS calibrated if glass, bumper, or alignment was touched  
- [ ] Tank lockers and 4L verified after any off-road repair  

---

*DCT, DHT, Hi4, and Ora BEV systems are separate diagnostic paths—identify the powertrain from the VIN before ordering parts.*
