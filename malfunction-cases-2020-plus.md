# Malfunction Cases and Repair Measures (MY2020+)

Field catalog for passenger cars manufactured from **2020 onward** in **Japan**, the **United States**, and **China**. Each row is one case already written up in the matching brand file, with the repair that file specifies.

This catalog does not cover every 2020-and-later vehicle worldwide. Korean makers and many other European lines are still outside these files. Confirm every job against the VIN-specific factory procedure, TSBs, and recalls.

Orange high-voltage circuits require the factory lockout, the correct protective equipment, and an isolation check before service.

Displayed mileage must remain the distance the vehicle has actually traveled. This guide does not describe changing the instrument-cluster reading.

Start here: **[README.md](README.md)**

---

## Toyota / Lexus

Source: [brands/japan/toyota-lexus.md](brands/japan/toyota-lexus.md)

| Case | Repair |
|---|---|
| RAV4, Camry, Highlander ABS/VSC after tire service | Match tire size and pressure, clean or replace tone rings and sensors, repair chafed harnesses, then run the actuator self-check |
| Corolla 2.0 Dynamic Force cold misfire | Replace coils and plugs with the correct heat range, walnut-blast confirmed intake-valve carbon, service injectors, and check the PCV |
| Lexus RX/NX electric power steering warning after a battery disconnect | Load-test the 12 V battery, zero the steering-angle sensor, and reseat the torque-sensor connector |
| RAV4 wet headliner and odor from a clogged panoramic-roof drain | Clear the roof drains and dry the carpets |
| Camry stop-start unavailable | Test and register the AGM battery, repair the hood-latch switch, and clear the inhibit that Techstream shows |
| Hybrid inverter or motor-generator coolant loss | Repair the leak, refill the dedicated hybrid circuit, and confirm pump duty and inverter temperature |
| Hybrid battery block imbalance | Test block voltages and replace the pack or the failed blocks per the factory procedure |
| Harsh or delayed engine start out of EV mode | Check the engine-start clutch, coolant temperature, and hybrid control inputs before replacing hardware |
| Ready with no movement | Trace motor-generator and inverter codes and the high-voltage interlock before condemning a motor |
| RAV4 Prime / NX plug-in EV mode locked out | Repair the onboard charger or charge-port fault that is inhibiting EV operation |
| Jump clears Check Hybrid System | Load-test 12 V; confirm DC-DC in Ready; re-scan remaining HV codes |
| Rear MG / AWD disabled | Match tires; then rear inverter/motor isolation and connector |
| Active grille shutter | Debris; shutter motor; commanded vs actual |
| P710 resolver / P1C5D / P1C5F | Health check; motor-cable bulletin before inverter R&R |
| Sienna sliding-door water → hybrid network | Dry doors and grounds before pack diagnosis |
| Lexus Mark Levinson drain | Sleep-draw; amplifier; then 12 V |
| Prime / 450h+ charge-door latch | Latch/lock; water in port; then OBC |
| bZ4X isolation after rain | Section PTC, compressor, OBC, pack |
| bZ4X AC charge cuts out | EVSE; OBC cooling; OBC if internal |
| bZ4X / RZ winter heat collapse | PTC or heat-pump valve; isolation retest |
| bZ4X incomplete flash no Ready | Finish programming on stable 12 V |
| bZ4X / RZ inlet moisture | Dry inlet; latch; seals |
| After collision HVIL + restraint | Interlock and crash reset; no HVIL jumper |

## Toyota Camry (MY2020+)

Source: [brands/japan/toyota-camry.md](brands/japan/toyota-camry.md)

| Case | Repair |
|---|---|
| 2.5 UB80 8-speed harsh shift, flare, or shudder | Confirm UB80 (not UA80); ATF WS at specified temperature; TCM update and adaptations; valve body or unit if slip remains |
| V6 UA80 whine or grind | Confirm UA80 and serial range; replace the transaxle when the TSB applies |
| A25A electric water pump leak / P26CA, P26CB | Replace the pump and connector, fill SLLC, ECM update if required |
| 2023–2024 oil leak at pan / stiffening crankcase | Reseal the pan with specified FIPG per TIS |
| Valve-cover seepage on NAP A25A | Replace the cover gasket (and cover if warped) |
| A25A D-4S cold misfire | OEM coils and plugs; injector service if trims point there |
| Reduced power in freezing weather (throttle DTCs) | When the VIN bulletin applies, replace ECM and fuel-pump assembly together |
| 2020 2.5 porous block / internal coolant leak | VIN campaign; engine replacement per Toyota — do not seal the block |
| Fuel pump crank/no-start or stall | VIN campaign first; replace the pump assembly; confirm low-side pressure |
| Auto Idle Stop not ready (ICE) | Load-test and register AGM; repair hood-latch switch; clear remaining inhibit PIDs |
| ABS / VSC after tires or hubs | Match tire size and tread; tone rings and sensors; actuator self-check |
| XV70 2.5 mechanical AWD binding | Match tires; service rear coupling fluid (not an XV80 rear motor) |
| TSS after glass or bumper | Toyota-grade windshield; camera and radar calibration |
| EPS lamp after 12 V disconnect | Charge/replace 12 V; steering-angle zero; reseat torque-sensor connector |
| Moonroof drain wetting carpet | Clear drains; dry carpets; inspect wet modules |
| Electric parking brake / rear drag | EPB service mode; rear hardware and motors; EPB calibration |
| Hybrid inverter / MG coolant loss | HV lockout; repair hybrid-loop leak; vacuum-fill SLLC; confirm inverter temps |
| XV70 NiMH pack imbalance / P0A80 | Block voltages; intake filter; pack or modules per policy — not an XV80 Li-ion procedure |
| P1C5D19 / P1C5F19 inverter over-current | Health check; motor-cable repair per bulletin before replacing the inverter |
| Harsh engine start out of EV quiet | Mounts, first-cycle ignition/fuel, hybrid start calibration |
| Ready with no movement | Shift PID, brake switch, P710 resolver connector before MG/inverter |
| Active grille shutter fault | Debris, shutter motor, commanded vs actual position |
| XV80 Li-ion thermal derate | Hybrid-loop pump and pack cooling; software |
| XV80 electronic AWD rear motor disabled | HV lockout; rear connector and isolation; rear inverter or motor |
| Hybrid warnings that clear after a jump | 12 V load test, DC-DC in Ready, grounds, sleep-draw |
| 2025+ inverter fastener campaign | VIN campaign only; HV lockout; Toyota procedure — no field “snug the bolt” shortcut |

## Honda / Acura

Source: [brands/japan/honda-acura.md](brands/japan/honda-acura.md)

| Case | Repair |
|---|---|
| 1.5T fuel dilution (Civic, CR-V, Accord) | Shorten oil intervals, repair the root cause of short-trip dilution, and address any related misfire hardware |
| Civic driver aids and brake-hold faults after a 12 V replacement | Charge the battery and complete the required calibrations |
| Accord air-conditioning codes in heat | Test the clutch or compressor and the pressure sensors |
| CR-V rear brake groan and electric parking brake drag | Service the rear calipers and parking-brake mechanism |
| Acura MDX SH-AWD noise in tight turns | Service the rear drive unit and its fluid |
| “Power system” warning with a healthy-looking hybrid battery | Diagnose the power control unit, DC-DC converter, and 12 V supply before replacing the pack |
| Motor-generator performance code with whine | Inspect the motor and resolver path and replace the failed unit |
| Harsh engine engagement on the two-motor hybrid | Check clutch control and engine-start strategy inputs |
| Hybrid cooling fan always on | Repair the power-control-unit cooling circuit |
| CR-V plug-in will not charge | Repair the charge inlet, onboard charger, or the interlock that is blocking EV range |
| Engine starts in EV mode when the driver expects silence | Confirm it is a normal catalyst or climate start before replacing parts |
| Prologue reduced propulsion | Follow the Ultium isolation and contactor diagnosis |
| Low-voltage drain with phone-as-key modules awake | Find the module that is not sleeping and correct it |

## Nissan / Infiniti

Source: [brands/japan/nissan-infiniti.md](brands/japan/nissan-infiniti.md)

| Case | Repair |
|---|---|
| Rogue and Altima CVT shudder | Service or replace the CVT and use the specified fluid and adaptation |
| QX50 variable-compression turbo oil use and rattle | Verify oil consumption and repair the variable-compression hardware the codes point to |
| Rogue ProPILOT camera-blocked messages | Clean or recalibrate the camera and repair the windshield or cover that is blocking it |
| Electric parking brake and rear brake corrosion | Free or replace the rear brake hardware |
| QX60 air suspension or damper faults | Repair the leaking spring or the damper module |
| No Ready after a contactor click | Trace the high-voltage interlock and contactor control |
| Early turtle mode and capacity loss | Test the pack for cell imbalance |
| Quick charge unavailable | Repair the DC charge path indicated by the P3200-class codes |
| Isolation fault after rain | Dry and repair the wet high-voltage connector or underbody path |
| Rear motor of an electric all-wheel-drive system disabled | Repair that axle’s inverter or motor |
| Charge-door latch fault | Repair the electronic latch |
| Weak heat-pump heat and extra range loss | Repair the heat pump and its valves |
| 12 V drain with telematics awake | Correct the module that is staying awake |

## Mazda

Source: [brands/japan/mazda.md](brands/japan/mazda.md)

| Case | Repair |
|---|---|
| Skyactiv-G misfire under load | Coils, plugs, and fuel delivery, then carbon if the trims support it |
| Coolant loss on affected Skyactiv engines | Confirm any campaign, then repair the head or cooling-system leak |
| Radar false warnings after bumper repair | Correct paint thickness and recalibrate the radar |
| CX-5 all-wheel-drive binding | Service the transfer case and its fluid |
| Infotainment reboot and battery drain | Repair the head unit or the keep-alive circuit |
| Plug-in EV mode or charge fault | Repair the charger and the inhibit that is blocking EV mode |
| Harsh changeover to the engine | Check the hybrid clutch engagement |
| Regenerative-braking feel and ABS events | Repair the brake-blending fault the codes identify |
| Thermal fault that caps charge rate | Repair the battery cooling circuit |
| Isolation fault and reduced power | Locate and dry or replace the breached high-voltage insulation |
| Rotary range-extender no-start | Diagnose the rotary start path separately from the traction battery |
| Charge-port latch stuck | Repair the latch mechanism |

## Subaru

Source: [brands/japan/subaru.md](brands/japan/subaru.md)

| Case | Repair |
|---|---|
| Chronic 12 V drain | Find the parasitic draw and the module that is not sleeping |
| EyeSight off after a windshield | Install the correct glass and calibrate the cameras |
| WRX oil dilution and cold knock | Verify oil level and dilution, then address fuel and knock control |
| CVT flare or binding | Service the TR580 or TR690 with the correct fluid and adaptations |
| Rear differential noise | Service the rear differential and all-wheel-drive coupling |
| Cam-carrier and oil-pan leaks | Reseal the leaking joint |
| Hybrid assist missing | Repair the integrated starter-generator circuit the codes name |
| Vibration in electric assist | Inspect the motor mount and assist clutch |
| Solterra isolation or DC-charge abort | Isolation and charge-path repair shared with the related Toyota electric platform |
| Rear electric axle disabled | Repair that drive unit |
| EV-system warning after an update or sleep | Complete the interrupted update and confirm 12 V health |
| Brake-pedal feel complaints | Separate normal regen blending from a real brake fault |

## Mitsubishi

Source: [brands/japan/mitsubishi.md](brands/japan/mitsubishi.md)

| Case | Repair |
|---|---|
| Outlander air-conditioning odor | Clean the evaporator and restore drain flow |
| CVT judder | Fluid service or unit repair |
| Driver-aid faults after a cover repair | Recalibrate the camera and radar |
| All-wheel-drive neglect | Service the transfer fluid |
| Cluster anomalies from bad grounds | Clean and tighten the ground points |
| Plug-in will not take an AC charge | Repair the onboard charger, inlet, or EVSE handshake |
| EV mode forced into series hybrid | Find the inhibit (temperature, battery, or engine request) |
| Rear motor fault on the twin-motor system | Repair that motor or inverter |
| Hybrid coolant loss and inverter over-temperature | Repair the leak and refill the inverter circuit |
| Cell imbalance and capacity loss | Test and repair or replace the pack |
| Engine starts for catalyst warm-up | Confirm it is a normal start before replacing parts |

## Tesla

Source: [brands/united-states/tesla.md](brands/united-states/tesla.md)

| Case | Repair |
|---|---|
| Overnight 12 V failure | Replace the low-voltage battery and find why it was discharged |
| Phantom braking and camera obstruction | Clean and calibrate the cameras; check for a cracked windshield |
| Door handle and latch faults | Repair the handle or latch mechanism |
| Model 3/Y front lateral-link creak | Replace the worn link and align |
| Unable to drive with contactors open | Trace the high-voltage interlock and contactor control |
| Supercharging stuck at low power | Repair the thermal system that is limiting charge rate |
| Drive-unit whine or a click on regen | Repair the drive unit |
| Coolant leak onto pack connectors | Repair the leak and the damaged connector |
| Charge-port latch and proximity faults | Repair the port hardware |
| Brick imbalance and lasting range loss | Pack diagnosis and repair or replacement |
| Heat-pump noise and poor cabin heat | Repair the heat pump and its valves |
| After a collision, interlock and restraint faults | Repair the interlock and the restraint system together |

## Ford / Lincoln

Source: [brands/united-states/ford-lincoln.md](brands/united-states/ford-lincoln.md)

| Case | Repair |
|---|---|
| EcoBoost misfire | Coils and plugs, then injectors if the misfire stays on one cylinder |
| Affected 1.5 and 2.0 engines with coolant or plug-thread issues | Confirm the VIN campaign and complete that repair |
| 10R80 harsh shifts | Fluid service, adaptations, and valve-body or unit repair when adaptations do not hold |
| SYNC keep-alive drain | Correct the module that stays awake |
| Lincoln air or continuous-damping faults | Repair the spring, compressor, or damper |
| “Stop Safely Now” | Treat it as a high-voltage shutdown and trace the code before driving |
| Hybrid transmission shudder | Use the hybrid-specific fluid and repair the unit if shudder returns |
| Harsh engine restart | Check the 12 V battery and the start-stop inputs |
| Escape plug-in will not charge | Repair the charge inlet and onboard charger |
| Coolant loss with the engine and hybrid loops confused | Pressure-test each loop separately and repair the leaking one |
| Electric charge fault or isolation | Dry and repair the isolation breach, then retest charge |
| Battery-temperature power limit | Repair cooling and confirm the derate clears when temperatures normalize |
| Front or rear drive-unit noise | Repair that drive unit |
| 12 V and zone-controller drains | Find the zone module that is not sleeping |
| Flush door-handle faults | Repair the handle module and its wiring |

## General Motors

Source: [brands/united-states/general-motors.md](brands/united-states/general-motors.md)

| Case | Repair |
|---|---|
| Lifter tick and misfire on cylinder-deactivation engines | Repair the failed lifters and the related cam damage |
| Eight-speed and nine-speed harsh shifts | Fluid, adaptations, then valve body or unit |
| Start-stop faults | Test the AGM battery and register the replacement |
| Super Cruise camera or lidar faults | Clean, align, and calibrate the sensors |
| Blend-door ticking | Replace the failed actuator |
| Isolation with reduced propulsion | Locate the insulation fault before replacing a pack |
| AC charge will not start | Repair the inlet, proximity circuit, or onboard charger |
| Accessory-power-module and 12 V faults | Repair the DC-DC converter and the 12 V battery |
| Hot-soak reduced power | Restore battery cooling |
| High-voltage charging-system warning | Repair the charge path the code identifies |
| Vehicle-to-load or accessory-inverter faults | Repair that inverter circuit |
| Drive-unit whine | Repair the drive unit |
| One-pedal regen and brake codes | Repair the brake-blending module the codes name |
| No propulsion after an incomplete update | Finish the programming before replacing hardware |

## Rivian

Source: [brands/united-states/rivian.md](brands/united-states/rivian.md)

| Case | Repair |
|---|---|
| Low-voltage brownout and cascading faults | Restore the 12 V system first, then clear the secondary codes |
| Air suspension will not level | Repair the compressor, a leaking spring, or a height sensor |
| Door, gear-tunnel, and tonneau faults | Repair the latch or the module for that panel |
| Tire wear from ride-height offset | Correct the height sensors and align |
| Driver aids after a windshield | Calibrate the cameras |
| Isolation and reduced power after water | Dry and repair the breached high-voltage path |
| Thermal derate on a trail | Restore cooling and let pack temperature recover |
| Inverter or motor harshness | Repair the noisy drive unit |
| AC charge failure at an EVSE | Test the station and the vehicle inlet separately |
| DC fast charge aborting | Repair the thermal or communication fault that is stopping the session |
| Park-pawl and brake-hold conflicts | Diagnose the park actuator and the hold function together |
| Interlock open after panel work | Close and verify every service connector |

## Jeep / Stellantis plug-in

Source: [brands/united-states/jeep-stellantis.md](brands/united-states/jeep-stellantis.md)

| Case | Repair |
|---|---|
| Wrangler electrical water intrusion | Dry the affected module and reseal the leak path |
| Four-wheel-drive lamp and axle disconnect | Repair the disconnect actuator |
| Pacifica sliding-door cables | Replace the failed cable and inspect the track |
| 3.6 Pentastar tick and oil-filter housing seep | Repair the housing or the valvetrain the noise identifies |
| “Service Electrified Propulsion System” | Trace the high-voltage code before replacing a pack |
| Electric coolant-pump failure and battery over-temperature | Replace the pump and bleed the loop |
| No AC charge and port LED fault codes | Repair the inlet or onboard charger the LED pattern indicates |
| Harsh motor engagement | Check clutch and motor control before unit replacement |
| Pack capacity loss | Test the cells and follow the pack repair procedure |
| Charge-door and fuel-door confusion | Verify which interlock is actually failed |
| Charge fault after cabin water | Dry the roof-drain leak and the wet module |
| Transmission and EV-mode conflicts | Complete the shifter and transmission adaptations |
| Pack-shield scrape opening the interlock | Repair the shield and the damaged interlock loop |

## BYD

Source: [brands/china/byd.md](brands/china/byd.md)

| Case | Repair |
|---|---|
| DM-i engine starting often and vibrating | Check the series-hybrid start request and engine mounts before condemning the engine |
| Maintenance-mode engine noise while parked | Confirm the mode, then look for a real start fault |
| 12 V or DC-DC causing false hybrid alarms | Repair the low-voltage supply first |
| DM-p transmission harshness | Fluid and mechatronics diagnosis |
| Weak air conditioning with the engine off | Repair the electric compressor or heat pump |
| Isolation after rain or flood | Dry and repair the wet high-voltage path |
| DC fast-charge handshake failure | Repair the inlet and the communication line to the station |
| Blade pack thermal derate in heat | Restore pack cooling |
| Drive-unit noise | Repair the electric drive unit |
| Onboard-charger overheat on public AC | Repair charger cooling and the inlet |
| 12 V drain from cabin modules | Find the module that stays awake |
| Driver-aid faults after glass replacement | Calibrate the cameras |

## Geely / Zeekr

Source: [brands/china/geely-zeekr.md](brands/china/geely-zeekr.md)

| Case | Repair |
|---|---|
| Plug-in charge failure | Repair the onboard charger and inlet |
| Hybrid-transmission shudder | Mechatronics and fluid service |
| Turbo direct-injection misfire and carbon | Coils, plugs, and intake cleaning when carbon is confirmed |
| Infotainment draining the 12 V battery | Correct the keep-alive module |
| Radar faults after bumper paint | Correct thickness and recalibrate |
| Air suspension plus a high-voltage derate | Repair the suspension leak and the thermal fault as separate systems |
| 800 V charge issues | Confirm the station voltage class and repair the vehicle boost path if the station is compatible |
| Isolation after deep water | Dry and repair the insulation breach |
| Rear drive unit fault and torque steer | Repair the rear unit |
| Water in a powered door or frunk causing network faults | Dry the connector and reseal the panel |
| Incomplete update leaving modules mismatched | Finish programming before replacing hardware |

## NIO

Source: [brands/china/nio.md](brands/china/nio.md)

| Case | Repair |
|---|---|
| Cabin features draining the 12 V battery | Find the module that is not sleeping |
| Air suspension lean | Repair the spring, compressor, or height sensor |
| Sensor-stack faults after glass or bumper work | Recalibrate the cameras and lidar |
| Power-door soft-close faults | Repair the door module and latch |
| Tire-pressure faults after jacking | Correct the sensors and pressures |
| No Ready after a battery swap | Close the high-voltage interlock that was left open |
| Coolant loss after a swap | Pressure-test the cooling connections made during the swap |
| Isolation unrelated to a swap | Locate the insulation fault in the harness or pack |
| Reduction-gear whine | Repair the drive unit |
| DC charge abort | Repair the thermal or inlet fault stopping the session |
| Pack authentication mismatch after mobile service | Complete the proper pairing procedure |
| Regen and brake-blending complaints | Separate normal blending from a brake fault |

## XPeng

Source: [brands/china/xpeng.md](brands/china/xpeng.md)

| Case | Repair |
|---|---|
| Driver aids off after a windshield | Calibrate the cameras |
| Cabin USB and modules draining the 12 V battery | Correct the always-awake circuit |
| Liftgate and door-handle water faults | Dry and reseal |
| Air-suspension lean | Repair the spring or compressor |
| Rear parking-brake grind after winter | Service the rear brakes |
| 800 V vehicle failing on a lower-voltage DC station | Confirm compatibility, then repair the boost converter if the station should work |
| Humidity-related isolation | Dry and repair the wet joint |
| Thermal system capping DC charge rate | Repair pack cooling |
| Rear axle disabled on a dual-motor car | Repair the rear inverter or motor |
| Home AC charge cutting out | Test the EVSE and the onboard charger |
| Drive-unit bearing whine | Repair the drive unit |
| Front-trunk high-voltage damage after a collision | Repair the interlock and the damaged components |

## Li Auto

Source: [brands/china/li-auto.md](brands/china/li-auto.md)

| Case | Repair |
|---|---|
| Smart-cabin 12 V drain | Find the module that stays awake |
| Air-suspension lean and compressor timeout | Repair the leak or the compressor |
| Lidar and driver aids after front-end work | Recalibrate |
| Refrigerator and rear climate draining the low-voltage battery while parked | Correct that circuit’s sleep behavior |
| Soft-close door water intrusion | Reseal the door and dry the connector |

## Great Wall / Haval / Wey / Ora / Tank

Source: [brands/china/great-wall.md](brands/china/great-wall.md)  
Compiled with Hongqi: [china-great-wall-hongqi.md](china-great-wall-hongqi.md)

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

## Hongqi (FAW)

Source: [brands/china/hongqi.md](brands/china/hongqi.md)  
Compiled with Great Wall: [china-great-wall-hongqi.md](china-great-wall-hongqi.md)

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
| HQ9 EV mode unavailable or AC charge fault | Inlet latch, control-pilot, onboard charger, BMS permit, 12 V; full charge then EV drive |
| Hybrid coolant loss and power limit | Pressure-test hybrid and engine loops separately, repair the leaking one, vacuum-fill and bleed |
| Harsh engine start from EV mode | Engine mounts, start-control software, ignition and fuel on first firing cycles |
| HQ9 parked climate / rear HVAC draining 12 V | Climate timer and 12 V state, load-test, parasitic-draw, HVAC module if it will not sleep |
| H5 PHEV (2025+) charge permit refused | Same permit path as HQ9: inlet, OBC, BMS, 12 V; full charge and EV drive |
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

## SAIC / MG / IM

Source: [brands/china/saic-mg.md](brands/china/saic-mg.md)

| Case | Repair |
|---|---|
| Wet dual-clutch shudder | Clutch and mechatronics service |
| Turbo cold rattle and oil supply | Verify oil feed, then repair the turbo if pressure is lost |
| Infotainment draining the battery | Correct the keep-alive module |
| Driver aids after bumper repair | Recalibrate the radar |
| Sunroof drain wetting the head unit | Clear the drains and dry the unit |
| Morning no-Ready from a 12 V drain | Restore the 12 V battery and the module that woke the car |
| Charge lock stuck | Repair the latch |
| Isolation and reduced power | Locate the insulation fault |
| AC charge cutting out | Repair the onboard charger |
| Rear drive-unit noise | Repair that unit |
| ABS events from mismatched tires | Fit a matched set |
| Air suspension plus thermal derate | Repair each system on its own evidence |
| Lidar calibration after body work | Complete the calibration |
| 800 V charge-path faults | Repair the high-voltage charge hardware the codes name |
| Isolation after a hard heat cycle | Retest insulation and repair the joint that opened |

## Chery / Exeed

Source: [brands/china/chery.md](brands/china/chery.md)

| Case | Repair |
|---|---|
| Dual-clutch or CVT shudder | Fluid and unit repair for the transmission actually fitted |
| 1.5T or 1.6T misfire under load | Coils, plugs, then boost and fuel |
| Coolant loss at the thermostat housing | Replace the housing and bleed the system |
| Radar false alerts | Correct the bumper and recalibrate |
| Cluster flicker from a bad ground | Repair the ground |
| Isolation after water | Dry and repair the high-voltage path |
| DC charge handshake failure | Repair the inlet communication line |
| Onboard-charger thermal cut | Repair charger cooling |
| 12 V drain | Find the parasitic draw |

## Mercedes-Benz (26)

Source: [brands/europe/mercedes-benz.md](brands/europe/mercedes-benz.md)

| Case | Repair |
|---|---|
| 48 V start-stop / glide dead | 48 V teach-in; DC-DC or ISG; confirm 12 V charging |
| 48 V harsh restart | Both voltages; ISG adaptation; mounts |
| U-codes that clear after a jump | 12 V / DC-DC / grounds — not ISG first |
| PHEV no AC charge / EV locked | Inlet or OBC; BMS software; full charge then EV drive |
| PHEV engine always runs | Inhibit flags before engine parts |
| PHEV HV coolant loss | Pressure-test HV vs engine loop; vacuum-fill |
| PHEV electric A/C dead | Compressor HV supply; isolation retest |
| Charge-door / fuel-door interlock | Confirm which latch failed |
| GLE pack-shield scrape HVIL | Shield and interlock; isolation test |
| EQA/EQB isolation after rain | Section PTC, compressor, OBC, pack |
| EQA/EQB morning no-Ready | 12 V; sleep-draw; DC-DC |
| EQA AC charge cut-out | OBC cooling or OBC |
| EQ DC handshake fail | Second pile; pins; BMS; pack temp |
| EQA 4MATIC one motor dead | Silent-axle isolation and EDU |
| EQC disconnect mix-up | EQC XENTRY diagram only |
| EQE/EQS no propulsion | 12 V; pyro/HVIL; contactors |
| EQE/EQS slow DC thermal | Pumps, valves, shutters, software |
| EQS air ride + HV derate | Height cal and pack cooling as two jobs |
| EQE SUV EDU dead | That axle inverter/EDU |
| EQ winter heat weak | PTC or heat-pump valve |
| MBUX 12 V drain | Sleep-draw; software; then 12 V |
| Incomplete XENTRY flash | Finish SCN on stable 12 V |
| Assist after glass/bumper | Camera and radar calibration |
| Charge-port lock stuck | Manual release; lock motor; inlet |
| After collision pyro/HVIL | Specified safety parts; no bypass |
| Regen / rear rust | Blending module if coded; EPB/rear hardware |

## Volkswagen (26)

Source: [brands/europe/volkswagen.md](brands/europe/volkswagen.md)

| Case | Repair |
|---|---|
| eTSI start-stop missing | 48 V teach-in; BSG or DC-DC; hood switch |
| eTSI charging lamp after 12 V R&R | Energy-management adaptation; DC-DC 14 V |
| GTE no EV / no charge | Charge path; DQ400e fluid; full charge then EV |
| GTE shudder 20–40 km/h | OEM DQ400e fluid; clutch adaptations |
| GTE harsh engine join | Mounts; clutch adapts; first-cycle fuel/ignition |
| GTE electric A/C off in EV | Compressor HV; isolation retest |
| GTE hybrid coolant loss | Repair the leaking loop; vacuum-fill |
| ID. morning no-Ready | 12 V; awake OCU; DC-DC |
| ID. isolation after rain | Section heater, compressor, OBC, pack |
| ID. AC charge cuts out | OBC cooling or OBC |
| ID. DC handshake fail | Second station; pins; BMS; pack temp |
| ID. charge-port lock stuck | Manual release; lock motor; inlet |
| ID. rear EDU whine | Bearings/tires first; then EDU |
| ID. AWD front motor dead | Front connector/isolation; front EDU |
| ID. thermal derate / slow DC | Pumps, valves, exchangers, software |
| ID. winter PTC / heat pump | PTC or valve; isolation retest |
| ID. regen / brake feel | Limits vs blending module; rear rust |
| ID.7 rear-harness chafe | Repair chafe; isolation retest |
| ID.Buzz door/roof water | Drains; dry modules; conversion 12 V taps |
| Incomplete SVM | Finish online flash; no EDU mid-flash |
| Travel Assist after glass | VW glass; camera calibration |
| Radar after bumper respray | Thickness; bracket; calibration |
| EPB / rear rust ridges | EPB mode; rear hardware; calibration |
| KESSY not recognized | Load-test on wake; antennas; gateway |
| HVIL after panel work | Close every connector; ODIS interlock |
| After collision no Ready | Crash/pyro/HVIL; no bypass |

## Audi

Source: [brands/europe/audi.md](brands/europe/audi.md)  
Methods: [hev-bev-troubleshooting.md](hev-bev-troubleshooting.md)

| Case | Repair |
|---|---|
| 48 V MHEV start-stop / coast dead | 48 V teach-in, DC-DC or BSG the data names; jumping 12 V only will not recover a failed 48 V pack |
| TFSI e no EV mode / AC charge fail | Inlet or OBC, BMS software, hybrid-transmission fluid and adaptations, full charge then EV drive |
| e-tron / Q8 e-tron isolation after water | HV lockout; section heater, compressor, OBC, pack; clear frunk drains; retest dry |
| e-tron air suspension lean plus thermal derate | Leak-test and height cal; separately service pack/electronics cooling |
| Q4 e-tron morning no-Ready | Same MEB 12 V / sleep-draw path as ID.4; update Audi connect / OCU if it stays awake |
| e-tron GT 800 V DC fail or very slow charge | Confirm station voltage class; thermal path; inlet pins; software; boost hardware if a compatible station still fails |
| quattro / one drive unit disabled | Isolation and connector on the silent axle; repair that inverter or EDU |
| MMI / Audi connect 12 V drain | Sleep-draw; ODIS software; remove always-hot accessories; then replace 12 V |
| Incomplete SVM: missing drive or assist | Stable 12 V; complete Audi online flash before replacing an EDU |
| After collision: no Ready | ODIS crash/pyro and HVIL; isolation test — do not bypass safety devices |
| 48 V lamp after 12 V R&R | Energy-management adaptation |
| TFSI e shudder 20–40 | Hybrid-DCT/ATF as fitted; clutch adapts |
| TFSI e A/C dead engine-off | Electric compressor; isolation |
| TFSI e fuel-aging engine run | Confirm maintenance start vs real fault |
| e-tron frunk water HVIL | Clear drains; dry; HVIL pins |
| e-tron AC charge cuts out | OBC cooling or OBC |
| Q4 isolation after water | MEB sectional; Audi disconnect location |
| Q4 rear EDU whine | Bearings/tires; then EDU |
| Q4 50 front motor dead | Front isolation; front EDU |
| GT isolation after heat | Retest hot and cold; repair opening joint |
| Q6/A6 e-tron 400 V pile abort | Boost module; PPE disconnect |
| Camera/radar after glass | Audi glass; calibration |
| Matrix LED water / aim | Dry/replace lamp; coding; aim |
| EPB / rear drag | EPB mode; rear hardware |
| CCS lock stuck | Manual release; lock motor; inlet |
| Heat-pump / PTC winter | PTC or valve; isolation retest |

---

## Count

| Region | Brands | Cases |
|---|---|---|
| Japan | Toyota/Lexus, Camry detail, Honda/Acura, Nissan/Infiniti, Mazda, Subaru, Mitsubishi | 110 |
| United States | Tesla, Ford/Lincoln, General Motors, Rivian, Jeep/Stellantis | 66 |
| Europe | Mercedes-Benz, Volkswagen, Audi | 78 |
| China | BYD, Geely/Zeekr, NIO, XPeng, Li Auto, Great Wall, Hongqi, SAIC/MG, Chery | 150 |
| **Total** | | **404** |

Every brand file now holds **26 or more** full examples. This catalog is an index; open the brand file for diagnosis steps.
