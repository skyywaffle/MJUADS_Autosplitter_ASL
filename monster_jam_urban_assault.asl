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
    byte ds_buttonsPressed_USA : 0xACEC268;                    // 0x23D6E68
    byte ds_cursorPosition_USA : 0xAC6CF34;                    // 0x2357B34
    bool ds_raceActive_USA : 0xAC71631;                        // 0x235C231
    byte ds_racePlacement_USA : 0xAA4B841;                     // 0x2136441
    byte ds_sceneID_USA : 0xAC6FF45;                           // 0x235AB45
    byte ds_lapsCompleted_sanFranStreets_USA : 0xAC35CEC;      // 0x23208EC
    byte ds_lapsCompleted_londonRails_USA : 0xAC2F040;         // 0x2319C40
    byte ds_lapsCompleted_chicagoCarnage_USA : 0xAC343C8;      // 0x231EFC8
    byte ds_lapsCompleted_brooklynNights_USA : 0xAC35D5C;      // 0x232095C
    byte ds_lapsCompleted_coastalCruise_USA : 0xAC31918;       // 0x231C518
    byte ds_lapsCompleted_theGauntlet_USA : 0xAC3B119;         // 0x23256A0
    byte ds_lapsCompleted_retailRacing_USA : 0xAC31D21;        // 0x231C2A8
    byte ds_lapsCompleted_backyardBattle_USA : 0xAC2BEFC;      // 0x2316AFC
    byte ds_lapsCompleted_mallMadness_USA : 0xAC326A4;         // 0x231D2A4
    byte ds_lapsCompleted_factoryFury_USA : 0xAC2DD6C;         // 0x231896C
    byte ds_lapsCompleted_californiaClash_USA : 0xAC2DDE0;     // 0x23189E0
    byte ds_lapsCompleted_detroitDistricts_USA : 0xAC381D4;    // 0x2322DD4
    byte ds_lapsCompleted_warehouseWar_USA : 0xAC39708;        // 0x2324308
    byte ds_lapsCompleted_constructionPit_USA : 0xAC36CBC;     // 0x23218BC
    byte ds_lapsCompleted_roadworksRumble_USA : 0xAC383EC;     // 0x2322FEC
    byte ds_lapsCompleted_bostonBattle_USA : 0xAC38DD0;        // 0x23239D0
    byte ds_lapsCompleted_stadiumCircuit_USA : 0xAC39220;      // 0x2323E20
    byte ds_lapsCompleted_shoppingPrecinct_USA : 0xAC41288;    // 0x232BE88
    byte ds_lapsCompleted_stadiumStandoff_USA : 0xAC3B900;     // 0x2326500


    // EUR variables

}

startup
{
    print(":3");
    settings.Add("ds", false, "Nintendo DS");
    settings.SetToolTip("ds", "Use with DeSmuME 0.9.13");
    settings.Add("ds_speedster_usa", false, "Speedster% (USA)", "ds");
    settings.Add("ds_worldseries_usa", false, "World Series% (USA) [NOT IMPLEMENTED]", "ds");
    settings.Add("ds_speedster_eur", false, "Speedster% (EUR) [NOT IMPLEMENTED]", "ds");
    settings.Add("ds_worldseries_eur", false, "World Series% (EUR) [NOT IMPLEMENTED]", "ds");
}

init
{
    vars.split = 0;
    vars.delayedSplitFrames = -1;
    vars.raceID = new List<byte>{};
    

    vars.sceneID = 0;
    vars.racePlacement = 0;
    vars.lapsCompleted = 0;
    vars.lapsCompletedArray = new List<uint>{};
    vars.raceActive = 0;
    vars.buttonsPressed = 0;
    vars.cursorPosition = 0;

    vars.oldSceneID = 0;
    vars.oldRacePlacement = 0;
    vars.oldLapsCompleted = 0;
    vars.oldRaceActive = 0;
    vars.oldButtonsPressed = 0;
    vars.oldCursorPosition = 0;

    refreshRate = 60;
}

update
{
    vars.oldSceneID = vars.sceneID;
    vars.oldRacePlacement = vars.racePlacement;
    vars.oldRaceActive = vars.raceActive;
    vars.oldButtonsPressed = vars.buttonsPressed;
    vars.oldCursorPosition = vars.cursorPosition;
    
    if (settings["ds_speedster_usa"] || settings["ds_worldseries_usa"])
    {
        vars.sceneID = current.ds_sceneID_USA;
        vars.racePlacement = current.ds_racePlacement_USA;
        vars.raceActive = current.ds_raceActive_USA;
        vars.buttonsPressed = current.ds_buttonsPressed_USA;
        vars.cursorPosition = current.ds_cursorPosition_USA;
    }

    vars.oldLapsCompleted = vars.lapsCompleted;
    
    if (settings["ds_speedster_usa"])
    {
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
            61,     // San Fran Streets
            9,      // London Rails
            177,    // Chicago Carnage
            163,    // Brooklyn Nights
            20,     // Coastal Cruise
            115,    // The Gauntlet
            121,    // Retail Racing
            132,    // Backyard Battle
            88,     // Mall Madness
            34,     // Factory Fury
            161,    // California Clash
            64,     // Detroit Districts
            48,     // Warehouse War
            134,    // Construction Pit
            244,    // Roadworks Rumble
            79,     // Boston Battle
            102,    // Stadium Circuit
            251,    // Shopping Precinct
            55      // Stadium Standoff
        };
    }
    
    if (vars.split < vars.lapsCompletedArray.Count)
        vars.lapsCompleted = vars.lapsCompletedArray[vars.split];

    return settings["ds_speedster_usa"] && !settings["ds_worldseries_usa"] && !settings["ds_speedster_eur"] && !settings["ds_worldseries_eur"];
}

start
{
    if (!vars.raceActive && (vars.buttonsPressed - vars.oldButtonsPressed == 1) && vars.cursorPosition == 0)
    {
        vars.split = 18;
        return true;
    }
}


split
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

    else if (vars.lapsCompleted == 3 && vars.oldLapsCompleted == 2 && vars.sceneID == vars.raceID[vars.split])
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

reset
{
    return vars.split < vars.raceID.Count && vars.oldSceneID == vars.raceID[vars.split] && vars.sceneID == 0 && vars.lapsCompleted < 3;
}
