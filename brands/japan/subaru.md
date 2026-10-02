# Subaru — Repair Guide (MY2020+)

**Region focus:** Japan  
**Scan tools:** SSM4 / Subaru Select Monitor  
**Architecture:** Boxer ICE, EyeSight ADAS, e-Boxer mild/hybrid markets, Solterra BEV (e-TNGA joint with Toyota)

---

## 1. 2020+ model map

| Model | Powertrains |
|---|---|
| Crosstrek / Forester / Outback | FB/CB engines, EyeSight |
| Ascent | ICE |
| WRX (VB) | FA24 |
| Solterra | BEV |
| Crosstrek Hybrid (markets) | Hybrid |

---

## 2. ICE / EyeSight examples

### Example A — Chronic 12 V drain

| Field | Detail |
|---|---|
| **Symptoms** | Dead battery 3–10 days; EyeSight unavailable after jump |
| **Causes** | Telematics (STARLINK); amplifier; aftermarket dashcam on B+; door sleep; DCM |
| **Diagnosis** | Sleep current after 10–45 min; pull fuses systematically; monitor with amp clamp |
| **Repair** | Update DCM; repair stuck module; relocate dashcam to accessory; replace AGM |

### Example B — EyeSight disabled after windshield

| Field | Detail |
|---|---|
| **Symptoms** | EyeSight OFF; adaptive cruise gone |
| **Repair** | Subaru-approved glass with correct mount; stereo camera adjustment with SSM targets |

### Example C — WRX VB: oil dilution / cold knock concerns

| Field | Detail |
|---|---|
| **Symptoms** | Fuel in oil short trips; rattle cold |
| **Repair** | Oil interval shortening; software; verify DI system; customer short-trip counseling |

### Example D — CVT flare / binding (TR580/TR690 families)

| Field | Detail |
|---|---|
| **Symptoms** | Flare on 2–3; judder; AT OIL TEMP |
| **Repair** | Fluid CVTF; cooler; valve body; CVT R&R if metal |

### Example E — Rear differential / viscous noise (AWD)

| Field | Detail |
|---|---|
| **Symptoms** | Chatter tight turns after tire mismatch |
| **Repair** | Equal tires; differential fluid; clutch packs if damaged |

### Example F — FA/FB oil leaks (cam carrier / pan)

| Field | Detail |
|---|---|
| **Symptoms** | Burning oil smell; seepage |
| **Repair** | Carrier reseal; updated gaskets; clean cat from oil ash |

---

## 3. Hybrid e-Boxer (markets) examples

### HEV Example 1 — Hybrid assist missing + ISG codes

| Item | Detail |
|---|---|
| **Symptoms** | Auto stop fails; assist weak; ISG DTCs |
| **Troubleshooting** | 12 V & ISG belt/drive; LIN/CAN to ISG; battery sensor |
| **Repair** | Belt/ISG; battery; software |

### HEV Example 2 — Unexpected vibration in EV assist

| Item | Detail |
|---|---|
| **Symptoms** | Shake at low speed when motor assists |
| **Repair** | Engine/pendulum mounts; wheel balance; hybrid software |

---

## 4. BEV — Solterra detailed examples

### BEV Example 1 — Isolation / DCFC abort (shared with bZ4X family)

| Item | Detail |
|---|---|
| **Symptoms** | DC charge stops; isolation warnings; AC OK |
| **Troubleshooting** | Inlet moisture; OEM isolation test; OBC vs pack sectionalization; thermal pumps during DC |
| **Repair procedure** | Dry/replace inlet → repair isolation source → vacuum-fill EV coolant → isolation retest → DC charge log |

### BEV Example 2 — AWD disabled / rear e-axle

| Item | Detail |
|---|---|
| **Symptoms** | FWD-only; rear motor DTCs |
| **Causes** | HVIL; e-axle oil; water intrusion; wheel-speed |
| **Repair** | Oil service; connector repair; e-axle replacement; SSM clear + road test AWD modes |

### BEV Example 3 — “EV system” after OTA / sleep

| Item | Detail |
|---|---|
| **Symptoms** | Warning after update; won’t Ready until LV charged |
| **Repair** | LV support during updates; DC-DC verify; reflash if incomplete |

### BEV Example 4 — Brake pedal feel / regen blending complaints

| Item | Detail |
|---|---|
| **Symptoms** | Soft pedal; grabby stops |
| **Repair** | Brake fluid level/air; software; caliper slides; sensor calibration |

---

## Additional field examples

### Example G — WRX VB FA24: oil consumption (not short-trip dilution)

| Field | Detail |
|---|---|
| **Vehicles** | MY2022+ WRX VB FA24 (dilution is Example C) |
| **Symptoms** | Oil use on highway cars; burning smell; blue haze; P0420 late |
| **Diagnosis** | 1) Consumption test per SI. 2) PCV. 3) Borescope for scoring. 4) Confirm oil grade and interval. |
| **Repair** | PCV; rings/engine only with evidence; shorten interval if SI directs. Do not treat highway consumption as the cold-dilution complaint. |

### Example H — Ascent: CVT overheat / cooler restriction

| Field | Detail |
|---|---|
| **Vehicles** | MY2020+ Ascent TR690-family CVT |
| **Symptoms** | AT OIL TEMP in hills or towing; flare; judder after heat |
| **Diagnosis** | 1) CVTF color/smell. 2) Cooler flow and debris (external cooler). 3) SSM ratio vs commanded. 4) Software campaigns. |
| **Repair** | Genuine CVTF and cooler service; software. Burnt fluid with metal: CVT R&R. Towing without the cooler path clear will repeat the failure. |

### Example I — Outback XT 2.4T: wastegate rattle / boost

| Field | Detail |
|---|---|
| **Vehicles** | MY2020+ Outback/Legacy XT FA24F |
| **Symptoms** | Cold rattle from turbo; underboost P0244-family; surge |
| **Diagnosis** | 1) Wastegate play vs SI. 2) Boost PID vs requested. 3) Charge-pipe leaks. 4) Oil feed to the turbo. |
| **Repair** | Wastegate/turbo per campaign; pipes/boots; verify boost on a road log. Do not ignore oil-feed restriction. |

### Example J — EyeSight stereo camera fog / mis-aim (glass already replaced)

| Field | Detail |
|---|---|
| **Vehicles** | MY2020+ Crosstrek / Forester / Outback / Ascent with EyeSight (windshield R&R is Example B) |
| **Symptoms** | EyeSight OFF in rain/dawn; ACC drop-out; camera temp/fog DTCs with OEM glass |
| **Diagnosis** | 1) SSM camera temperature and aim values. 2) Heater/defog at the stereo camera. 3) Moisture in the camera housing. 4) 12 V — EyeSight dies on a weak battery. |
| **Repair** | Dry/replace camera if flooded; complete SSM target aiming; verify defog. Recalibrate after any camera R&R, not only after glass. |

### Example K — EPB / rear rust ridges (EyeSight / regen cars)

| Field | Detail |
|---|---|
| **Vehicles** | MY2020+ Forester / Outback / Crosstrek |
| **Symptoms** | Rear groan leaving park; EPB lamp; dragged rotors; ABS events from seized slides |
| **Diagnosis** | 1) EPB service mode. 2) Pad/slide/rust ridge. 3) Wheel-speed PIDs. 4) EyeSight/VDC history from a dragging rear. |
| **Repair** | Service-mode clean/lube or hardware; new rear pads/rotors as specified; torque-to-yield bolts; road-test EPB and EyeSight. |

### HEV Example 3 — Forester e-Boxer: ISG not charging 12 V

| Field | Detail |
|---|---|
| **Vehicles** | MY2020+ Forester e-Boxer / hybrid markets (ISG codes are Example 1) |
| **Symptoms** | Battery lamp; auto-stop dead; 12 V falling with the engine running; assist missing |
| **Diagnosis** | 1) Load-test 12 V. 2) SSM ISG commanded vs actual current. 3) Belt/tensioner. 4) LIN/CAN to ISG and battery sensor. |
| **Repair** | Belt/ISG; Subaru-spec battery and sensor; software. This is not a conventional alternator—do not “test charge” with a parts-store unit. |

### HEV Example 4 — Crosstrek Hybrid: auto-stop fail after a battery job

| Field | Detail |
|---|---|
| **Vehicles** | MY2020+ Crosstrek Hybrid (markets) |
| **Symptoms** | Auto-stop and assist gone after 12 V replacement; hybrid DTCs that look like ISG failure |
| **Diagnosis** | 1) Battery spec and sensor connector. 2) SSM registration / energy-management status. 3) ISG current with the new battery. 4) Sleep draw if it repeats overnight. |
| **Repair** | Register the battery; SSM clear; confirm ISG charge current. A jump or unregistered AGM will not restore e-Boxer assist. |

### HEV Example 5 — e-Boxer: vibration when the ISG assists

| Field | Detail |
|---|---|
| **Vehicles** | MY2020+ Forester / Crosstrek e-Boxer |
| **Symptoms** | Shake at low speed when assist kicks in; worse with A/C; mounts look “OK” in park |
| **Diagnosis** | 1) Video + SSM assist current vs RPM. 2) Pendulum/engine mounts under load. 3) Wheel balance. 4) Hybrid software campaigns. |
| **Repair** | Mounts; software; ISG only if current/noise pinpoint the unit. Example 2 covers EV-assist shake—use this path when the ISG belt drive is the source. |

### BEV Example 5 — Solterra: morning no-Ready / 12 V (bZ4X method)

| Field | Detail |
|---|---|
| **Vehicles** | MY2023+ Solterra (shared e-TNGA with Toyota bZ4X / Lexus RZ) |
| **Symptoms** | Dead 12 V after 3–7 days; EV system until jump; Ready after LV support |
| **Diagnosis** | 1) Load-test 12 V. 2) Sleep draw (DCM/telematics, aftermarket tracker). 3) DC-DC current with HV awake. 4) Incomplete OTA/campaign sleep bugs. |
| **Repair** | Parasitic repair; gateway software; Subaru-spec LV; verify DC-DC. Use the bZ4X 12 V / DC-DC method; SSM and Toyota-family HV process—do not mix ID. or Tesla steps. |

### BEV Example 6 — Solterra: DC charge abort / thermal (bZ4X)

| Field | Detail |
|---|---|
| **Vehicles** | MY2023+ Solterra |
| **Symptoms** | DC starts then stops; AC OK; isolation or thermal during DC |
| **Diagnosis** | 1) Inlet moisture and latch (bZ4X-family inlet). 2) OEM isolation test. 3) Thermal pumps during DC. 4) Charge ECU vs battery ECU DTCs. |
| **Repair** | Dry/replace inlet; repair isolation source; vacuum-fill EV coolant; isolation retest; DC charge log. Follow current Solterra/bZ4X charging campaigns before a pack guess. |

### BEV Example 7 — Solterra: heat-pump / PTC winter range collapse

| Field | Detail |
|---|---|
| **Vehicles** | MY2023+ Solterra |
| **Symptoms** | Cabin cold; pack stays cold; DC slow in winter; PTC or heat-pump DTCs |
| **Diagnosis** | 1) Heat-pump valve positions and pressures. 2) PTC current when commanded. 3) Battery-loop pump. 4) Isolation if the PTC leaked. |
| **Repair** | EV-spec recovery/recharge; valve block; PTC under HV lockout; isolation retest. Same thermal path as bZ4X—use Solterra SSM coding. |

### BEV Example 8 — Solterra: charge inlet latch / moisture

| Field | Detail |
|---|---|
| **Vehicles** | MY2023+ Solterra |
| **Symptoms** | Cable locked; DC refuse; isolation after rain at the inlet |
| **Diagnosis** | 1) Manual release. 2) Seals and drain. 3) Latch motor. 4) Isolation kΩ before opening the pack. |
| **Repair** | Dry inlet; latch/seals; then isolation if kΩ dropped. Do not replace an e-axle for a wet CCS inlet. |

### BEV Example 9 — Solterra: incomplete OTA / campaign, no Ready

| Field | Detail |
|---|---|
| **Vehicles** | MY2023+ Solterra |
| **Symptoms** | EV system after an update; won’t Ready until LV charged; features missing |
| **Diagnosis** | 1) Support 12 V during programming. 2) SSM incomplete-flash flags. 3) DC-DC. 4) Campaign list vs VIN (shared bZ4X campaigns). |
| **Repair** | Stabilize LV; finish Subaru/Toyota-family programming; do not replace an e-axle mid-flash. Confirm Ready + charge after the complete campaign. |

### BEV Example 10 — Solterra: isolation PTC / compressor / OBC (bZ4X sectional)

| Field | Detail |
|---|---|
| **Vehicles** | MY2023+ Solterra |
| **Symptoms** | Reduced power after rain or a wash; isolation DTC; AWD may drop |
| **Diagnosis** | 1) Record kΩ. 2) Section heater → compressor → OBC → pack → each e-axle (bZ4X method). 3) Underbody HV connectors. 4) 12 V first. |
| **Repair** | HV lockout; replace the leaking HV component; dry connectors; isolation retest dry. Rear e-axle (Example 2) is a different path—sectionalize before condemning AWD. |

---

## 5. Quick triage

| Symptom | First check | Next |
|---|---|---|
| Dead battery | Sleep draw | DCM/amplifier |
| EyeSight OFF | Glass/camera | SSM calibration |
| Solterra charge fail | Isolation + inlet | OBC/pack |
| CVT temp | Fluid | Cooler/CVT |
| AWD chatter | Tire sizes | Diff fluid |

---

## 6. Return-to-service

- [ ] EyeSight calibrated if glass/ADAS disturbed  
- [ ] Solterra isolation + charge OK  
- [ ] CVTF correct specification  
- [ ] Sleep current within spec after battery jobs  

---

*Confirm with VIN-specific Subaru SI and HV manuals for Solterra.*
