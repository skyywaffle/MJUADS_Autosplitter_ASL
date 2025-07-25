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

// Enumerations representing the game's region and every different track in the game.
enum GameRegion {
    USA,
    EUR
}

enum Track {
    // Speedster tracks
    SAN_FRAN_STREETS,
    LONDON_RAILS,
    CHICAGO_CRUISE,
    BROOKLYN_NIGHTS,
    COASTAL_CRUISE,
    THE_GAUNTLET,
    RETAIL_RACING,
    BACKYARD_BATTLE,
    MALL_MADNESS,
    FACTORY_FURY,
    CALIFORNIA_CLASH,
    DETROIT_DISTRICTS,
    WAREHOUSE_WAR,
    CONSTRUCTION_PIT,
    ROADWORKS_RUMBLE,
    BOSTON_BATTLE,
    STADIUM_CIRCUIT,
    SHOPPING_PRECINCT,
    STADIUM_STANDOFF,

    // World Series tracks
    DETROIT_FREESTYLE,
    MINNEAPOLIS_FREESTYLE,
    ORLANDO_RACE,
    HOUSTON_FREESTYLE,
    ORLANDO_FREESTYLE,
    SAN_DIEGO_RACE,
    MIAMI_FREESTYLE,
    ST_LOUIS_1_FREESTYLE,
    HOUSTON_RACE,
    SAN_DIEGO_FREESTYLE,
    OAKLAND_1_FREESTYLE,
    DETROIT_RACE,
    SAN_ANTONIO_FREESTYLE,
    TACOMA_FREESTYLE,
    MIAMI_RACE,
    OAKLAND_2_FREESTYLE,
    INDIANAPOLIS_FREESTYLE,
    MINNEAPOLIS_RACE,
    ST_LOUIS_2_FREESTYLE,
    NEW_ORLEANS_FREESTYLE,
    LAS_VEGAS_RACE,
    LAS_VEGAS_FREESTYLE
}


state("DeSmuME_0.9.13_x64.exe")
{
    
}
