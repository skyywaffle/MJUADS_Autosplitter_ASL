/*
 * Intended for DeSmuME 0.9.13 x64 on Windows.
 *
 * Game variables relevant to autosplitting:
 *  - Whether the player is in a race or not.
 *  - A unique identifier for each track.
 *  - Current placement in the race.
 *  - Whether the race is finished (here it's when laps completed == 3).
 *   
 */

state("DeSmuME_0.9.13_x64")
{
    // The comments on each address declaration are the RAM addresses as seen by DeSmuME
    
    // USA variables
    byte ds_buttonsPressed_USA : 0xACEC268;                     // 0x23D6E68
    byte ds_cursorPosition_USA : 0xAC6CF34;                     // 0x2357B34
    bool ds_raceActive_USA : 0xAC71631;                         // 0x235C231
    byte ds_racePlacement_USA : 0xAA4B841;                      // 0x2136441
    byte ds_trackID_USA : 0xA9DFFAC;                            // 0x20CABAC

    byte ds_lapsCompleted_sanFranStreets_USA : 0xAC35CEC;       // 0x23208EC
    byte ds_lapsCompleted_londonRails_USA : 0xAC2F040;          // 0x2319C40
    byte ds_lapsCompleted_chicagoCarnage_USA : 0xAC343C8;       // 0x231EFC8
    byte ds_lapsCompleted_brooklynNights_USA : 0xAC35D5C;       // 0x232095C
    byte ds_lapsCompleted_coastalCruise_USA : 0xAC31918;        // 0x231C518
    byte ds_lapsCompleted_theGauntlet_USA : 0xAC3B119;          // 0x23256A0
    byte ds_lapsCompleted_retailRacing_USA : 0xAC31D21;         // 0x231C2A8
    byte ds_lapsCompleted_backyardBattle_USA : 0xAC2BEFC;       // 0x2316AFC
    byte ds_lapsCompleted_mallMadness_USA : 0xAC326A4;          // 0x231D2A4
    byte ds_lapsCompleted_factoryFury_USA : 0xAC2DD6C;          // 0x231896C
    byte ds_lapsCompleted_californiaClash_USA : 0xAC2DDE0;      // 0x23189E0
    byte ds_lapsCompleted_detroitDistricts_USA : 0xAC381D4;     // 0x2322DD4
    byte ds_lapsCompleted_warehouseWar_USA : 0xAC39708;         // 0x2324308
    byte ds_lapsCompleted_constructionPit_USA : 0xAC36CBC;      // 0x23218BC
    byte ds_lapsCompleted_roadworksRumble_USA : 0xAC383EC;      // 0x2322FEC
    byte ds_lapsCompleted_bostonBattle_USA : 0xAC38DD0;         // 0x23239D0
    byte ds_lapsCompleted_stadiumCircuit_USA : 0xAC39220;       // 0x2323E20
    byte ds_lapsCompleted_shoppingPrecinct_USA : 0xAC41288;     // 0x232BE88
    byte ds_lapsCompleted_stadiumStandoff_USA : 0xAC3B900;      // 0x2326500

    bool ds_orlandoRaceCompleted_USA : 0xAC369F4;               // 0x23215F4
    bool ds_sanDiegoRaceCompleted_USA : 0xAC4617C;              // 0x2330D7C
    bool ds_houstonRaceCompleted_USA : 0xAC3A6A8;               // 0x23252A8
    bool ds_detroitRaceCompleted_USA : 0xAC44340;               // 0x232EF40
    bool ds_miamiRaceCompleted_USA : 0xAC4945C;                 // 0x233405C
    bool ds_minneapolisRaceCompleted_USA : 0xAC42648;           // 0x232D248
    bool ds_lasVegasRaceCompleted_USA : 0xAC4A31C;              // 0x2334F1C

    byte4 ds_detroitFreestylePointsArray_USA : 0xAC4AE20;       // 0x2335A20
    bool  ds_detroitFreestyleCompleted_USA : 0xAC4BED0;         // 0x2336AD0

    byte4 ds_minneapolisFreestylePointsArray_USA : 0xAC46C5C;   // 0x233185C
    bool  ds_minneapolisFreestyleCompleted_USA : 0xAC47D0C;     // 0x233290C

    byte4 ds_houstonFreestylePointsArray_USA : 0xAC32574;       // 0x231D174
    bool  ds_houstonFreestyleCompleted_USA : 0xAC33624;         // 0x231E224

    byte4 ds_orlandoFreestylePointsArray_USA : 0xAC4C3C8;       // 0x2336FC8
    bool  ds_orlandoFreestyleCompleted_USA : 0xAC4D478;         // 0x2338078

    byte4 ds_miamiFreestylePointsArray_USA : 0xAC49E60;         // 0x2334A60
    bool  ds_miamiFreestyleCompleted_USA : 0xAC4AF10;           // 0x2335B10

    byte4 ds_stLouis1FreestylePointsArray_USA : 0xAC4A008;      // 0x2334C08
    bool  ds_stLouis1FreestyleCompleted_USA : 0xAC4B0B8;        // 0x2335CB8

    byte4 ds_sanDiegoFreestylePointsArray_USA : 0xAC47CD8;      // 0x23328D8
    bool  ds_sanDiegoFreestyleCompleted_USA : 0xAC48D88;        // 0x2333988

    byte4 ds_oakland1FreestylePointsArray_USA : 0xAC490D4;      // 0x2333CD4
    bool  ds_oakland1FreestyleCompleted_USA : 0xAC4A184;        // 0x2334D84

    byte4 ds_sanAntonioFreestylePointsArray_USA : 0xAC494D4;    // 0x23340D4
    bool  ds_sanAntonioFreestyleCompleted_USA : 0xAC4A584;      // 0x2335184

    byte4 ds_tacomaFreestylePointsArray_USA : 0xAC3CC48;        // 0x2327848
    bool  ds_tacomaFreestyleCompleted_USA : 0xAC3DCF8;          // 0x23288F8

    byte4 ds_oakland2FreestylePointsArray_USA : 0xAC3AB50;      // 0x2325750
    bool  ds_oakland2FreestyleCompleted_USA : 0xAC3BC00;        // 0x2326800

    byte4 ds_indianapolisFreestylePointsArray_USA : 0xAC44258;  // 0x232EE58
    bool  ds_indianapolisFreestyleCompleted_USA : 0xAC45308;    // 0x232FF08

    byte4 ds_stLouis2FreestylePointsArray_USA : 0xAC4101C;      // 0x232BC1C
    bool  ds_stLouis2FreestyleCompleted_USA : 0xAC420CC;        // 0x232CCCC

    byte4 ds_newOrleansFreestylePointsArray_USA : 0xAC33828;    // 0x231E428
    bool  ds_newOrleansFreestyleCompleted_USA : 0xAC348D8;      // 0x231F4D8

    byte4 ds_lasVegasFreestylePointsArray_USA : 0xAC4FBD8;      // 0x233A7D8
    bool  ds_lasVegasFreestyleCompleted_USA : 0xAC50C88;        // 0x233B888

    // EUR variables

}

startup
{
    print(":3");
    settings.Add("ds", false, "Nintendo DS");
    settings.SetToolTip("ds", "Use with DeSmuME 0.9.13");
    settings.Add("ds_speedster_usa", false, "Speedster% (USA)", "ds");
    settings.Add("ds_worldseries_usa", false, "World Series% (USA)", "ds");
    settings.Add("ds_speedster_eur", false, "Speedster% (EUR) [NOT IMPLEMENTED]", "ds");
    settings.Add("ds_worldseries_eur", false, "World Series% (EUR) [NOT IMPLEMENTED]", "ds");
}

init
{
    vars.split = 0;
    vars.delayedSplitFrames = -1;
    vars.raceID = new List<byte>{};
    

    vars.trackID = 0;
    vars.racePlacement = 0;
    vars.lapsCompleted = 0;
    vars.lapsCompletedArray = new List<uint>{};
    vars.raceActive = 0;
    vars.buttonsPressed = 0;
    vars.cursorPosition = 0;
    vars.worldSeriesTrackCompleted = true;
    vars.worldSeriesTrackCompletedArray = new List<bool>{};
    vars.worldSeriesFreestylePoints = 0;
    vars.worldSeriesFreestylePassed = true;
    
    vars.worldSeriesFreestyleMinimumPoints = new List<uint> {
        11,     // Detroit
        16,     // Minneapolis
        0,      // Orlando Race (N/A, since 0 >= 0 there's no issues down the line)
        20,     // Houston
        21,     // Orlando
        0,      // San Diego Race
        19,     // Miami
        22,     // St. Louis 1
        0,      // Houston Race
        26,     // San Diego
        28,     // Oakland 1
        0,      // Detroit Race
        30,     // San Antonio
        30,     // Tacoma
        0,      // Miami Race
        30,     // Oakland 2
        31,     // Indianapolis
        0,      // Minneapolis Race
        32,     // St. Louis 2
        33,     // New Orleans
        0,      // Las Vegas Race
        39      // Las Vegas
    };

    vars.oldTrackID = 0;
    vars.oldRacePlacement = 0;
    vars.oldLapsCompleted = 0;
    vars.oldRaceActive = 0;
    vars.oldButtonsPressed = 0;
    vars.oldCursorPosition = 0;
    vars.oldWorldSeriesTrackCompleted = true;
    vars.oldWorldSeriesTrackCompletedArray = new List<bool>{};

    refreshRate = 60;
}

update
{
    // TODO: MAKE THIS MORE OPTIMIZED (MAKE ARRAYS IN INIT HAVE SPECIFIC SIZES AS WELL)
    if (settings["ds_speedster_eur"] || settings["ds_worldseries_eur"])
    {
        print("LiveSplit.exe FUCK YOU");
        return false; // because ts is NOT IMPLEMENTED YET!!! FUCK YOU 🖕
    }


    vars.oldTrackID = vars.trackID;
    vars.oldRaceActive = vars.raceActive;
    vars.oldButtonsPressed = vars.buttonsPressed;
    vars.oldCursorPosition = vars.cursorPosition;
    
    if (settings["ds_speedster_usa"] || settings["ds_worldseries_usa"])
    {
        vars.trackID = current.ds_trackID_USA;
        vars.raceActive = current.ds_raceActive_USA;
        vars.buttonsPressed = current.ds_buttonsPressed_USA;
        vars.cursorPosition = current.ds_cursorPosition_USA;
    }

    vars.oldLapsCompleted = vars.lapsCompleted;
    vars.oldRacePlacement = vars.racePlacement;
    
    if (settings["ds_speedster_usa"])
    {
        vars.racePlacement = current.ds_racePlacement_USA;

        vars.lapsCompletedArray = new List<uint> {
            current.ds_lapsCompleted_sanFranStreets_USA,
            current.ds_lapsCompleted_londonRails_USA,
            current.ds_lapsCompleted_chicagoCarnage_USA,
            current.ds_lapsCompleted_brooklynNights_USA,
            current.ds_lapsCompleted_coastalCruise_USA,
            current.ds_lapsCompleted_theGauntlet_USA,
            current.ds_lapsCompleted_retailRacing_USA,
            current.ds_lapsCompleted_backyardBattle_USA,
            current.ds_lapsCompleted_mallMadness_USA,
            current.ds_lapsCompleted_factoryFury_USA,
            current.ds_lapsCompleted_californiaClash_USA,
            current.ds_lapsCompleted_detroitDistricts_USA,
            current.ds_lapsCompleted_warehouseWar_USA,
            current.ds_lapsCompleted_constructionPit_USA,
            current.ds_lapsCompleted_roadworksRumble_USA,
            current.ds_lapsCompleted_bostonBattle_USA,
            current.ds_lapsCompleted_stadiumCircuit_USA,
            current.ds_lapsCompleted_shoppingPrecinct_USA,
            current.ds_lapsCompleted_stadiumStandoff_USA
        };

        vars.raceID = new List<uint> {
            4,      // San Fran Streets
            3,      // London Rails
            10,     // Chicago Carnage
            31,     // Brooklyn Nights
            7,      // Coastal Cruise
            14,     // The Gauntlet
            5,      // Retail Racing
            36,     // Backyard Battle
            32,     // Mall Madness
            12,     // Factory Fury
            30,     // California Clash
            9,      // Detroit Districts
            6,      // Warehouse War
            13,     // Construction Pit
            34,     // Roadworks Rumble
            33,     // Boston Battle
            8,      // Stadium Circuit
            11,     // Shopping Precinct
            35      // Stadium Standoff
        };

        if (vars.split < vars.lapsCompletedArray.Count)
            vars.lapsCompleted = vars.lapsCompletedArray[vars.split];
    }

    vars.oldWorldSeriesTrackCompletedArray = vars.worldSeriesTrackCompletedArray;
    vars.oldWorldSeriesTrackCompleted = vars.worldSeriesTrackCompleted;

    if (settings["ds_worldseries_usa"])
    {
        vars.raceID = new List<uint> {
            15,     // Detroit
            16,     // Minneapolis
            48,     // Orlando Race
            23,     // Houston
            24,     // Orlando
            49,     // San Diego Race
            17,     // Miami
            18,     // St. Louis 1
            47,     // Houston Race
            25,     // San Diego
            26,     // Oakland 1
            43,     // Detroit Race
            19,     // San Antonio
            20,     // Tacoma
            45,     // Miami Race
            27,     // Oakland 2
            28,     // Indianapolis
            44,     // Minneapolis Race
            21,     // St. Louis 2
            29,     // New Orleans
            46,     // Las Vegas Race
            22      // Las Vegas
        };


        vars.worldSeriesTrackCompletedArray = new List<bool> {
            current.ds_detroitFreestyleCompleted_USA,
            current.ds_minneapolisFreestyleCompleted_USA,
            current.ds_orlandoRaceCompleted_USA,
            current.ds_houstonFreestyleCompleted_USA,
            current.ds_orlandoFreestyleCompleted_USA,
            current.ds_sanDiegoRaceCompleted_USA,
            current.ds_miamiFreestyleCompleted_USA,
            current.ds_stLouis1FreestyleCompleted_USA,
            current.ds_houstonRaceCompleted_USA,
            current.ds_sanDiegoFreestyleCompleted_USA,
            current.ds_oakland1FreestyleCompleted_USA,
            current.ds_detroitRaceCompleted_USA,
            current.ds_sanAntonioFreestyleCompleted_USA,
            current.ds_tacomaFreestyleCompleted_USA,
            current.ds_miamiRaceCompleted_USA,
            current.ds_oakland2FreestyleCompleted_USA,
            current.ds_indianapolisFreestyleCompleted_USA,
            current.ds_minneapolisRaceCompleted_USA,
            current.ds_stLouis2FreestyleCompleted_USA,
            current.ds_newOrleansFreestyleCompleted_USA,
            current.ds_lasVegasRaceCompleted_USA,
            current.ds_lasVegasFreestyleCompleted_USA
        };

        vars.worldSeriesFreestylePoints = 0;

        if (vars.split == 0) {
            for (uint i = 0; i < 4; i++) {
                vars.worldSeriesFreestylePoints += current.ds_detroitFreestylePointsArray_USA[i];
            }
        }

        else if (vars.split == 1) {
            for (uint i = 0; i < 4; i++) {
                vars.worldSeriesFreestylePoints += current.ds_minneapolisFreestylePointsArray_USA[i];
            }
        }

        else if (vars.split == 3) {
            for (uint i = 0; i < 4; i++) {
                vars.worldSeriesFreestylePoints += current.ds_houstonFreestylePointsArray_USA[i];
            }
        }

        else if (vars.split == 4) {
            for (uint i = 0; i < 4; i++) {
                vars.worldSeriesFreestylePoints += current.ds_orlandoFreestylePointsArray_USA[i];
            }
        }

        else if (vars.split == 6) {
            for (uint i = 0; i < 4; i++) {
                vars.worldSeriesFreestylePoints += current.ds_miamiFreestylePointsArray_USA[i];
            }
        }

        else if (vars.split == 7) {
            for (uint i = 0; i < 4; i++) {
                vars.worldSeriesFreestylePoints += current.ds_stLouis1FreestylePointsArray_USA[i];
            }
        }

        else if (vars.split == 9) {
            for (uint i = 0; i < 4; i++) {
                vars.worldSeriesFreestylePoints += current.ds_sanDiegoFreestylePointsArray_USA[i];
            }
        }

        else if (vars.split == 10) {
            for (uint i = 0; i < 4; i++) {
                vars.worldSeriesFreestylePoints += current.ds_oakland1FreestylePointsArray_USA[i];
            }
        }

        else if (vars.split == 12) {
            for (uint i = 0; i < 4; i++) {
                vars.worldSeriesFreestylePoints += current.ds_sanAntonioFreestylePointsArray_USA[i];
            }
        }

        else if (vars.split == 13) {
            for (uint i = 0; i < 4; i++) {
                vars.worldSeriesFreestylePoints += current.ds_tacomaFreestylePointsArray_USA[i];
            }
        }

        else if (vars.split == 15) {
            for (uint i = 0; i < 4; i++) {
                vars.worldSeriesFreestylePoints += current.ds_oakland2FreestylePointsArray_USA[i];
            }
        }

        else if (vars.split == 16) {
            for (uint i = 0; i < 4; i++) {
                vars.worldSeriesFreestylePoints += current.ds_indianapolisFreestylePointsArray_USA[i];
            }
        }

        else if (vars.split == 18) {
            for (uint i = 0; i < 4; i++) {
                vars.worldSeriesFreestylePoints += current.ds_stLouis2FreestylePointsArray_USA[i];
            }
        }

        else if (vars.split == 19) {
            for (uint i = 0; i < 4; i++) {
                vars.worldSeriesFreestylePoints += current.ds_newOrleansFreestylePointsArray_USA[i];
            }
        }

        else if (vars.split == 21) {
            for (uint i = 0; i < 4; i++) {
                vars.worldSeriesFreestylePoints += current.ds_lasVegasFreestylePointsArray_USA[i];
            }
        }



        if (vars.split < vars.worldSeriesTrackCompletedArray.Count)
        {
            vars.worldSeriesTrackCompleted = vars.worldSeriesTrackCompletedArray[vars.split];
            vars.worldSeriesFreestylePassed = (vars.worldSeriesFreestylePoints >= vars.worldSeriesFreestyleMinimumPoints[vars.split]);
        }

        // print("Split: " + vars.split + " OldCompleted: " + vars.oldWorldSeriesTrackCompleted + " Completed: " + vars.worldSeriesTrackCompleted);
    }
}

start
{
    if (!vars.raceActive && (vars.buttonsPressed - vars.oldButtonsPressed == 1) && vars.cursorPosition == 0)
    {
        vars.split = 0;
        return true;
    }
}


split
{
    if (settings["ds_speedster_usa"])
    {
        // Delay splitting a bit, to align with manual frame retiming better
        if (vars.delayedSplitFrames == 0)
        {
            vars.delayedSplitFrames = -1;
            return true;
        }

        else if (vars.delayedSplitFrames > 0)
        {
            vars.delayedSplitFrames--;
        }

        else if (vars.lapsCompleted == 3 && vars.oldLapsCompleted == 2 && vars.split < vars.raceID.Count && vars.trackID == vars.raceID[vars.split])
        {
            vars.split++;
            if (vars.split == 19) // delay splitting on stadium standoff to align with manual retime
            {    
                vars.delayedSplitFrames = 5;
            }
            else
            {
                return true;
            }
        }
    }

    if (settings["ds_worldseries_usa"]) {
        if (vars.worldSeriesTrackCompleted && !vars.oldWorldSeriesTrackCompleted && vars.worldSeriesFreestylePassed && vars.split < vars.raceID.Count && vars.trackID == vars.raceID[vars.split]) {
            vars.split++;
            return true;
        }
    }
}

reset
{
    if (settings["ds_speedster_usa"])
    {
        return !vars.raceActive && vars.oldRaceActive && vars.split < vars.raceID.Count && vars.trackID == vars.raceID[vars.split] && vars.lapsCompleted < 3;
    }

    if (settings["ds_worldseries_usa"])
    {
        return !vars.raceActive && vars.oldRaceActive && vars.split < vars.raceID.Count && vars.trackID == vars.raceID[vars.split] && !vars.worldSeriesTrackCompleted;
    }
}
