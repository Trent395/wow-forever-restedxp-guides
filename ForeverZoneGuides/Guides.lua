-- Forever Zone Guides: RestedXP guides for WoW Forever's new zones.
--
-- Riverglades (uiMap 2548, area 16591) for the Horde, in two parts: 36-40 (Rog'mar and the
-- south and west) and 40-44 (Sunnyglade's caves, Bolder'ok, Powderfuse Port, Twilight's Shroud
-- and Krol'dok Stronghold). RestedXP 4.11.22 ships no Riverglades guide.
--
-- Sources (gathered 2026-11-15): quest list, text, givers, finishers and quest levels from
-- Wowhead's Forever database (zone 16591, 111 Horde-visible quests); giver coordinates and
-- prerequisites from AllTheThings' Forever ("Camelot") database; where the mobs and NPCs stand
-- from Questie's Forever database (median of each mob's spawns); subzone positions from the
-- game's own map overlays (our UnexploredAreas data); the Rog'mar flight master's routes from
-- our KnownFlightPaths data; the ways into the zone from the timesaver.gg Riverglades guide.
-- Where no database has a mob's spawns yet (Glade Vipers, the Wildplains lions, Snargl, the
-- Cinderscale dragonkin, the caves under Sunnyglade, Klunk, Jom-jom, Old Rot-Chum, Captain
-- Bentcoin, Executioner Morg, Overlord Kilgar, Admiral Lamora), the step names the subzone and
-- says so instead of drawing an arrow that could be wrong.
--
-- Format: RestedXP guide syntax (RXPGuides, https://github.com/RestedXP/RXPGuides). The zone has
-- no name in RestedXP's map table, so every waypoint uses the map ID (".goto 2548,x,y"), the way
-- RestedXP's own Skyborne guide does for Zephras Isle (2521). Rog'mar is not in RestedXP's
-- flight table either, so the flight path is a plain "talk to Grakna" step, not ".fp".
-- Text must not contain "<<" (RestedXP reads it as a class/faction tag) except in headers.

ForeverZoneGuides = ForeverZoneGuides or {}
local FZG = ForeverZoneGuides
FZG.VERSION = "1.0.0"

local TALK = "|Tinterface/worldmap/chatbubble_64grey.blp:20|t"

FZG.GUIDES = {}

FZG.GUIDES.riverglades1 = [[
#forever
<< Horde
#name 36-40 Riverglades
#version 1
#group Forever Zone Guides
#next 40-44 Riverglades

step
    .goto Tanaris,52.4,27.8
    >>|cRXP_WARN_Kalimdor:|r {talk}Talk to |cRXP_FRIENDLY_Innkeeper Fizzgrimble|r in Gadgetzan. Coming from the Eastern Kingdoms? Skip the next two steps
    .accept 95144 >>Accept Overseas Delivery
    .target Innkeeper Fizzgrimble
    .zoneskip 2548
step
    .goto Tanaris,67.5,23.0
    >>|cRXP_WARN_Kalimdor:|r go to Steamwheedle Port east of Gadgetzan (|cRXP_FRIENDLY_Wharfmaster Steamfizzle|r stands at the dock) and take the boat to |cRXP_WARN_Powderfuse Port|r in the Riverglades
    .zone 2548 >>Sail to the Riverglades
step
    .goto Stranglethorn Vale,32.2,28.8
    >>|cRXP_WARN_Eastern Kingdoms, optional:|r {talk}Talk to |cRXP_FRIENDLY_Commander Aggro'gosh|r at Grom'gol if you pass it
    .accept 95141 >>Accept Report to Rog'mar
    .target Commander Aggro'gosh
    .zoneskip 2548
step
    .goto Arathi Highlands,74.6,36.4
    >>|cRXP_WARN_Eastern Kingdoms, optional:|r {talk}Talk to |cRXP_FRIENDLY_Tor'gan|r at Hammerfall if you pass it
    .accept 95143 >>Accept Finding Tan'jani
    .target Tor'gan
    .zoneskip 2548
step
    >>|cRXP_WARN_Eastern Kingdoms:|r fly to Kargath in the Badlands and follow the land connection into the Riverglades north of Twilight's Shroud, or come in from Redridge Mountains through Redridge Pass. |cRXP_WARN_Twilight's Shroud is full of hostile Twilight's Hammer: go around it and head east to Rog'mar|r
    .zone 2548 >>Travel to the Riverglades
step
    .goto 2548,77.0,52.8
    >>{talk}Talk to |cRXP_FRIENDLY_Friz Frazzlespark|r on the Powderfuse Port docks
    .turnin 95144 >>Turn in Overseas Delivery
    .target Friz Frazzlespark
    .isOnQuest 95144
step
    .goto 2548,77.0,52.8
    >>{talk}Talk to |cRXP_FRIENDLY_Friz Frazzlespark|r
    .accept 95062 >>Accept Frazzlespark's Crate
    .target Friz Frazzlespark
    .isQuestTurnedIn 95144
step
    .goto 2548,59.6,45.1
    >>Follow the road west to Rog'mar, the Horde town in the middle of the zone. {talk}Talk to |cRXP_FRIENDLY_Grakna|r and get the flight path (it links to Hammerfall, Kargath, Stonard and Flame Crest)
    .target Grakna
step
    .goto 2548,58.0,45.0
    >>{talk}Talk to |cRXP_FRIENDLY_Innkeeper Toka|r
    .home 16743 >>Set your Hearthstone to Rog'mar
    .target Innkeeper Toka
step
    .goto 2548,59.4,45.4
    >>{talk}Talk to |cRXP_FRIENDLY_Krom'rosh|r
    .turnin -95062 >>Turn in Frazzlespark's Crate
    .turnin -95141 >>Turn in Report to Rog'mar
    .accept 93786 >>Accept A Message in Blood
    .accept 94483 >>Accept Show Them How It's Done
    .target Krom'rosh
step
    .goto 2548,59.8,46.0
    >>{talk}Talk to |cRXP_FRIENDLY_Kreza Darkthorn|r
    .accept 93788 >>Accept Borrowed Blades
    .accept 94535 >>Accept Bristle Hills Bandits
    .target Kreza Darkthorn
step
    .goto 2548,60.4,47.8
    >>{talk}Talk to |cRXP_FRIENDLY_Neza Bloodsnout|r
    .accept 94532 >>Accept Gnoll Infestation
    .accept 96107 >>Accept Feathers for Fletching
    .accept 94533 >>Accept Snargl's Snout
    .target Neza Bloodsnout
step
    .goto 2548,58.2,45.2
    >>{talk}Talk to |cRXP_FRIENDLY_Tan'jani|r
    .turnin -95143 >>Turn in Finding Tan'jani
    .accept 95951 >>Accept Fetch 'n' Fletch
    .target Tan'jani
step
    .goto 2548,59.4,44.0
    >>{talk}Talk to |cRXP_FRIENDLY_Tran'gul|r
    .accept 94672 >>Accept Encroaching Twilight
    .accept 94680 >>Accept Twilight Missives
    .target Tran'gul
step
    .goto 2548,61.6,58.8
    >>Go south from Rog'mar and click the |cRXP_PICK_Picked Carcass|r
    .accept 96103 >>Accept A Feast for Buzzards
    .target Picked Carcass
step
    #label Buzzards
    .goto 2548,67.3,65.3
    >>Kill |cRXP_ENEMY_Low Plains Buzzards|r east of here for their |cRXP_LOOT_Plains Buzzard Feathers|r
    .complete 96107,1 --Plains Buzzard Feather (6)
    .mob Low Plains Buzzard
step
    .goto 2548,52.0,69.6
    >>Cross the river south-west. Kill |cRXP_ENEMY_Farholde Scout Trainees|r here and |cRXP_ENEMY_Farholde Priest Initiates|r a little west (around 46,66). |cRXP_WARN_Stay out of Farholde Keep (66,82): its guards are level 55|r
    .complete 94483,1 --Farholde Priest (8)
    .mob Farholde Priest Initiate
    .complete 94483,2 --Farholde Scout (12)
    .mob Farholde Scout Trainee
step
    .goto 2548,45.4,79.0
    >>Kill |cRXP_ENEMY_Meadowsbrook Farmhands|r on the Meadowsbrook farm. |cRXP_WARN_Level 45 Alliance cavalry patrols east of the farm (58-61,75-80)|r
    .complete 93786,1 --Meadowsbrook Farmhand (12)
    .mob Meadowsbrook Farmhand
step
    .goto 2548,42.2,58.2
    >>Go north to Turner's Logging Camp. Kill |cRXP_ENEMY_Turner's Mill Lumberjacks|r and |cRXP_ENEMY_Woodworkers|r for |cRXP_LOOT_Woodworker's Axes|r
    .complete 93788,1 --Woodworker's Axe (10)
    .mob Turner's Mill Lumberjack
    .mob Woodworker
step
    .goto 2548,41.2,61.4
    >>Click |cRXP_PICK_Peasant Woodpiles|r around the camp for Wood Bundles, then use the bundles to fletch them into spears
    .complete 95951,1 --Makeshift Stickin' Spear (20)
step
    #label Gnolls
    .goto 2548,20.5,67.2
    >>Go west to the Bristle Hills. Kill |cRXP_ENEMY_Redridge Mystics|r, |cRXP_ENEMY_Trappers|r and |cRXP_ENEMY_Brutes|r. Every gnoll here can drop |cRXP_LOOT_Stolen Ore|r
    .complete 94532,1 --Redridge Mystic (8)
    .mob Redridge Mystic
    .complete 94532,2 --Redridge Trapper (8)
    .mob Redridge Trapper
    .complete 94532,3 --Redridge Brute (6)
    .mob Redridge Brute
    .complete 94535,1 --Stolen Ore (40)
    .mob Redridge Scout
step
    .goto 2548,21.6,70.5,0,0
    >>Find and kill |cRXP_ENEMY_Snargl|r in the Bristle Hills and loot his |cRXP_LOOT_Snout|r. |cRXP_WARN_No database has his spawn yet: search the gnoll camps|r
    .complete 94533,1 --Snargl's Snout (1)
    .unitscan Snargl
step
    .goto 2548,47.4,51.2
    >>Go back north-east to Sunnyglade. {talk}Talk to |cRXP_FRIENDLY_Fuzzle|r
    .accept 94961 >>Accept Biting the Hand
    .target Fuzzle
step
    .goto 2548,45.6,45.6
    >>Kill |cRXP_ENEMY_Twilight Raiders|r and |cRXP_ENEMY_Twilight Neophytes|r in Sunnyglade. Loot |cRXP_LOOT_Twilight Finger Bones|r from every Twilight cultist (you can finish them in the next guide)
    .complete 94672,1 --Twilight Raider (8)
    .mob Twilight Raider
    .complete 94672,2 --Twilight Neophyte (8)
    .mob Twilight Neophyte
step
    .goto 2548,45.2,56.0
    >>Kill |cRXP_ENEMY_Twilight Shadowmancers|r in the south of Sunnyglade for |cRXP_LOOT_Twilight Missives|r
    .complete 94680,1 --Twilight Missive (3)
    .mob Twilight Shadowmancer
step
    .goto 2548,59.4,44.0
    >>Return to Rog'mar. {talk}Talk to |cRXP_FRIENDLY_Tran'gul|r
    .turnin 94672 >>Turn in Encroaching Twilight
    .turnin 94680 >>Turn in Twilight Missives
    .accept 94727 >>Accept Digging for Answers
    .target Tran'gul
step
    .goto 2548,59.4,45.4
    >>{talk}Talk to |cRXP_FRIENDLY_Krom'rosh|r
    .turnin 93786 >>Turn in A Message in Blood
    .turnin 94483 >>Turn in Show Them How It's Done
    .accept 93787 >>Accept Food for the Taking
    .target Krom'rosh
step
    .goto 2548,59.8,46.0
    >>{talk}Talk to |cRXP_FRIENDLY_Kreza Darkthorn|r
    .turnin 93788 >>Turn in Borrowed Blades
    .turnin 94535 >>Turn in Bristle Hills Bandits
    .accept 93976 >>Accept The Goblin Trader
    .target Kreza Darkthorn
step
    .goto 2548,60.4,47.8
    >>{talk}Talk to |cRXP_FRIENDLY_Neza Bloodsnout|r
    .turnin 94532 >>Turn in Gnoll Infestation
    .turnin 94533 >>Turn in Snargl's Snout
    .turnin 96107 >>Turn in Feathers for Fletching
    .turnin 96103 >>Turn in A Feast for Buzzards
    .accept 96108 >>Accept Poison Tips
    .accept 96104 >>Accept Song of the Strider
    .target Neza Bloodsnout
step
    .goto 2548,58.2,45.2
    >>{talk}Talk to |cRXP_FRIENDLY_Tan'jani|r
    .turnin 95951 >>Turn in Fetch 'n' Fletch
    .accept 95955 >>Accept Stick 'Em
    .target Tan'jani
step
    .goto 2548,58.8,43.2
    >>Use the spears on |cRXP_ENEMY_Freshwater Crocolisks|r along the river at Rog'mar
    .complete 95955,1 --Freshwater Crocolisk impaled (10)
    .mob Freshwater Crocolisk
    .use 271639
step
    .goto 2548,58.2,45.2
    >>{talk}Talk to |cRXP_FRIENDLY_Tan'jani|r
    .turnin 95955 >>Turn in Stick 'Em
    .target Tan'jani
step
    .goto 2548,66.2,60.1
    >>Go south-east again. Kill |cRXP_ENEMY_Roving Tallstriders|r for an |cRXP_LOOT_Intact Tallstrider Beak|r
    .complete 96104,1 --Intact Tallstrider Beak (1)
    .mob Roving Tallstrider
step
    >>Kill |cRXP_ENEMY_Glade Vipers|r for |cRXP_LOOT_Glade Viper Venom|r. |cRXP_WARN_No database has their spawns yet: kill them wherever you meet them|r
    .complete 96108,1 --Glade Viper Venom (4)
    .mob Glade Viper
step
    .goto 2548,45.4,80.0
    >>Go back to Meadowsbrook and click |cRXP_PICK_Feed Satchels|r on the Alliance farm
    .complete 93787,1 --Feed Satchel (6)
step
    #completewith next
    .hs >>Hearth to Rog'mar
    .use 6948
    .bindlocation 16743,1
step
    .goto 2548,59.4,45.4
    >>{talk}Talk to |cRXP_FRIENDLY_Krom'rosh|r
    .turnin 93787 >>Turn in Food for the Taking
    .accept 94480 >>Accept A Gift From Our Enemies
    .target Krom'rosh
step
    .goto 2548,58.6,44.5
    >>{talk}Talk to |cRXP_FRIENDLY_Gorg|r
    .turnin 94480 >>Turn in A Gift From Our Enemies
    .accept 94481 >>Accept A Serving of Strength
    .target Gorg
step
    .goto 2548,60.4,47.8
    >>{talk}Talk to |cRXP_FRIENDLY_Neza Bloodsnout|r
    .turnin 96104 >>Turn in Song of the Strider
    .turnin 96108 >>Turn in Poison Tips
    .accept 96105 >>Accept King of the Wild Plains
    .accept 96109 >>Accept A Hunter's Quiver
    .target Neza Bloodsnout
step
    .goto 2548,60.1,36.4
    >>Go north to the training grounds and feed the |cRXP_FRIENDLY_Rog'mar Trainees|r
    .complete 94481,1 --Rog'mar Trainee fed (8)
    .target Rog'mar Trainee
    .use 265066
step
    .goto 2548,58.6,44.5
    >>{talk}Talk to |cRXP_FRIENDLY_Gorg|r
    .turnin 94481 >>Turn in A Serving of Strength
    .target Gorg
step
    >>Kill |cRXP_ENEMY_Wildplains Patriarchs|r and |cRXP_ENEMY_Wildplains Huntresses|r for |cRXP_LOOT_Prized Lion Hides|r, then use the |cRXP_WARN_Tallstrider Call|r out on the plains to bring out |cRXP_ENEMY_Ombassa|r, the pride's leader. |cRXP_WARN_No database has the lions' spawns yet: skip this step if you can't find them|r
    .complete 96109,1 --Prized Lion Hide (6)
    .mob Wildplains Patriarch
    .mob Wildplains Huntress
    .complete 96105,1 --Ombassa's hide (1)
    .use 271779
    .mob Ombassa
step
    .goto 2548,60.4,47.8
    >>{talk}Talk to |cRXP_FRIENDLY_Neza Bloodsnout|r
    .turnin -96109 >>Turn in A Hunter's Quiver
    .turnin -96105 >>Turn in King of the Wild Plains
    .target Neza Bloodsnout
]]

FZG.GUIDES.riverglades2 = [[
#forever
<< Horde
#name 40-44 Riverglades
#version 1
#group Forever Zone Guides

step
    .goto 2548,59.5,47.0
    >>In Rog'mar, read the two |cRXP_PICK_Wanted|r posters by the flight master
    .accept 95992 >>Accept WANTED: Ghostmaw
    .accept 95882 >>Accept WANTED: Scoutmaster Vargas
step
    .goto 2548,49.8,47.0
    >>Go west to Sunnyglade. {talk}Talk to |cRXP_FRIENDLY_Clubtoe|r, the ogre among the Twilight's Hammer miners
    .turnin 94727 >>Turn in Digging for Answers
    .accept 95602 >>Accept Sickening Lights
    .target Clubtoe
step
    .goto 2548,49.8,47.0
    >>{talk}Talk to |cRXP_FRIENDLY_Clubtoe|r again. |cRXP_WARN_AllTheThings lists Clugfist's Might Makes Right (Bolder'ok) as needed first: skip this step if he does not offer it|r
    .accept 95417 >>Accept The Purple Ones
    .target Clubtoe
step
    >>Go down into the caves beneath Sunnyglade. {talk}Talk to the |cRXP_FRIENDLY_Twilight Brute|r inside. |cRXP_WARN_No database has the cave entrance yet|r
    .turnin -95417 >>Turn in The Purple Ones
    .accept 95601 >>Accept The Purple Ones
    .target Twilight Brute
step
    >>In the caves, kill |cRXP_ENEMY_Empowered Brutes|r and |cRXP_ENEMY_Twilight Ritualists|r and destroy the |cRXP_PICK_Twilight Ritual Circles|r. Keep looting |cRXP_LOOT_Twilight Finger Bones|r
    .complete 95601,1 --Empowered Brute (5)
    .mob Empowered Brute
    .complete 95601,2 --Twilight Ritualist (10)
    .mob Twilight Ritualist
    .complete 95602,1 --Twilight Ritual Circle destroyed (5)
step
    .goto 2548,49.8,47.0
    >>{talk}Talk to |cRXP_FRIENDLY_Clubtoe|r
    .turnin 95601 >>Turn in The Purple Ones
    .turnin 95602 >>Turn in Sickening Lights
    .accept 95427 >>Accept Twilight No More!
    .target Clubtoe
step
    >>Kill |cRXP_ENEMY_Chogg'Zac|r, the two-headed ogre in the Sunnyglade cave, and loot both heads
    .complete 95427,1 --Head of Chogg (1)
    .complete 95427,2 --Head of Zac (1)
    .mob Chogg'Zac
step
    >>Finish the |cRXP_LOOT_Twilight Finger Bones|r on the Twilight cultists in Sunnyglade and its caves
    .complete 94961,1 --Twilight Finger Bone (20)
    .mob Twilight Neophyte
    .mob Twilight Raider
    .mob Twilight Shadowmancer
step
    .goto 2548,49.8,47.0
    >>{talk}Talk to |cRXP_FRIENDLY_Clubtoe|r
    .turnin 95427 >>Turn in Twilight No More!
    .accept 95418 >>Accept Spread the Word
    .target Clubtoe
step
    .goto 2548,47.4,51.2
    >>{talk}Talk to |cRXP_FRIENDLY_Fuzzle|r
    .turnin 94961 >>Turn in Biting the Hand
    .accept 94963 >>Accept Biting the Hand
    .target Fuzzle
step
    >>Follow |cRXP_FRIENDLY_Fuzzle|r to |cRXP_PICK_Fuzzle's Treasure|r and click it. |cRXP_WARN_No database has where it lies yet|r
    .turnin 94963 >>Turn in Biting the Hand
step
    .goto 2548,59.4,44.0
    >>Return to Rog'mar. {talk}Talk to |cRXP_FRIENDLY_Tran'gul|r
    .turnin 95418 >>Turn in Spread the Word
    .accept 95420 >>Accept Land of Giants
    .accept 94972 >>Accept Tome of Twilight
    .target Tran'gul
step
    .goto 2548,59.4,45.4
    >>{talk}Talk to |cRXP_FRIENDLY_Krom'rosh|r
    .accept 94968 >>Accept Eye of Mugg
    .target Krom'rosh
step
    .goto 2548,64.5,14.8
    >>Go north to Bolder'ok, the ogre town that broke with the Twilight's Hammer. {talk}Talk to |cRXP_FRIENDLY_Clugfist|r
    .turnin 95420 >>Turn in Land of Giants
    .accept 95424 >>Accept Might Makes Right
    .accept 95425 >>Accept Unworthy Champion
    .accept 94668 >>Accept Bloodmaster's Ring
    .accept 95428 >>Accept Clugfist's Decree
    .target Clugfist
step
    .goto 2548,65.6,21.4
    >>{talk}Talk to |cRXP_FRIENDLY_Jezap Jinglesprocket|r at the Bloodmaster's Ring. |cRXP_WARN_Pay to Play asks for a safety deposit in gold|r
    .turnin 94668 >>Turn in Bloodmaster's Ring
    .accept 94669 >>Accept Pay to Play
    .turnin 94669 >>Turn in Pay to Play
    .accept 94670 >>Accept Bloodmaster's Ring
    .target Jezap Jinglesprocket
step
    .goto 2548,65.6,21.4
    >>Defeat |cRXP_ENEMY_Buzzbeak|r in the ring
    .complete 94670,1 --Defeat Buzzbeak
    .mob Buzzbeak
step
    .goto 2548,65.6,21.4
    >>{talk}Talk to |cRXP_FRIENDLY_Jezap Jinglesprocket|r
    .turnin 94670 >>Turn in Bloodmaster's Ring
    .accept 94739 >>Accept Bloodmaster's Ring
    .target Jezap Jinglesprocket
step
    .goto 2548,65.6,21.4
    >>Defeat |cRXP_ENEMY_Kronk|r in the ring
    .complete 94739,1 --Defeat Kronk
    .mob Kronk
step
    .goto 2548,65.6,21.4
    >>{talk}Talk to |cRXP_FRIENDLY_Jezap Jinglesprocket|r
    .turnin 94739 >>Turn in Bloodmaster's Ring
    .accept 94962 >>Accept Bloodmaster's Ring
    .target Jezap Jinglesprocket
step
    .goto 2548,65.6,21.4
    >>Defeat |cRXP_ENEMY_Bonegnaw|r in the ring
    .complete 94962,1 --Defeat Bonegnaw
    .mob Bonegnaw
step
    .goto 2548,65.6,21.4
    >>{talk}Talk to |cRXP_FRIENDLY_Jezap Jinglesprocket|r. The next fight is level 43: take it now or after the coast
    .turnin 94962 >>Turn in Bloodmaster's Ring
    .accept 94964 >>Accept Bloodmaster's Ring
    .target Jezap Jinglesprocket
step
    .goto 2548,69.6,25.8
    >>{talk}Talk to |cRXP_FRIENDLY_Gorgegut|r
    .accept 95183 >>Accept Step One: Rock
    .target Gorgegut
step
    .goto 2548,70.6,28.0
    >>{talk}Talk to |cRXP_FRIENDLY_Na'zok|r at his farm
    .accept 95163 >>Accept Drive Them Back
    .accept 95162 >>Accept Paletusk Harvesting
    .target Na'zok
step
    #completewith Paletusks
    >>Pick up |cRXP_LOOT_Good Rocks|r as you go. |cRXP_WARN_No database has where they lie yet|r
    .complete 95183,1 --Good Rock (10)
step
    #label Paletusks
    .goto 2548,76.7,39.0
    >>Go east. Use the item from Na'zok on |cRXP_ENEMY_Young Paletusks|r to drive them back to his farm, and kill paletusks for |cRXP_LOOT_Chunks of Boar Meat|r
    .complete 95163,1 --Young Paletusk returned (10)
    .use 268521
    .mob Young Paletusk
    .complete 95162,1 --Chunk of Boar Meat (10)
step
    .goto 2548,75.5,30.6
    >>Go north to the Twilight camp near Windstead. Kill |cRXP_ENEMY_Twilight Maulers|r and |cRXP_ENEMY_Twilight Firecallers|r
    .complete 95424,1 --Twilight Mauler (7)
    .mob Twilight Mauler
    .complete 95424,2 --Twilight Firecaller (7)
    .mob Twilight Firecaller
step
    .goto 2548,75.1,34.1
    >>Kill |cRXP_ENEMY_Scoutmaster Vargas|r just south of the camp and loot his eye
    .complete 95882,1 --Scoutmaster's Eye (1)
    .mob Scoutmaster Vargas
step
    >>Kill |cRXP_ENEMY_Klunk|r and take |cRXP_LOOT_Skullthumper|r for Clugfist. |cRXP_WARN_No database has Klunk's spawn yet: skip this step if you can't find him|r
    .complete 95425,1 --Skullthumper (1)
    .unitscan Klunk
step
    .goto 2548,70.6,28.0
    >>{talk}Talk to |cRXP_FRIENDLY_Na'zok|r
    .turnin 95163 >>Turn in Drive Them Back
    .turnin 95162 >>Turn in Paletusk Harvesting
    .target Na'zok
step
    .goto 2548,67.2,21.6
    >>{talk}Talk to |cRXP_FRIENDLY_Hamur|r if you found the Good Rocks
    .turnin -95183,1 >>Turn in Step One: Rock
    .target Hamur
step
    .goto 2548,67.2,21.6
    >>{talk}Talk to |cRXP_FRIENDLY_Hamur|r
    .accept 96026 >>Accept Step Two: More Rock
    .target Hamur
    .isQuestTurnedIn 95183
step
    .goto 2548,64.5,14.8
    >>{talk}Talk to |cRXP_FRIENDLY_Clugfist|r
    .turnin 95424 >>Turn in Might Makes Right
    .turnin -95425 >>Turn in Unworthy Champion
    .target Clugfist
step
    .goto 2548,77.0,52.8
    >>Go south-east to Powderfuse Port. {talk}Talk to |cRXP_FRIENDLY_Friz Frazzlespark|r
    .turnin 93976 >>Turn in The Goblin Trader
    .accept 95288 >>Accept Smuggler's Paradise
    .target Friz Frazzlespark
step
    .goto 2548,78.8,54.2
    >>{talk}Talk to |cRXP_FRIENDLY_Fimbo Greasemitz|r
    .accept 95121 >>Accept A Taste of the Sea
    .target Fimbo Greasemitz
step
    .goto 2548,79.4,52.6
    >>{talk}Talk to |cRXP_FRIENDLY_Wharfmaster Whizzbuzz|r
    .turnin -97332 >>Turn in Twice Misplaced Trust
    .accept 95118 >>Accept Saltwater Savages
    .accept 95119 >>Accept Unfriendly Competition
    .accept 95122 >>Accept Unchecked Expansion
    .accept 95123 >>Accept A Blast Ye Scurvy Dogs!
    .target Wharfmaster Whizzbuzz
step
    .goto 2548,79.9,52.4
    >>{talk}Talk to |cRXP_FRIENDLY_Argo Brinewhistle|r
    .accept 95261 >>Accept It Takes Guts
    .target Argo Brinewhistle
step
    .goto 2548,78.5,53.9
    >>Read the |cRXP_PICK_Wanted|r poster on the docks
    .accept 95254 >>Accept WANTED: Trapclaw
    .accept 95120 >>Accept WANTED: Old Rot-Chum
step
    .goto 2548,80.8,53.3
    >>Kill |cRXP_ENEMY_Trapclaw|r just east of the port and loot his pincer
    .complete 95254,1 --Trapclaw's Pincer (1)
    .mob Trapclaw
step
    #completewith Murlocs
    >>Kill beasts on the way for |cRXP_LOOT_Beast Entrails|r and pick |cRXP_LOOT_Rotflesh Mushrooms|r. |cRXP_WARN_No database says which beasts drop the entrails or where the mushrooms grow yet|r
    .complete 95261,1 --Beast Entrails (15)
    .complete 95261,2 --Rotflesh Mushroom (8)
step
    .goto 2548,73.8,60.4
    >>Go south along the shore. Kill |cRXP_ENEMY_Sand Crawlers|r for |cRXP_LOOT_Sand Crawler Meat|r
    .complete 95121,2 --Sand Crawler Meat (6)
    .mob Sand Crawler
step
    .goto 2548,72.3,61.8
    >>Click the |cRXP_PICK_Painted Hide|r
    .accept 95260 >>Accept Terrors From the Deep
step
    #label Murlocs
    .goto 2548,76.5,69.7
    >>Kill |cRXP_ENEMY_Murloc Oracles|r and |cRXP_ENEMY_Murloc Warriors|r on the shore to the south for |cRXP_LOOT_Murloc Eyes|r
    .complete 95118,1 --Murloc Oracle (8)
    .mob Murloc Oracle
    .complete 95118,2 --Murloc Warrior (8)
    .mob Murloc Warrior
    .complete 95121,1 --Murloc Eye (12)
step
    >>Kill |cRXP_ENEMY_Old Rot-Chum|r and take proof of his death. |cRXP_WARN_No database has his spawn yet: skip this step if you can't find him|r
    .complete 95120,1 --Proof of Old Rot-Chum's demise (1)
    .unitscan Old Rot-Chum
step
    .goto 2548,78.8,54.2
    >>Return to Powderfuse Port. {talk}Talk to |cRXP_FRIENDLY_Fimbo Greasemitz|r
    .turnin 95121 >>Turn in A Taste of the Sea
    .turnin 95254 >>Turn in WANTED: Trapclaw
    .target Fimbo Greasemitz
step
    .goto 2548,79.4,52.6
    >>{talk}Talk to |cRXP_FRIENDLY_Wharfmaster Whizzbuzz|r
    .turnin 95118 >>Turn in Saltwater Savages
    .turnin -95120 >>Turn in WANTED: Old Rot-Chum
    .target Wharfmaster Whizzbuzz
step
    .goto 2548,79.9,52.4
    >>{talk}Talk to |cRXP_FRIENDLY_Argo Brinewhistle|r
    .turnin 95260 >>Turn in Terrors From the Deep
    .turnin -95261,1 >>Turn in It Takes Guts
    .accept 95267 >>Accept The Monster Surfaces
    .target Argo Brinewhistle
step
    >>Use the |cRXP_WARN_Big Ball o' Bait|r at the water's edge to lure out the sea monster, kill it and loot its head
    .complete 95267,1 --Sea monster's head (1)
    .use 268647
step
    .goto 2548,84.6,40.9
    >>Go north up the Eastwind Shore to the Eastsea pirates. Kill |cRXP_ENEMY_Eastsea Buccaneers|r and |cRXP_ENEMY_Eastsea Musketeers|r, and loot |cRXP_LOOT_Smuggled Goods|r
    .complete 95119,1 --Eastsea Buccaneer (10)
    .mob Eastsea Buccaneer
    .complete 95119,2 --Eastsea Musketeer (10)
    .mob Eastsea Musketeer
    .complete 95288,1 --Smuggled Goods (8)
step
    .goto 2548,82.9,36.7
    >>Kill |cRXP_ENEMY_Eastsea Raiders|r and |cRXP_ENEMY_Eastsea Bombardiers|r and take |cRXP_PICK_Eastsea Powder Kegs|r
    .complete 95122,1 --Eastsea Raider (8)
    .mob Eastsea Raider
    .complete 95122,2 --Eastsea Bombardier (8)
    .mob Eastsea Bombardier
    .complete 95123,1 --Eastsea Powder Keg (5)
step
    .goto 2548,91.2,39.6
    >>{talk}Talk to |cRXP_FRIENDLY_Captain Haynes|r at the far end of the shore
    .accept 95294 >>Accept Smuggler's Bargain
    .target Captain Haynes
step
    .goto 2548,77.0,52.8
    >>Return to Powderfuse Port. {talk}Talk to |cRXP_FRIENDLY_Friz Frazzlespark|r
    .turnin 95288 >>Turn in Smuggler's Paradise
    .turnin 95294 >>Turn in Smuggler's Bargain
    .accept 95293 >>Accept Smuggler's Special
    .target Friz Frazzlespark
step
    .goto 2548,79.4,52.6
    >>{talk}Talk to |cRXP_FRIENDLY_Wharfmaster Whizzbuzz|r
    .turnin 95119 >>Turn in Unfriendly Competition
    .turnin 95122 >>Turn in Unchecked Expansion
    .turnin 95123 >>Turn in A Blast Ye Scurvy Dogs!
    .accept 95165 >>Accept See Ya, Scallywags!
    .accept 95124 >>Accept Admiral Lamora
    .target Wharfmaster Whizzbuzz
step
    .goto 2548,79.9,52.4
    >>{talk}Talk to |cRXP_FRIENDLY_Argo Brinewhistle|r
    .turnin 95267 >>Turn in The Monster Surfaces
    .target Argo Brinewhistle
step
    .goto 2548,85.8,36.5
    >>Back north at the Eastsea pirates, use the charges to plant one on each of their three boats. |cRXP_WARN_No database has the boats yet: look along the pirates' shore|r
    .complete 95165,1 --First boat (1)
    .complete 95165,2 --Second boat (1)
    .complete 95165,3 --Third boat (1)
    .use 268505
step
    >>|cRXP_WARN_Level 45, bring help or skip:|r kill |cRXP_ENEMY_Admiral Lamora|r and find his stash. |cRXP_WARN_No database has him or the stash yet|r
    .complete 95124,1 --Admiral Lamora (1)
    .complete 95124,2 --Lamora's stash (1)
    .mob Admiral Lamora
step
    >>Deliver the Friz Special to |cRXP_FRIENDLY_Captain Bentcoin|r on the Eastwind Shore. |cRXP_WARN_No database has him yet: skip this step if you can't find him|r
    .turnin 95293 >>Turn in Smuggler's Special
    .target Captain Bentcoin
step
    .goto 2548,79.4,52.6
    >>{talk}Talk to |cRXP_FRIENDLY_Wharfmaster Whizzbuzz|r
    .turnin 95165 >>Turn in See Ya, Scallywags!
    .turnin -95124 >>Turn in Admiral Lamora
    .target Wharfmaster Whizzbuzz
step
    .goto 2548,68.2,48.7
    >>Head west toward Rog'mar. {talk}Talk to |cRXP_FRIENDLY_Sleebo Fizzlespout|r on the way
    .accept 96063 >>Accept Gaseous Gold
    .accept 96067 >>Accept Rock 'em and Sock 'em
    .target Sleebo Fizzlespout
step
    .goto 2548,68.2,48.7
    >>Help Sleebo test his creation and gather |cRXP_LOOT_Marsh Gas Vials|r. |cRXP_WARN_No database says where the gas is yet: start around Sleebo|r
    .complete 96067,1 --Help Sleebo (1)
    .complete 96063,1 --Marsh Gas Vial (5)
step
    .goto 2548,68.2,48.7
    >>{talk}Talk to |cRXP_FRIENDLY_Sleebo Fizzlespout|r
    .turnin 96067 >>Turn in Rock 'em and Sock 'em
    .turnin 96063 >>Turn in Gaseous Gold
    .target Sleebo Fizzlespout
step
    >>Kill |cRXP_ENEMY_Ghostmaw|r and loot his fang. |cRXP_WARN_No database has his spawn yet: skip this step if you can't find him|r
    .complete 95992,1 --Ghostmaw's Fang (1)
    .unitscan Ghostmaw
step
    .goto 2548,59.4,45.4
    >>Return to Rog'mar. {talk}Talk to |cRXP_FRIENDLY_Krom'rosh|r
    .turnin 95428 >>Turn in Clugfist's Decree
    .accept 94744 >>Accept The Wayward Warrior
    .target Krom'rosh
step
    .goto 2548,60.4,47.8
    >>{talk}Talk to |cRXP_FRIENDLY_Neza Bloodsnout|r
    .turnin 95882 >>Turn in WANTED: Scoutmaster Vargas
    .target Neza Bloodsnout
step
    .goto 2548,58.2,45.2
    >>{talk}Talk to |cRXP_FRIENDLY_Tan'jani|r
    .turnin -95992 >>Turn in WANTED: Ghostmaw
    .target Tan'jani
step
    .goto 2548,33.4,38.0
    >>Go west into the hills by Twilight's Shroud. {talk}Talk to |cRXP_FRIENDLY_Da'grosh|r
    .turnin 94744 >>Turn in The Wayward Warrior
    .accept 94745 >>Accept Carving a Path
    .accept 94748 >>Accept Break Their Chains
    .accept 95431 >>Accept Rumblings of Discontent
    .accept 94975 >>Accept A Token of Vengeance
    .target Da'grosh
step
    .goto 2548,27.4,37.0
    >>Go into the cave to the west. {talk}Talk to |cRXP_FRIENDLY_Crag'rog|r
    .turnin 95431 >>Turn in Rumblings of Discontent
    .accept 95432 >>Accept Rise Up!
    .target Crag'rog
step
    .goto 2548,27.4,37.0
    >>Recruit |cRXP_FRIENDLY_Ogre Miners|r in the cave
    .complete 95432,1 --Ogre Miner recruited (5)
    .target Ogre Miner
step
    .goto 2548,27.4,37.0
    >>{talk}Talk to |cRXP_FRIENDLY_Crag'rog|r
    .turnin 95432 >>Turn in Rise Up!
    .accept 95433 >>Accept Death to the Executioner
    .target Crag'rog
step
    .goto 2548,32.0,45.0
    >>In Twilight's Shroud, kill |cRXP_ENEMY_Twilight Fanatics|r (east side), |cRXP_ENEMY_Twilight Champions|r (west side) and |cRXP_ENEMY_Twilight Corrupters|r, and free the captured |cRXP_FRIENDLY_Rog'mar Scouts|r. |cRXP_WARN_The Farholde Lookouts just south (29,49) are level 46|r
    .complete 94745,1 --Twilight Fanatic (8)
    .mob Twilight Fanatic
    .complete 94745,2 --Twilight Corrupter (8)
    .mob Twilight Corrupter
    .complete 94745,3 --Twilight Champion (8)
    .mob Twilight Champion
    .complete 94748,1 --Rog'mar Scout rescued (5)
step
    .goto 2548,33.4,38.0
    >>{talk}Talk to |cRXP_FRIENDLY_Da'grosh|r
    .turnin 94745 >>Turn in Carving a Path
    .turnin 94748 >>Turn in Break Their Chains
    .accept 95278 >>Accept It Is Time, Brother...
    .accept 94768 >>Accept Bring Me His Head
    .target Da'grosh
step
    >>|cRXP_WARN_Level 46, bring a group or come back later:|r kill |cRXP_ENEMY_Overlord Kilgar|r and |cRXP_ENEMY_Executioner Morg|r in Twilight's Shroud. |cRXP_WARN_No database has where they stand yet|r
    .complete 94768,1 --Overlord Kilgar's head (1)
    .mob Overlord Kilgar
    .complete 95433,1 --Executioner's Mace (1)
    .mob Executioner Morg
step
    .goto 2548,33.4,38.0
    >>{talk}Talk to |cRXP_FRIENDLY_Da'grosh|r
    .turnin -94768 >>Turn in Bring Me His Head
    .target Da'grosh
step
    .goto 2548,47.5,23.4
    >>|cRXP_WARN_Dungeon, levels 40-45:|r Krol'dok Stronghold is the fortress in the north (around 47,23). Kill |cRXP_ENEMY_Twilight's Hammer|r inside for |cRXP_LOOT_Cultist Ears|r, take the |cRXP_LOOT_Tome of Twilight|r, kill its leader for proof (the Eye of Mugg). If a |cRXP_LOOT_Krol'dok Moulding|r drops, right-click it to start its quest. Skip this step without a group
    .complete 94975,1 --Cultist Ear (15)
    .complete 94972,1 --Tome of Twilight (1)
    .complete 94968,1 --Proof of the leader's demise (1)
step
    .goto 2548,33.4,38.0
    >>{talk}Talk to |cRXP_FRIENDLY_Da'grosh|r
    .turnin -94975 >>Turn in A Token of Vengeance
    .target Da'grosh
step
    .goto 2548,59.4,45.4
    >>Return to Rog'mar. {talk}Talk to |cRXP_FRIENDLY_Krom'rosh|r
    .turnin 95278 >>Turn in It Is Time, Brother...
    .turnin -94968 >>Turn in Eye of Mugg
    .target Krom'rosh
step
    .goto 2548,59.4,44.0
    >>{talk}Talk to |cRXP_FRIENDLY_Tran'gul|r
    .turnin -94972 >>Turn in Tome of Twilight
    .target Tran'gul
step
    .goto 2548,59.8,46.0
    >>On the Krol'dok Moulding quest? {talk}Talk to |cRXP_FRIENDLY_Kreza Darkthorn|r. Key Ingredients needs 4 Thick Leather and 12 Iron Bars (buy them at the Auction House)
    .turnin 94973 >>Turn in Krol'dok Moulding
    .accept 94974 >>Accept Key Ingredients
    .target Kreza Darkthorn
    .isOnQuest 94973
step
    .goto 2548,59.8,46.0
    >>Got the Thick Leather and Iron Bars? {talk}Talk to |cRXP_FRIENDLY_Kreza Darkthorn|r
    .turnin -94974,1 >>Turn in Key Ingredients
    .target Kreza Darkthorn
step
    .goto 2548,65.6,21.4
    >>Go back north to Bolder'ok for the rest of the Bloodmaster's Ring. Defeat |cRXP_ENEMY_Mog'thar|r
    .complete 94964,1 --Defeat Mog'thar
    .mob Mog'thar
step
    .goto 2548,65.6,21.4
    >>{talk}Talk to |cRXP_FRIENDLY_Jezap Jinglesprocket|r
    .turnin 94964 >>Turn in Bloodmaster's Ring
    .accept 94733 >>Accept Our Ogre Friend
    .target Jezap Jinglesprocket
step
    .goto 2548,66.8,17.2
    >>{talk}Talk to |cRXP_FRIENDLY_Gobam|r
    .turnin 94733 >>Turn in Our Ogre Friend
    .accept 94734 >>Accept A Boar's Delight
    .target Gobam
step
    >>Gather |cRXP_LOOT_Sweetberries|r and |cRXP_LOOT_Riverweed|r around Bolder'ok. |cRXP_WARN_No database has where they grow yet|r
    .complete 94734,1 --Sweetberry (8)
    .complete 94734,2 --Riverweed (12)
step
    .goto 2548,66.8,17.2
    >>{talk}Talk to |cRXP_FRIENDLY_Gobam|r
    .turnin 94734 >>Turn in A Boar's Delight
    .accept 94737 >>Accept A Treat for a Friend
    .target Gobam
step
    .goto 2548,65.6,21.4
    >>{talk}Talk to |cRXP_FRIENDLY_Jezap Jinglesprocket|r
    .turnin 94737 >>Turn in A Treat for a Friend
    .accept 94965 >>Accept Bloodmaster's Ring
    .target Jezap Jinglesprocket
step
    .goto 2548,65.6,21.4
    >>Defeat |cRXP_ENEMY_Snufflesnout|r in the ring
    .complete 94965,1 --Defeat Snufflesnout
    .mob Snufflesnout
step
    .goto 2548,65.6,21.4
    >>{talk}Talk to |cRXP_FRIENDLY_Jezap Jinglesprocket|r. The last fight is level 45
    .turnin 94965 >>Turn in Bloodmaster's Ring
    .accept 95063 >>Accept Bloodmaster's Ring
    .target Jezap Jinglesprocket
step
    .goto 2548,65.6,21.4
    >>Defeat |cRXP_ENEMY_Chub'chob|r, Bloodmaster of Bolder'ok
    .complete 95063,1 --Defeat Chub'chob
    .mob Chub'chob
step
    .goto 2548,64.5,14.8
    >>{talk}Talk to |cRXP_FRIENDLY_Clugfist|r
    .turnin 95063 >>Turn in Bloodmaster's Ring
    .turnin -95433 >>Turn in Death to the Executioner
    .target Clugfist
step
    .goto 2548,67.2,21.6
    >>|cRXP_WARN_Optional:|r Step Two needs 10 Heavy Weightstones (a Blacksmithing item: buy them at the Auction House). {talk}Talk to |cRXP_FRIENDLY_Hamur|r
    .turnin 96026 >>Turn in Step Two: More Rock
    .target Hamur
    .itemcount 3241,10
step
    .goto 2548,30.2,69.1
    >>|cRXP_WARN_Optional, south-west near the Bristle Hills:|r {talk}Talk to |cRXP_FRIENDLY_Gelinda Coppergleam|r. Her Cinderscale dragonkin aren't in any database yet, nor is Scaldaron, whose head starts Hail the Dragonslayer
    .accept 95792 >>Accept Clear 'em Out
    .accept 95934 >>Accept Proof of Profit
    .target Gelinda Coppergleam
step
    >>Kill |cRXP_ENEMY_Cinderscale Whelps|r and |cRXP_ENEMY_Cinderscale Warriors|r near Gelinda and find a piece of |cRXP_LOOT_Cubic Draconia|r. |cRXP_WARN_No database has the dragonkin's spawns yet|r
    .complete 95792,1 --Cinderscale Whelp (8)
    .mob Cinderscale Whelp
    .complete 95792,2 --Cinderscale Warrior (4)
    .mob Cinderscale Warrior
    .complete 95934,1 --Cubic Draconia (1)
step
    .goto 2548,30.2,69.1
    >>{talk}Talk to |cRXP_FRIENDLY_Gelinda Coppergleam|r
    .turnin 95792 >>Turn in Clear 'em Out
    .turnin 95934 >>Turn in Proof of Profit
    .target Gelinda Coppergleam
step
    .goto 2548,59.4,45.4
    >>If Scaldaron's head dropped, start Hail the Dragonslayer from your bags and {talk}talk to |cRXP_FRIENDLY_Krom'rosh|r in Rog'mar
    .turnin 95936 >>Turn in Hail the Dragonslayer
    .target Krom'rosh
    .isOnQuest 95936
]]

FZG.ORDER = { "riverglades1", "riverglades2" }

for key, text in pairs(FZG.GUIDES) do
    FZG.GUIDES[key] = text:gsub("{talk}", TALK)
end

local RXP = _G.RXPGuides
if RXP and RXP.RegisterGuide then
    for _, key in ipairs(FZG.ORDER) do
        RXP.RegisterGuide(FZG.GUIDES[key])
    end
    FZG.registered = true
end
