// Generated KOS Script...
WAIT 5.
PRINT "Waiting to be decoupled...".

LOCAL initialRoot TO SHIP:ROOTPART.

WAIT UNTIL SHIP:ROOTPART <> initialRoot.
PRINT "Decoupled! Starting up...".
LOCAL direction TO RETROGRADE. // Default direction
WAIT 10.
PRINT "At periapsis. Starting circularization burn...".

LOCAL tolerance TO 100. // Target precision in meters
LOCAL localApoapsis TO SHIP:ORBIT:APOAPSIS.
LOCAL localPeriapsis TO SHIP:ORBIT:PERIAPSIS.
LOCAL prevDifference TO ABS(localApoapsis - localPeriapsis).
LOCAL increasing TO FALSE. // Tracks whether the difference is increasing
LOCAL direction TO RETROGRADE. // Default direction
LOCK STEERING TO direction. // Lock to the chosen direction
LOCAL difference TO ABS(localApoapsis - localPeriapsis).



UNTIL increasing {
    SET localApoapsis TO SHIP:ORBIT:APOAPSIS.
    SET localPeriapsis TO SHIP:ORBIT:PERIAPSIS.
    set difference TO ABS(localApoapsis - localPeriapsis).

    // Check if difference is climbing
    IF difference > prevDifference {
        PRINT "Difference is increasing! stop burn!".
        SET increasing TO TRUE.
    } ELSE {
        SET increasing TO FALSE.
    }

    // Adjust throttle if difference is not increasing
    IF NOT increasing {
        IF difference > 40000 {
            LOCK THROTTLE TO 0.1. // High throttle for large corrections
        } ELSE {
            LOCK THROTTLE TO 0.05. // Medium throttle for moderate corrections
        }
    }


    // Print current orbital parameters for debugging
    PRINT "Apoapsis: " + ROUND(localApoapsis, 1) + "m | Periapsis: " + ROUND(localPeriapsis, 1) + "m | Difference: " + ROUND(difference, 1) + "m" AT (0, 5).

    // Update the previous difference
    SET prevDifference TO difference.

    WAIT 0.1. // Short wait for frequent checks
}

// Stop the burn
LOCK THROTTLE TO 0.
UNLOCK STEERING.

PRINT "Circularization complete! Apoapsis and Periapsis are within " + ROUND(difference, 1) + "m.".

