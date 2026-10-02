# General Motors (Chevrolet / Cadillac / GMC) — Repair Guide (MY2020+)

**Region focus:** United States  
**Scan tools:** GDS2 / SPS / MDI  
**BEV:** Bolt EV/EUV; Ultium (Lyriq, Blazer EV, Equinox EV, Silverado EV, Celestiq-related)  
**Safety:** Always perform High Voltage Disable Procedure before HV work

---

## 1. 2020+ model map

| Family | Examples |
|---|---|
| Bolt | Bolt EV, Bolt EUV |
| Ultium passenger | Lyriq, Blazer EV, Equinox EV, Optiq |
| ICE passenger | Malibu, Trax, Trailblazer, Traverse, XT4/5/6 |
| Performance | CT4-V, CT5-V |

---

## 2. ICE examples

### Example A — AFM/DOD lifter tick & misfire (truck/SUV engines in passenger use)

| Field | Detail |
|---|---|
| **Symptoms** | Cold tick; P0300; oil consumption |
| **Repair** | Lifter/cam kits; oil spec; AFM shields where applicable |

### Example B — 8-speed / 9-speed harsh shifts

| Field | Detail |
|---|---|
| **Symptoms** | Bang shifts; TCC shudder |
| **Repair** | Fluid (correct Dexron); adaptive reset; valve body; TCC software |

### Example C — Start-stop / AGM registration

| Field | Detail |
|---|---|
| **Symptoms** | Auto stop unavailable; battery lamp |
| **Repair** | Midtronics test; battery sensor; SPS programming battery type |

### Example D — Super Cruise / Ultra Cruise camera & lidar path issues

| Field | Detail |
|---|---|
| **Symptoms** | System unavailable; camera blocked |
| **Repair** | Windshield; camera module; dynamic calibration drives |

### Example E — HVAC blend door / actuator ticks

| Field | Detail |
|---|---|
| **Symptoms** | Click behind dash; wrong temp |
| **Repair** | Actuator replace; mode cam alignment |

---

## 3. BEV — Bolt EV/EUV detailed examples

### BEV Example 1 — Propulsion power reduced + isolation

| Item | Detail |
|---|---|
| **Symptoms** | Turtle; “Propulsion Power Reduced”; cannot charge |
| **Context** | Prior battery recall/campaign history critical—verify serial completion |

**Troubleshooting**

1. GDS2 HV battery data; isolation kΩ.
2. Check campaign/SPS history for pack replacement.
3. Sectionalize: OBC, APM (DC-DC), cabin heater, pack.
4. Inspect for coolant intrusion history.

**Repair procedure**

1. High Voltage Disable; verify 0 V.
2. Replace pack or modules per bulletin.
3. SPS program BECM/HPCM.
4. High Voltage Enable sequence.
5. Charge to full; verify cell balance and road test.

---

### BEV Example 2 — Charge won’t start (AC)

| Item | Detail |
|---|---|
| **Symptoms** | Charge cord LED fault; vehicle ignores EVSE |
| **Causes** | Charge port; pilot; OBC; door switch; theft deterrent quirks |
| **Repair** | Port assembly; OBC; software; verify with known-good EVSE |

---

### BEV Example 3 — APM / 12 V system faults

| Item | Detail |
|---|---|
| **Symptoms** | LV warning; repeated LV battery failures |
| **Repair** | APM (accessory power module) diagnosis; LV battery; ground splices |

---

### BEV Example 4 — Hot soak reduced power

| Item | Detail |
|---|---|
| **Symptoms** | Power limit after highway in heat |
| **Repair** | Cooling fans; radiator; coolant pump; software thermal maps |

---

## 4. BEV — Ultium platform detailed examples

### BEV Example 1 — “Service High Voltage Charging System”

| Item | Detail |
|---|---|
| **Vehicles** | Lyriq, Blazer EV, Equinox EV |
| **Symptoms** | DC fast charge aborts; AC intermittent |

**Troubleshooting**

1. GDS2 energy storage & charging DTCs.
2. Module voltage groups (Ultium modular).
3. Coolant flow through battery cold plates.
4. Charge port latch/door.
5. OBC isolation contribution.

**Repair procedure**

1. HV Disable.
2. Replace OBC, charge port, or battery modules per SI.
3. Ultium coolant bleed with GE-tools equivalent / OEM special tools.
4. SPS all energy modules.
5. AC then DC charge validation (record kW).

---

### BEV Example 2 — V2L / power seat / accessory inverter faults (select)

| Item | Detail |
|---|---|
| **Symptoms** | Vehicle-to-load trips; isolation when outlet used |
| **Repair** | Outlet inverter module; wiring; isolation retest |

---

### BEV Example 3 — Drive unit whine / gear noise

| Item | Detail |
|---|---|
| **Symptoms** | Speed-correlated whine |
| **Repair** | EDU replacement; fluid if applicable; rule out tires (EV noise path) |

---

### BEV Example 4 — One-pedal / regen blending brake DTCs

| Item | Detail |
|---|---|
| **Symptoms** | Hard fault disables one-pedal; ABS lamp |
| **Repair** | Wheel-speed; brake pressure sensors; EBCM software; caliper hardware |

---

### BEV Example 5 — After OTA/incomplete flash: no propulsion

| Item | Detail |
|---|---|
| **Symptoms** | Modules mismatch; U-codes flood |
| **Repair** | Stable LV support; SPS reflash sequence; do not road-test mid-flash |

---

## 5. Cadillac Lyriq-specific extras

| Issue | Notes |
|---|---|
| Air suspension (select) | Height calibration after links |
| AKG audio drain | Sleep current if LV complaints |
| Hands-free camera cal | Required after bumper work |

---

## Additional MY2020+ field examples

### Example F — AFM/DOD lifter tick that becomes a misfire

| Field | Detail |
|---|---|
| **Vehicles** | Tahoe/Suburban/Yukon and passenger-use 5.3/6.2 trucks/SUVs with AFM/DOD (MY2020+) |
| **Symptoms** | Cold tick; P0300; oil consumption; tick that quiets then returns as a dead cylinder |
| **Diagnosis** | 1) Oil spec and level (wrong viscosity accelerates AFM lifter wear). 2) GDS2 misfire and AFM state. 3) Lifter collapse vs cam lobe wipe. 4) Campaign/TSB kits and AFM shields for the VIN. 5) Do not chase coils first if the tick is mechanical. |
| **Repair** | Lifter/cam kit per SI; oil spec; AFM disable/shield where GM allows; verify idle after heat-soak. |

### Example G — Super Cruise / Ultra Cruise down after glass or fascia

| Field | Detail |
|---|---|
| **Vehicles** | CT4/CT5, Escalade, Lyriq, and other Super Cruise / Ultra Cruise cars |
| **Symptoms** | Super Cruise unavailable; camera blocked; lidar/camera path faults after windshield or bumper |
| **Diagnosis** | 1) Correct GM windshield (bracket, heater, coating). 2) GDS2 camera/lidar DTCs vs dirty lens. 3) Dynamic calibration drive. 4) Fascia radar/lidar aim after respray or collision. 5) 12 V support during calibration. |
| **Repair** | OEM glass/camera/lidar as SI; calibration drives; bumper aim; do not tint over the camera envelope. |

### BEV Example 5 — Bolt EV/EUV isolation after heater or pack coolant leak

| Field | Detail |
|---|---|
| **Vehicles** | Bolt EV, Bolt EUV |
| **Symptoms** | Propulsion Power Reduced; turtle; cannot charge; isolation after heat or a coolant smell |
| **Diagnosis** | 1) Campaign/SPS pack-replacement history first. 2) GDS2 isolation kΩ. 3) Section OBC, APM, cabin heater, pack. 4) Coolant intrusion history at the pack. 5) High Voltage Disable before any orange connector. |
| **Repair** | HV Disable to 0 V; pack/heater/OBC as bulletin; SPS BECM/HPCM; HV Enable; charge to full; cell balance and road test. |

### BEV Example 6 — Bolt APM / repeated 12 V death

| Field | Detail |
|---|---|
| **Vehicles** | Bolt EV/EUV |
| **Symptoms** | LV warning; AGM lasts weeks; jump restores Ready; APM DTCs |
| **Diagnosis** | 1) Resting 12 V and load test. 2) APM (accessory power module) output with HV awake. 3) Ground splices and sleep current. 4) Aftermarket always-hot USB. 5) Do not keep replacing the 12 V alone. |
| **Repair** | APM diagnosis/replace; grounds; correct LV battery; SPS as required; overnight parasitic verify. |

### BEV Example 7 — Bolt DC fast charge abort, AC still works

| Field | Detail |
|---|---|
| **Vehicles** | Bolt EV/EUV on CCS |
| **Symptoms** | DC session starts then dies; AC Level 2 completes; inlet or isolation DTCs |
| **Diagnosis** | 1) Known-good CCS stall vs vehicle. 2) Charge-port pins and latch. 3) Cell ΔV vs isolation vs inlet temp. 4) OBC is not the DC path—do not replace OBC for a DC-only abort. 5) Pack thermal / coolant pump. |
| **Repair** | Port/pins; thermal path; pack/BECM if ΔV or isolation; verify DC kW then a full AC charge. |

### BEV Example 6 — Ultium “Service High Voltage Charging System” on Lyriq

| Field | Detail |
|---|---|
| **Vehicles** | Cadillac Lyriq (also Blazer EV / Equinox EV same message) |
| **Symptoms** | DC fast charge aborts; AC intermittent; charging-system message after an OTA |
| **Diagnosis** | 1) GDS2 energy-storage and charging DTCs. 2) Ultium module voltage groups. 3) Coolant flow through battery cold plates. 4) Charge-port latch/door. 5) Incomplete OTA / SPS mismatch before parts. |
| **Repair** | HV Disable; OBC, port, or modules per SI; Ultium coolant bleed with OEM tools; SPS energy modules; AC then DC kW record. |

### BEV Example 7 — Lyriq air suspension lean plus charge derate

| Field | Detail |
|---|---|
| **Vehicles** | Lyriq with air suspension |
| **Symptoms** | One corner low overnight; DC charge capped the same week; compressor timeout |
| **Diagnosis** | 1) Leak-down and compressor current. 2) Height sensors. 3) Separately pack-loop pumps and cell temps—do not replace a pack for a lean corner. 4) AKG/audio sleep current if LV is also dying. 5) Hands-free camera cal if the bumper was disturbed. |
| **Repair** | Springs/lines/dryer; height calibration; then vacuum-fill the HV loop if thermal was involved; isolation retest. |

### BEV Example 8 — Ultium incomplete OTA / SPS: no propulsion

| Field | Detail |
|---|---|
| **Vehicles** | Lyriq, Blazer EV, Equinox EV, Optiq |
| **Symptoms** | Modules mismatch; U-codes flood; no propulsion after a parked update or a failed SPS |
| **Diagnosis** | 1) Stable LV support—never flash on a dying 12 V. 2) SPS history vs which modules finished. 3) Do not road-test mid-flash. 4) Energy vs drive-unit vs gateway sequence in SI. 5) Distinguish incomplete config from a real isolation fault. |
| **Repair** | Complete the GM flash sequence on a booster; SPS all required energy/drive modules; isolation retest; AC/DC and a loaded drive. |

### BEV Example 9 — Super Cruise on Ultium unavailable after OTA or glass

| Field | Detail |
|---|---|
| **Vehicles** | Lyriq and other Ultium Super Cruise cars |
| **Symptoms** | Super Cruise greyed out after an OTA or windshield; camera blocked with a clean lens |
| **Diagnosis** | 1) Camera/lidar DTCs vs software level. 2) Incomplete OTA that dropped ADAS config. 3) Glass spec. 4) Calibration drive. 5) 12 V during the drive. |
| **Repair** | Finish software; OEM glass; camera module; dynamic cal; verify Super Cruise on a mapped road. |

### BEV Example 10 — Equinox EV / Blazer EV isolation after standing water

| Field | Detail |
|---|---|
| **Vehicles** | Equinox EV, Blazer EV |
| **Symptoms** | Reduced propulsion; charge refused after a flooded lot or underbody spray |
| **Diagnosis** | 1) Isolation kΩ cold. 2) Section heater, compressor, OBC, pack. 3) Underbody orange connectors and pack seams. 4) Coolant vs water (glycol smell vs rain). 5) HV Disable before opening anything orange. |
| **Repair** | Dry/replace contaminated connectors; repair the leak path; Ultium coolant bleed if the loop was opened; isolation retest; AC then DC. |

### BEV Example 11 — Ultium heat pump / weak winter cabin heat

| Field | Detail |
|---|---|
| **Vehicles** | Lyriq, Blazer EV, Equinox EV with heat pump |
| **Symptoms** | Weak heat below freezing; noisy refrigerant; winter range collapse; PTC-only feel |
| **Diagnosis** | 1) Heat-pump vs PTC command in GDS2. 2) Refrigerant with EV-trained recovery. 3) HV enable to the electric compressor. 4) Isolation if the compressor leaked to the bus. 5) Software thermal maps. |
| **Repair** | HV lockout; compressor/heat-pump/valves as named; isolation retest; cabin-heat test in EV with the engine-off equivalent (no ICE). |

### BEV Example 12 — Ultium cabin / AKG 12 V drain, morning no-Ready

| Field | Detail |
|---|---|
| **Vehicles** | Lyriq (AKG audio), other Ultium with always-on cabin modules |
| **Symptoms** | Morning no Ready; 12 V sulfated; audio or telematics still awake; jump restores HV |
| **Diagnosis** | 1) Resting 12 V. 2) Sleep current after published timeout. 3) Pull fuses for audio, telematics, aftermarket USB. 4) APM/DC-DC output when HV awake. 5) Incomplete OTA leaving a module awake. |
| **Repair** | Software or replace the module that will not sleep; then 12 V if sulfated; overnight hold; confirm DC-DC in Ready. |

---

## 6. Quick triage

| Symptom | First check | Next |
|---|---|---|
| Bolt reduced propulsion | Campaign + isolation | Pack/OBC |
| Ultium charge fail | GDS2 + coolant flow | OBC/modules |
| Repeat LV death | APM output | Grounds |
| Harsh auto trans | Fluid + adapts | Valve body |
| Super Cruise down | Camera/glass | Calibration |

---

## 7. Return-to-service

- [ ] HV Disable/Enable documented  
- [ ] SPS history clean  
- [ ] Isolation within SI  
- [ ] AC + DC charge OK  
- [ ] Brake/ADAS calibrations done  

---

*Follow SI and bulletins exactly—Ultium and Bolt battery policies are VIN-critical.*
