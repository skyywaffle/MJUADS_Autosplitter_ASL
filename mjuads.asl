/*
 * Intended for DeSmuME 0.9.13 x64 on Windows.
 *
 * Game variables relevant to autosplitting:
 *  - Whether the player is in a race or not.
 *  - A unique identifier for each track.
 *  - Current placement in the race.
 *  - Whether the race is finished (i.e. results screen is shown).
 *   
 *  
 *
 * Cheat engine address of any DeSmuME RAM Watch address:
 * "DeSmuME_0.9.13_x64.exe", (DeSmuME RAM Watch address + 8915400)
 *
 * Example: Address for San Fran Streets race placement
 * 
 * DeSmuME address: 023208E8
 * Cheat Engine address: DeSmuME_0.9.13_x64.exe+AC35CE8
 *
 * AC35CE8 - 23208E8 = 8915400
 *
 * This makes my job of finding LiveSplit-compatible memory addresses much easier.
 *
 */

state("DeSmuME_0.9.13_x64")
{
    bool raceActive_USA : 0xAC71631;
    uint racePlacement_sanFranStreets_USA : 0xAC35CE8;
}

init
{
    vars.trackNames = new List<string> {
        "San Fran Streets",
        "London Rails",
        "Chicago Carnage",
        "Brooklyn Nights",
        "Coastal Cruise",
        "The Gauntlet",
        "Retail Racing",
        "Backyard Battle",
        "Mall Madness",
        "Factory Fury",
        "California Clash",
        "Detroit Districts",
        "Warehouse War",
        "Construction Pit",
        "Roadworks Rumble",
        "Boston Battle",
        "Stadium Circuit",
        "Shopping Precinct",
        "Stadium Standoff",

        "Detroit",
        "Minneapolis",
        "Orlando Race",
        "Houston",
        "Orlando",
        "San Diego Race",
        "Miami",
        "St. Louis",
        "Houston Race",
        "San Diego",
        "Oakland",
        "Detroit Race",
        "San Antonio",
        "Tacoma",
        "Miami Race",
        "Oakland 2",
        "Indianapolis",
        "Minneapolis Race",
        "St. Louis 2",
        "New Orleans",
        "Las Vegas Race",
        "Las Vegas"
    };
}

start
{
    return current.raceActive_USA && !old.raceActive_USA;
}

split
{
    if (!current.raceActive_USA && old.raceActive_USA)
    {
        vars.split++;
        return true;
    }
}

startup
{
    print(":3");
}
