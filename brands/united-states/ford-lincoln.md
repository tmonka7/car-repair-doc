# Ford / Lincoln — Repair Guide (MY2020+)

**Region focus:** United States  
**Scan tools:** FDRS / IDS remnant processes  
**Electrified:** Escape/Maverick Hybrid, Escape PHEV, Mustang Mach-E, F-150 Lightning, Lightning-based passenger utility  

---

## 1. 2020+ model map

| Model | Powertrains |
|---|---|
| Escape / Corsair | ICE, HEV, PHEV |
| Maverick | HEV popular |
| Explorer / Aviator | ICE, HEV |
| Mustang Mach-E | BEV |
| F-150 Lightning | BEV |
| Bronco Sport / Escape ICE | EcoBoost |

---

## 2. ICE examples

### Example A — EcoBoost misfire / coil & plug

| Field | Detail |
|---|---|
| **Symptoms** | P030x; rough idle; spark knock |
| **Repair** | Coils/plugs; intake carbon on DI; vacuum leaks; HPFP |

### Example B — 1.5/2.0/3-cyl campaigns (verify VIN): plug thread / coolantd

| Field | Detail |
|---|---|
| **Symptoms** | Sudden misfire; coolant loss; overheat |
| **Repair** | Follow Ford GSSM/TSB kits only—do not improvise thread repairs |

### Example C — 10R80 harsh shifts

| Field | Detail |
|---|---|
| **Symptoms** | Bang into 1–2 or downshift |
| **Repair** | Fluid level (hot critical); solenoid strategy update; valve body; adaptive clear |

### Example D — Sync / module keep-alive drain

| Field | Detail |
|---|---|
| **Symptoms** | Dead 12 V; APIM reboot loops |
| **Repair** | Parasitic; APIM update/replace; BCM |

### Example E — Lincoln continuous damping / air issues

| Field | Detail |
|---|---|
| **Symptoms** | Ride height; compressor endless |
| **Repair** | Leak test; dryer; calibration with FDRS |

---

## 3. Hybrid — Escape / Maverick detailed examples

### HEV Example 1 — “Stop Safely Now” red banner

| Item | Detail |
|---|---|
| **Symptoms** | Red stop message; wrench; vehicle may shut down |
| **Common DTCs** | P0Axx BECM; U-codes PCM↔BECM; inverter temps |

**Troubleshooting**

1. Do not ignore—safe stop.
2. FDRS: BECM cell voltages, isolation, contactor status.
3. Test 12 V and DCI (DC/DC).
4. Hybrid powertrain coolant level (transmission/inverter related).
5. Ground integrity at HV battery.

**Repair procedure**

1. Service disconnect lockout.
2. Replace BECM/pack modules/DCDC per pinpoint.
3. Program modules with FDRS (PMI).
4. Transmission fluid level check (hybrid-specific procedure).
5. Road test—confirm no Stop Safely Now under load.

---

### HEV Example 2 — Transmission shudder / HEV unique fluid issues

| Item | Detail |
|---|---|
| **Symptoms** | Shudder merging; grind feel |
| **Repair** | Correct Mercon ULV or specified hybrid fluid; cooler; internal inspection if metal |

---

### HEV Example 3 — Auto stop-start / ICE restart harsh

| Item | Detail |
|---|---|
| **Symptoms** | Violent restart; dead LV |
| **Repair** | AGM + BMS; software; mounts |

---

### HEV Example 4 — Escape PHEV won’t plug-in charge

| Item | Detail |
|---|---|
| **Symptoms** | Charge status lights fail; EV miles 0 |
| **Troubleshooting** | Proximity/pilot; charge port; OBC; BECM permit; EVSE |
| **Repair** | Port/OBC; software; verify Level 2 to full |

---

### HEV Example 5 — Coolant loss between engine and hybrid loops confused

| Item | Detail |
|---|---|
| **Symptoms** | Overheat or hybrid derate with “mystery” loss |
| **Repair** | Map both loops; pressure test separately; never mix fill necks |

---

## 4. BEV — Mustang Mach-E detailed examples

### BEV Example 1 — Charge fault / isolation

| Item | Detail |
|---|---|
| **Symptoms** | AC or DC fail; “Vehicle Operating Conditions” messages; DTC BCMB/OBC |
| **Troubleshooting** | FDRS charging sessions; CCS pin corrosion; isolation sectional; battery coolant pump |
| **Repair procedure** | HV lockout → charge port/OBC/BECM/pack → Motorcraft HV coolant vacuum fill → isolation retest → AC then DC verification |

---

### BEV Example 2 — GO Time / high-voltage battery temperature derate

| Item | Detail |
|---|---|
| **Symptoms** | GO Time unavailable; power limited after repeated WOT; hot soak |
| **Diagnosis** | Pump duty; grille shutters; glycol level; cell temps |
| **Repair** | Thermal pumps/valves; software; radiator stack cleaning |

---

### BEV Example 3 — Front/rear electric drive unit noise

| Item | Detail |
|---|---|
| **Symptoms** | Whine / click on regen |
| **Repair** | Differentiate hub bearing; EDU replacement; fluid if serviceable |

---

### BEV Example 4 — 12 V / zone BCM drains

| Item | Detail |
|---|---|
| **Symptoms** | Morning no Ready; phone-as-key quirks |
| **Repair** | LV battery; DC-DC; module software; aftermarket tracker removal |

---

### BEV Example 5 — Door module / flush door handle faults

| Item | Detail |
|---|---|
| **Symptoms** | Handle won’t present; lock loops |
| **Repair** | Handle assembly; door control module; water seals |

---

## 5. F-150 Lightning (passenger/lifestyle use) notes

| Issue | Approach |
|---|---|
| Pro Power Onboard faults | Inverter DTCs; isolation; software |
| Bed traction battery thermal | Same Ultium-like care: coolant & isolation |
| Target BlueCruise cameras | Calibration after glass/mirror |

---

## Additional MY2020+ field examples

### Example F — EcoBoost cold misfire / DI carbon / HPFP

| Field | Detail |
|---|---|
| **Vehicles** | Escape, Bronco Sport, Explorer, Aviator 1.5/2.0/2.3 EcoBoost (MY2020+) |
| **Symptoms** | P030x; rough idle when cold; spark knock on pull-away; long-term fuel trims split |
| **Diagnosis** | 1) Coils and plugs first (heat range and gap per Ford). 2) Smoke intake and PCV. 3) DI carbon on intake valves if idle quality stays poor. 4) HPFP pressure actual vs desired. 5) VIN campaigns for plug threads / coolant intrusion before any improvised thread repair. |
| **Repair** | Coils/plugs; intake clean if carboned; HPFP or vacuum leaks as data shows; GSSM/TSB kits only for thread or coolant-intrusion campaigns. |

### Example G — 10R80 bang shift / converter shudder

| Field | Detail |
|---|---|
| **Vehicles** | Explorer, F-150-based passenger, Mustang, Expedition/Navigator with 10R80 |
| **Symptoms** | Bang 1–2 or downshift; converter shudder 40–60 mph; delayed engagement after overnight |
| **Diagnosis** | 1) Hot fluid level is critical (cold reading lies). 2) Correct Mercon ULV only. 3) FDRS solenoid strategy / adaptive dump. 4) Converter clutch vs valve-body codes. 5) Cooler flow if fluid smells burnt. |
| **Repair** | Level and fluid service; solenoid strategy update; valve body or converter as pinpointed; adaptive drive cycle. Do not “top off” with the wrong ATF. |

### HEV Example 6 — Escape / Maverick “Stop Safely Now” after 12 V death

| Field | Detail |
|---|---|
| **Vehicles** | Escape Hybrid, Maverick Hybrid |
| **Symptoms** | Red Stop Safely Now after a jump; wrench lamp; ICE may not restart; BECM U-codes |
| **Diagnosis** | 1) Safe stop—do not keep driving the banner. 2) Load-test the 12 V; many events start as LV collapse. 3) FDRS: BECM cell voltages, isolation, contactors. 4) DCI (DC/DC) output with HV awake. 5) Hybrid/inverter coolant level and grounds at the HV battery. |
| **Repair** | Restore 12 V and DCI; service disconnect lockout; BECM/pack/DCDC per pinpoint; PMI with FDRS; loaded drive with no Stop Safely Now. |

### HEV Example 7 — Maverick HEV restart harsh / transaxle shudder

| Field | Detail |
|---|---|
| **Vehicles** | Maverick Hybrid; similar Escape HEV transaxle behavior |
| **Symptoms** | Violent ICE restart; grind/shudder merging; dead LV after auto-stop |
| **Diagnosis** | 1) AGM health and BMS registration. 2) Hybrid-specific fluid (not a generic ATF dump). 3) Mounts vs transaxle internal. 4) Software for restart strategy. 5) Cooler if metal in fluid. |
| **Repair** | AGM + BMS; correct hybrid fluid and level procedure; mounts; software; internal inspection only if metal is present. |

### HEV Example 8 — Escape PHEV will not complete Level 2 charge

| Field | Detail |
|---|---|
| **Vehicles** | Escape PHEV / Corsair Grand Touring |
| **Symptoms** | Charge status lights fail; EV miles stay 0; schedule ignored; EVSE GFCI trips |
| **Diagnosis** | 1) Known-good EVSE and outlet. 2) Proximity/pilot at the charge port. 3) OBC temperature and isolation. 4) BECM charge permit. 5) Charge-door latch and customer schedule/app settings. |
| **Repair** | Port/OBC/software as FDRS names; PMI; verify Level 2 to full; then an EV-only drive. Engine loop ≠ hybrid electronics loop. |

### BEV Example 6 — Mach-E isolation fault / charge refused after rain

| Field | Detail |
|---|---|
| **Vehicles** | Mustang Mach-E |
| **Symptoms** | AC or DC fail; “Vehicle Operating Conditions”; isolation DTCs after a flood-row or a wash |
| **Diagnosis** | 1) FDRS charging-session and isolation kΩ. 2) CCS pin corrosion and charge-port door. 3) Sectional isolation: OBC, heater, compressor, pack. 4) Battery coolant pump duty and glycol level. 5) Frunk drains / orange connectors. |
| **Repair** | HV lockout → dry/replace the leak path (port/OBC/BECM/pack) → Motorcraft HV coolant vacuum fill → isolation retest → AC then DC verification. |

### BEV Example 7 — Mach-E GO Time unavailable / thermal derate

| Field | Detail |
|---|---|
| **Vehicles** | Mach-E GT and extended-range after repeated WOT or a hot soak |
| **Symptoms** | GO Time greyed out; power limited; battery or inverter temps high with little airflow |
| **Diagnosis** | 1) Cell and inverter temps vs ambient. 2) Thermal pump duty and valve positions. 3) Grille shutters stuck closed. 4) Glycol level and radiator stack debris. 5) Software thermal maps after a recent update. |
| **Repair** | Pumps/valves/shutters; stack cleaning; coolant service; software; confirm GO Time after a heat-soak drive. |

### BEV Example 8 — F-150 Lightning Pro Power isolation trip

| Field | Detail |
|---|---|
| **Vehicles** | F-150 Lightning used as a passenger/lifestyle truck |
| **Symptoms** | Pro Power Onboard trips; isolation when the bed outlets are loaded; charge may also abort |
| **Diagnosis** | 1) Inverter DTCs vs pack isolation with outlets off. 2) Load type (motor loads vs resistive). 3) Isolation sectional with V2L enabled. 4) Software campaigns. 5) Coolant/thermal on the traction battery the same as any other HV job. |
| **Repair** | Outlet inverter module / wiring; isolation retest with Pro Power on and off; software; do not keep using the outlets into an isolation fault. |

### BEV Example 9 — Lightning DC charge abort / frunk water at HV parts

| Field | Detail |
|---|---|
| **Vehicles** | F-150 Lightning |
| **Symptoms** | DC starts then drops to 0; AC OK or also fails; frunk standing water |
| **Diagnosis** | 1) Frunk drain paths and water at HV junction / charge hardware. 2) FDRS DC session (cell ΔV vs isolation vs inlet temp). 3) Coolant flow through the pack. 4) Charge-port pins. 5) BlueCruise cameras are a separate path after fascia work. |
| **Repair** | Dry and repair water path; charge port/OBC/BECM/pack as named; HV coolant vacuum fill; AC then DC kW record; camera cal if the bumper was off. |

### BEV Example 10 — Sync 4 / APIM keep-alive drain (Mach-E / Lightning)

| Field | Detail |
|---|---|
| **Vehicles** | Mach-E, Lightning, and ICE Ford/Lincoln with Sync 4 |
| **Symptoms** | Morning no Ready / no crank equivalent; APIM reboot loop; phone-as-key flakes; 12 V sulfated |
| **Diagnosis** | 1) Resting 12 V and Midtronics. 2) Sleep current after published timeout. 3) APIM/BCM still awake; aftermarket tracker/dashcam. 4) DC-DC output when HV/ICE running. 5) FDRS module software levels. |
| **Repair** | Parasitic repair (APIM update/replace, BCM, remove tracker); correct 12 V; confirm overnight hold and phone-as-key. |

### BEV Example 11 — BlueCruise unavailable after windshield or mirror

| Field | Detail |
|---|---|
| **Vehicles** | Mach-E, Lightning, Explorer/Aviator with BlueCruise |
| **Symptoms** | BlueCruise greyed out; camera blocked; lane-center aborted after glass |
| **Diagnosis** | 1) Correct Ford windshield (bracket and heater). 2) FDRS camera DTCs vs dirty lens. 3) Dynamic calibration drive incomplete. 4) Mirror/camera aiming after collision. 5) 12 V during cal—starved LV aborts the drive. |
| **Repair** | OEM glass; camera module as needed; FDRS calibration; complete the drive; verify BlueCruise on a marked highway. |

---

## 6. Quick triage

| Symptom | First check | Next |
|---|---|---|
| Stop Safely Now | BECM + 12 V | Pack/DCDC |
| Mach-E no charge | Port pins + isolation | OBC/BECM |
| Harsh 10R | Fluid level hot | Strategy/valve body |
| GO Time lost | Thermal pumps | Coolant/shutters |
| EcoBoost misfire | Coils/plugs | Campaigns |

---

## 7. Return-to-service

- [ ] FDRS PMI complete for replaced modules  
- [ ] HV coolant correct color/spec  
- [ ] Charge profile verified (HEV-PHEV-BEV)  
- [ ] No Stop Safely Now after loaded drive  
- [ ] PATS/keys functional  

---

*Use Ford Workshop Manual + GSSM for VIN-specific steps.*
