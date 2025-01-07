# Dark Farmers
![Image of the concept](/presentation/Wall_Paper.png)

## Team 
Ahmad Shakleya, Berkay Yildirim, Rehmat Khan, Robbe Elsermans

## Mission 
Bring an experimental farm module on the dark side of Mun 🌑️ and provide constant communication 🛰️ with Kerbin 🌍️.

## System requirements
> written down in EARS Syntax

- Farm System (FS)
    - The FS shall use 0.29 EC/s​.
    - The FS shall weight 4000 kg​.
    - The FS shall always run.
    - The FS shall have no kerbins onboard.
    - The FS shall be self driven.
    - If the FS fails then the FS shall be abandoned.
    
- Transportation Vessel System (TVS)
    - The TVS shall be operated by a onboard computer
    - If the TVS fails to stage, then the TVS shall be abandoned.
    - When in orbit, the TVS searches for an appropriate trajectory to Mun.
    - When in transit from Kerbin to Mun, the TVS searches for an appropriate orbit around the Mun.
    - When around orbit of Mun, the TVS deploys the communication system(s).

- Communication System (CS)
    - WHEN an emergency is present, the CS shall work at 10 minutes interval.
    - WHEN in normal operation mode, the CS shall work at 30 minutes interval.
    - The CS shall be accessible at all times.
    - If the CS fails then the CS shall be abandoned.
    

- No return vessel nor re-usability of used components
- No kerbin onboard

## Constrains
**💵️Budget**
It is in the name of science! Ah, joking, everything in life costs money. Even if it could mean a change in history!

Below some tables that give the estimated value with the maximal budget we can use. 
Later, a table where each used component is linked with a certain category. 
Finally, a total cost of each category where a comparison is made between the estimated and the actual costs invested in the system.

| Category           | Funds (F) |
|--------------------|-----------|
| Farm Module        | 45000     |
| Satellite Network  | 12000     |
| Launch Vehicle     | 60000     |
| Transfer Stage     | 25000     |
| Contingency (15%)  | 21300     |
| **Total Estimated Cost** | **163300** |

Total:	148000	F
The budget that was given is 160000-170000 funds. In our estimates, we try to sketch the total amount of usage.

Below the actual spending of our rocket
| Part                                         | Amount | Cost      | Category           | Sub-total   |
|----------------------------------------------|--------|-----------|--------------------|-------------|
| 24-77 "Twitch" Liquid Fuel Engine            | 2      | 230       | Farm Module        | 460         |
| Communotron 16                               | 1      | 300       | Farm Module        | 300         |
| LT-2 Landing Strut                           | 3      | 340       | Farm Module        | 1020        |
| Mk2 Lander Can                               | 3      | 3202      | Farm Module        | 9606        |
| OX-10C Photovoltaic Panels                   | 4      | 1200      | Farm Module        | 4800        |
| Rockomax X200-8 Fuel Tank                    | 1      | 432.8     | Farm Module        | 432.8       |
| Z-4K Rechargeable Battery Bank               | 6      | 4500      | Farm Module        | 27000       |
| Delta-Deluxe Winglet                         | 5      | 600       | Launch Vehicle     | 3000        |
| EAS-4 Strut Connector                        | 39     | 42        | Launch Vehicle     | 1638        |
| Protective Rocket Nose Cone Mk7              | 2      | 450       | Launch Vehicle     | 900         |
| RE-M3 "Mainsail" Liquid Fuel Engine          | 1      | 13000     | Launch Vehicle     | 13000       |
| Rockomax Jumbo-64 Fuel Tank                  | 1      | 2812.4    | Launch Vehicle     | 2812.4      |
| Rockomax X200-32 Fuel Tank                   | 2      | 1531.2    | Launch Vehicle     | 3062.4      |
| S2-33 "Clydesdale" Solid Fuel Booster        | 2      | 8660      | Launch Vehicle     | 17320       |
| TT18-A Launch Stability Enhancer             | 2      | 200       | Launch Vehicle     | 400         |
| TT-70 Radial Decoupler                       | 2      | 700       | Launch Vehicle     | 1400        |
| 48-7S "Spark" Liquid Fuel Engine             | 3      | 240       | Satellite Network  | 720         |
| AE-FF2 Airstream Protective Shell (2.5m)     | 1      | 600       | Satellite Network  | 600         |
| Communotron 16-S                             | 3      | 300       | Satellite Network  | 900         |
| CompoMax Radial Tubeless (kOS)               | 4      | 2200      | Satellite Network  | 8800        |
| Cubic Octagonal Strut                        | 7      | 16        | Satellite Network  | 112         |
| Octagonal Strut                              | 1      | 20        | Satellite Network  | 20          |
| Oscar-B Fuel Tank                            | 3      | 51.64     | Satellite Network  | 154.92      |
| OX-4W 3x2 Photovoltaic Panels                | 6      | 380       | Satellite Network  | 2280        |
| Probodobodyne OKTO2                          | 3      | 1480      | Satellite Network  | 4440        |
| RA-2 Relay Antenna                           | 3      | 1800      | Satellite Network  | 5400        |
| Small Inline Reaction Wheel                  | 3      | 600       | Satellite Network  | 1800        |
| TD-06 Decoupler                              | 1      | 150       | Satellite Network  | 150         |
| Z-200 Rechargeable Battery Bank              | 9      | 360       | Satellite Network  | 3240        |
| Fairing Construction Estimate                | 1      | 530       | Transfer Stage     | 530         |
| Mk-55 "Thud" Liquid Fuel Engine              | 2      | 820       | Transfer Stage     | 1640        |
| RC-L01 Remote Guidance Unit                  | 1      | 3400      | Transfer Stage     | 3400        |
| TD-25 Decoupler                              | 2      | 300       | Transfer Stage     | 600         |
| **Dry Part Total**                           |        |           |                    | **122238.52** |

other costs:
| Resources      | Weight (kg) | Price per kg (F/kg) | Price (F)   |
|----------------|-------------|---------------------|-------------|
| MonoPropellant | 0           | 0.3                 | 0           |
| LiquidFuel     | 30870       | 0.16                | 4939.2      |
| Oxidizer       | 37730       | 0.04                | 1509.2      |
| SolidFuel      | 246000      | 0.08                | 19680       |
| **Total**      |             |                     | **26128.4** |


Total:	148366,92	F
budget leftover	14933,08	F

And per category with the difference in the estimation value.
(positive is leftover, negative is extra money needed)
| Category          | Funds (F)  | Difference with Estimation |
|-------------------|------------|----------------------------|
| Farm Module       | 43618.8    | 1381.2                     |
| Satellite Network | 28916.92   | -16916.92                  |
| Launch Vehicle    | 43532.8    | 16467.2                    |
| Transfer Stage    | 6170       | 18830                      |
| **Total Dry Parts Cost** | **122238.52** |                            |

More money did go in the Satellite Network setup. Nevertheless, we spend less money on the other stages which is used in that stage.

**⏳️Time**
- Must be on the dark side of the mun -> path planning
- Farm contents do not get impacted on long time space travel

**📈️Performance**
- A $\Delta V$ of 6522.5 m/s is needed to go from Kerbin to Mun accordingly to [KSP Delta-V Planner](https://ksp.loicviennois.com/).
    - *Side note: we've added a 15% margin to the theoretical value and another 600 to get the satellites in orbit.*

## High-level choices
- Take 1 big rocket 🚀️ to carry the payload 📦️.
- 3 satellites 🛰️ in a triangular shape to provide global coverage around the Mun.
- No kerbin onboard and only guided by onboard controller.
- 10 minutes communication interval between the 2 locations.
- Full sustainable farm with no generators, only harvesters.
- 1 way ticket with no return vessels

## Workplan
1. Initial Phase:

- Define mission goals, constraints, and requirements.
- Draft preliminary design and perform feasibility studies, including $\Delta V$ calculations.

2. Design Phase:

- Select and procure components based on budget and performance needs.
- Build a comprehensive mission architecture incorporating all system requirements.

3. Implementation Phase:

- Assemble the rocket and payload, including farm module and satellite systems.
- Conduct simulations and tests to validate performance.

4. Deployment Phase:

- Launch and deliver the payload to the Mun.
- Deploy satellites in triangular formation for communication coverage.
- Land and activate the farm module on Mun's dark side.

## Reflection workflow
At the start, our workflow was all over the place. Everyone was trying to tackle different things at once without a clear plan. Once we shifted to a structured approach, everything started clicking. Having a step-by-step plan helped us focus on what mattered most, divide tasks properly, and make smarter decisions. We avoided wasting time and resources, which was crucial given the tight timeline. This organized way of working kept everyone on the same page and made the entire project run much smoother.
