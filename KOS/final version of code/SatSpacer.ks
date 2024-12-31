// SatSpacer.ks by Bullethead
// v 1.0 2016-12-04
// This script is an aid for evenly spacing 3 relay satellites in a circular orbit of arbitrary inclination
// around any planet or moon with a reasonably large SOI.  3 relays evenly spaced and high enough to be able
// to see each other past the planet will give 360^ coverage on the ground at that planet, but will have blind
// spots at the poles.  To cover them, send another group of 3 relays and put them at an inclination > 45^.
//
// Starting Conditions:
// 1.  A carrier vehicle (CV) carries all 3 relay satellites into a closed orbit at the target planet or moon.
// 2.  The relay satellites need enough dV to circularize.
// 3.  Run this script on the CV.
//
// What this script does:
// The end result is that the CV will be in an elliptical orbit with Pe at the altitude of the relay satellites
// and Ap set so that the CV's orbital period is 1/3 greater than a circular orbit at its Pe.  This script calculates
// and displays the Pe and Ap for the CV to accomplish this.  It's then up to you to get the CV into this orbit,
// either manually, with MJ, or writing your own script to fly it there.  Whatever.  This script is just a calculator.
//
// Tips on Usage:
// Satisfy the starting conditions then maneuver the CV into the specified elliptical orbit.  It's a good idea to set the
// CV's Pe first, then its Ap.  This way, the CV will be at Pe when you're done.  At this point, turn the CV prograde and
// release all 3 relays in succession, giving them just a few m/s to slowly drift apart.  All 4 ships will now be flying in
// formation.  Switch to the 1st relay, adjust its Pe back to the desired value if required, then circularize it when it
// gets back to Pe 1 orbit later.  Determine its orbital period (use MJ, KER, etc.) and write this down.  Switch to the 2nd
// relay and repeat.  After it circularizes, use RCS (with thrust limited down to like 2-3) to tweak its orbital period to
// be within 0.1 seconds of the 1st relay's period.  Then switch to the 3rd relay and repeat.  Then deorbit the CV.  Done.

// Figuring out where we are, how big it is, and how high we need to be.
//   NOTE:  All this is based on distance from center of planet.  Must convert later to ASL altitude.
CLEARSCREEN.

// original code
GLOBAL CarSMA TO 0.
GLOBAL CarAp TO 0.
GLOBAL SatAlt TO 0.
//

SET OurPlanet TO SHIP:BODY.
SET SLRad TO OurPlanet:RADIUS.
IF (OurPlanet:ATM:EXISTS)
	{
	SET TotRad TO (SLRad + OurPlanet:ATM:HEIGHT).
	}.
	ELSE
	{
	SET TotRad TO SLRad.
	}.
SET ClearRad TO (TotRad + (0.5 * TotRad)). // Gives a clearance of 50% for LOS between relays in same orbit
//  NOTE:  ClearRad will be used later to dtermine commsat orbital altitude vis trig and geometry


// Determining commsat orbital altitude in terms of distance from center of planet based on ClearRad
//    Imagine 3 commsats forming an equilateral triangle around the planet.  ClearRad drawn from the
//    planet's center bisects one of the sides of the equilateral triangle at a right angle.  Another
//    line drawn from the center of the planet to a vertex of the equilateral triangle thus creates
//    a 30-60-90 triangle with this second line as the hypotenuse.  We need to find the length of
//    this line, which is ClearRad / sin30.
SET DistFromCenter TO (ClearRad / SIN(30)).

// Converting DistFromCenter to orbital altitude ASL to give where we want to park the commsats.
//   Then make sure it's considerably less than the planet's SOI radius.
SET SatAlt TO (DistFromCenter - SLRad).
IF SatAlt <= (0.75 * OurPlanet:SOIRADIUS)
	{
	PRINT "Commsat altitude:  " + ROUND((SatAlt/1000),3) + " km".
	}.
	ELSE
	{
	PRINT "SOI not big enough.  Need more satellites".
	END.
	}.


// Determining commsat and carrier vehicle orbital periods 
SET GConst TO 0.00000000006673.
SET PlanetMass TO OurPlanet:MASS.
SET SatPer TO SQRT((4 * (CONSTANT:PI)^2 * (DistFromCenter^3))/(GConst * PlanetMass)).
PRINT " ".
PRINT "Commsat orbital period: " + ROUND(SatPer,2) + " seconds".
SET CarPer TO SatPer * 1.3333.
PRINT " ".
PRINT "Carrier vehicle orbital period: " + ROUND(Carper,2) + " seconds".


// Determining carrier vehicle Ap given its Pe and period
//  Step 1:  Finding semi-major axis.  Elliptical orbital period is same as for circular
//     orbit with radius = to SMA.
SET CarSMA TO (((CarPer)^2 * GConst * PlanetMass) / (4 * (CONSTANT:PI)^2))^(1/3).

//  Step 2:  Determining Ap distance from planet's center using SMA and Pe distance from center
//    (Ap DFC) = SMA + (SMA - (Pe DFC)) because the planet is one of the foci
PRINT "".
PRINT "Carrier SMA = " + ROUND((CarSMA/1000),3) + " km".

// Bullethead's code ended here

SET CarAp TO (2 * CarSMA) - DistFromCenter.
PRINT "Carrier Ap = " + ROUND((CarAp/1000),3) + " km".
