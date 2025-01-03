#TODO
a small overview of the mission with the group name, the summary of the business/scientific requirements of your mission, the constraints your project worked in (e.g., budget, time, performance, etc. ), the high-level choices and drivers for your architecture and the work plan you followed. Also, add a reflection (1 paragraph) on the workflow compared to a more ad-hoc workflow you started within the first lab session. 

# Dark Farmers
![Image of the concept](Wall_Paper.png)

## Team 
Ahmad Shakleya, Berkay Yildirim, Rehmat Khan, Robbe Elsermans

## Mission 
Bring an experimental farm module on the dark side of Mun 🌑️ and provide constant communication 🛰️ with Kerbin 🌍️.

## System requirements
- Farm Module
    - weight: 4000 Kilograms -> 4t​
    - Energy: 39765 EC/day -> 0.29 EC/s​

- Provide constant communication between Kerbin and Mun​
    - An emergency communication interval of **10 minutes​**
    - A normal communication interval of **30 minutes​**
    -> Provide for 10 minute interval.

- No return vessel nor re-usability of used components
- No kerbin onboard

## Constrains
**💵️Budget**
It is in the name of science! Ah, joking, everything in life costs money. Even if it could mean a change in history!

Below some tables that give the estimated value with the maximal budget we can use. 
Later, a table where each used component is linked with a certain category. 
Finally, a total cost of each category where a comparison is made between the estimated and the actual costs invested in the system.

| Category             | Funds (F) |
|----------------------|-----------|
| Farm Module          | 20000     |
| Satellite Network    | 12000     |
| Launch Vehicle       | 20000     |
| Transfer Stage       | 10000     |
| Contingency (15%)    | 15000     |

Total:	77000	F
The budget that was given is 100000 funds. In our estimates, we try to sketch the total amount of usage.

Below the actual spending of our rocket
| Part                               | Amount | Cost   | Category             | Sub-total |
|------------------------------------|--------|--------|----------------------|-----------|
| Mk2 Lander Can                     | 3      | 3202   | Farm Module          | 9606      |
| Communotron 16                     | 1      | 300    | Farm Module          | 300       |
| Z-4K Rechargeable Battery Bank     | 6      | 4500   | Farm Module          | 27000     |
| OX-STAT Photovoltaic Panels        | 2      | 300    | Farm Module          | 600       |
| Cubic Octagonal Strut              | 7      | 16     | Contingency (15%)    | 112       |
| Octagonal Strut                    | 1      | 20     | Contingency (15%)    | 20        |
| AE-FF2 Airstream Protective Shell  | 2.5    | 12     | Contingency (15%)    | 630       |
| CompoMax Radial Tubeless           | 1      | 300    | Contingency (15%)    | 300       |
| TD-06 Decoupler                    | 3      | 150    | Contingency (15%)    | 450       |
| 48-7S "Spark" Liquid Fuel Engine   | 3      | 240    | Transfer Stage       | 720       |
| Oscar-B Fuel Tank                  | 3      | 70     | Satellite Network    | 210       |
| Z-200 Rechargeable Battery Bank    | 9      | 360    | Satellite Network    | 3240      |
| OX-4W 3x2 Photovoltaic Panels      | 6      | 380    | Satellite Network    | 2280      |
| Small Inline Reaction Wheel        | 3      | 600    | Satellite Network    | 1800      |
| Communotron 16-S                   | 3      | 300    | Satellite Network    | 900       |
| Probodobodyne OKTO2                | 3      | 1480   | Satellite Network    | 4440      |
| RA-2 Relay Antenna                 | 3      | 1800   | Satellite Network    | 5400      |
| OX-STAT Photovoltaic Panels        | 3      | 70     | Farm Module          | 210       |
| Rockomax X200-8 Fuel Tank          | 1      | 800    | Transfer Stage       | 800       |
| LT-1 Landing Struts                | 4      | 440    | Transfer Stage       | 1760      |
| 24-77 "Twitch" Liquid Fuel Engine  | 2      | 230    | Transfer Stage       | 460       |
| TD-25 Decoupler                    | 1      | 300    | Transfer Stage       | 300       |
| Rockomax X200-32 Fuel Tank         | 1      | 3000   | Transfer Stage       | 3000      |
| TS-25 Stack Separator              | 1      | 400    | Transfer Stage       | 400       |
| Rockomax Jumbo-64 Fuel Tank        | 1      | 5750   | Launch Vehicle       | 5750      |
| Mk-55 "Thud" Liquid Fuel Engine    | 2      | 820    | Transfer Stage       | 1640      |
| EAS-4 Strut Connector              | 3      | 42     | Transfer Stage       | 126       |

Total:	77044	F
budget leftover	22956	F

And per category with the difference in the estimation value.
(positive is leftover, negative is extra money needed)
| Category             | Funds (F) | Difference with Estimation |
|----------------------|-----------|----------------------------|
| Farm Module          | 37716     | -17716                     |
| Satellite Network    | 18270     | -6270                      |
| Launch Vehicle       | 7516      | 12484                      |
| Transfer Stage       | 7440      | 2560                       |
| Contingency (15%)    | 1512      | 13488                      |

More money did go in the Satellite Network setup and farm module. Nevertheless, we spend less money on the other stages which is used in the 2 previously mentioned stages.

**⏳️Time**
- Must be on the dark side of the mun -> path planning
- Farm contents do not get impacted on long time space travel

**📈️Performance**
- A $\Delta V$ of 5922.5 m/s is needed to go from Kerbin to Mun accordingly to [KSP Delta-V Planner](https://ksp.loicviennois.com/).
    - *Side note: we've added a 15% margin to the theoretical value.*

## High-level choices
- Take 1 big rocket 🚀️ to carry the payload 📦️.
- 3 satellites 🛰️ in a triangular shape to provide global coverage around the Mun.
- No kerbin onboard and only guided by onboard controller.
- 10 minutes communication interval between the 2 locations.
- Full sustainable farm with no generators, only harvesters.
- 1 way ticket with no return vessels

## Workplan


## Reflection workflow
