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
    bool raceActive_USA : 0xAC71631;                        // 0x235C231
    uint racePlacement_USA : 0xAA4B841;                     // 0x2136441
    byte sceneID_USA : 0xAC6FF45;                           // 0x235AB45
    byte lapsCompleted_sanFranStreets_USA : 0xAC35CEC;      // 0x23208EC
    byte lapsCompleted_londonRails_USA : 0xAC2F040;         // 0x2319C40
    byte lapsCompleted_chicagoCarnage_USA : 0xAC343C8;      // 0x231EFC8
    byte lapsCompleted_brooklynNights_USA : 0xAC35D5C;      // 0x232095C
    byte lapsCompleted_coastalCruise_USA : 0xAC31918;       // 0x231C518
    byte lapsCompleted_theGauntlet_USA : 0xAC3B119;         // 0x23256A0
    byte lapsCompleted_retailRacing_USA : 0xAC31D21;        // 0x231C2A8
    byte lapsCompleted_backyardBattle_USA : 0xAC2BEFC;      // 0x2316AFC
    byte lapsCompleted_mallMadness_USA : 0xAC326A4;         // 0x231D2A4
    byte lapsCompleted_factoryFury_USA : 0xAC2DD6C;         // 0x231896C
    byte lapsCompleted_californiaClash_USA : 0xAC2DDE0;     // 0x23189E0
    byte lapsCompleted_detroitDistricts_USA : 0xAC381D4;    // 0x2322DD4
    byte lapsCompleted_warehouseWar_USA : 0xAC39708;        // 0x2324308
    byte lapsCompleted_constructionPit_USA : 0xAC36CBC;     // 0x23218BC
    byte lapsCompleted_roadworksRumble_USA : 0xAC383EC;     // 0x2322FEC
    byte lapsCompleted_bostonBattle_USA : 0xAC38DD0;        // 0x23239D0
    byte lapsCompleted_stadiumCircuit_USA : 0xAC39220;      // 0x2323E20
    byte lapsCompleted_shoppingPrecinct_USA : 0xAC41288;    // 0x232BE88
    byte lapsCompleted_stadiumStandoff_USA : 0xAC3B900;     // 0x2326500


    // EUR variables

}

startup
{
    print(":3");
    settings.Add("ds", false, "Nintendo DS");
    settings.SetToolTip("ds", "Use with DeSmuME 0.9.13");
    settings.Add("ds_speedster_usa", false, "Speedster% (USA)", "ds");
    settings.Add("ds_worldseries_usa", false, "World Series% (USA)", "ds");
}

init
{
    vars.SPEEDSTER_START_USA = 0;
    vars.WORLD_SERIES_START_USA = 19;
    vars.split = 0;

    // There are some duplicate IDs but it's hard to find a memory address that works
    vars.raceID = new List<uint> {
        61, // San Fran Streets
        9, // London Rails
        177, // Chicago Carnage
        163, // Brooklyn Nights
        20, // Coastal Cruise
        115, // The Gauntlet
        121, // Retail Racing
        132, // Backyard Battle
        88, // Mall Madness
        34, // Factory Fury
        161, // California Clash
        64, // Detroit Districts
        48, // Warehouse War
        134, // Construction Pit
        244, // Roadworks Rumble
        79, // Boston Battle
        102, // Stadium Circuit
        251, // Shopping Precinct
        55 // Stadium Standoff
    };

    vars.sceneID = 0;
    vars.racePlacement = 0;
    vars.lapsCompleted = 0;
    vars.lapsCompletedArray = new List<uint>{};
    vars.raceActive = 0;

    vars.oldSceneID = 0;
    vars.oldRacePlacement = 0;
    vars.oldLapsCompleted = 0;
    vars.oldRaceActive = 0;
}

update
{
    vars.oldSceneID = vars.sceneID;
    vars.sceneID = current.sceneID_USA;

    vars.oldRacePlacement = vars.racePlacement;
    vars.racePlacement = current.racePlacement_USA;

    vars.oldRaceActive = vars.raceActive;
    vars.raceActive = current.raceActive_USA;

    vars.oldLapsCompleted = vars.lapsCompleted;
    vars.lapsCompletedArray = new List<uint> {
        current.lapsCompleted_sanFranStreets_USA,
        current.lapsCompleted_londonRails_USA,
        current.lapsCompleted_chicagoCarnage_USA,
        current.lapsCompleted_brooklynNights_USA,
        current.lapsCompleted_coastalCruise_USA,
        current.lapsCompleted_theGauntlet_USA,
        current.lapsCompleted_retailRacing_USA,
        current.lapsCompleted_backyardBattle_USA,
        current.lapsCompleted_mallMadness_USA,
        current.lapsCompleted_factoryFury_USA,
        current.lapsCompleted_californiaClash_USA,
        current.lapsCompleted_detroitDistricts_USA,
        current.lapsCompleted_warehouseWar_USA,
        current.lapsCompleted_constructionPit_USA,
        current.lapsCompleted_roadworksRumble_USA,
        current.lapsCompleted_bostonBattle_USA,
        current.lapsCompleted_stadiumCircuit_USA,
        current.lapsCompleted_shoppingPrecinct_USA,
        current.lapsCompleted_stadiumStandoff_USA
    };
    
    if (vars.split < vars.lapsCompletedArray.Count)
        vars.lapsCompleted = vars.lapsCompletedArray[vars.split];
}

start
{
    if (current.raceActive_USA && !old.raceActive_USA)
    {
        vars.split = 0;
        return true;
    }
}

split
{
    if (vars.lapsCompleted == 3 && vars.oldLapsCompleted == 2 && vars.sceneID == vars.raceID[vars.split])
    {
        vars.split++;
        return true;
    }
}

reset
{
    return vars.oldSceneID == vars.raceID[vars.split] && vars.sceneID == 0 && vars.lapsCompleted < 3;
}
