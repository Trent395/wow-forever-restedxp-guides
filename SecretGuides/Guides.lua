-- Secret Guides: RestedXP guides for WoW Forever's secrets.
--
-- The Cozy Sleeping Bag chain is the same seven quests as in Season of Discovery (79007,
-- 79008, 79192, 79980, 79974, 79975, 79976). Every object and coordinate below was checked
-- against Questie's Forever database (QuestieDB_Forever, 2026-11) and Icy Veins' Forever
-- write-up; the Forever-only parts (no rested XP from Student Fodder, the level 30 guards a
-- Horde player meets at the dam, the Burnt Page) come from Wowhead / Icy Veins reports.
-- RestedXP reads "#forever" guides on the Forever client (RXPGuides GuideLoader.lua).
--
-- Travel (1.1.0): every leg is a chain of arrows - flight master, city gate, zeppelin or boat,
-- then the road to the next clue. Flight masters and zeppelin masters stand where Questie
-- puts them. The Arathi, Wetlands and Hillsbrad roads follow the game's own flight paths
-- (TaxiPathNode, build 1.60.1.70938, from wago.tools). The zeppelin towers, the Undercity lift,
-- the Orgrimmar gate, Dun Algaz, the Grom'gol swim and the Barrens-Stonetalon road are adapted
-- from RestedXP's guides (RXPGuides, CC BY-NC-SA 4.0, https://github.com/RestedXP/RXPGuides), so
-- this guide text is shared under CC BY-NC-SA 4.0 as well, as is the Shady Rest end of the
-- Dustwallow road. The Loch Modan stretch east of Algaz Station, and the Dustwallow road from
-- Sentry Point to Shady Rest, keep to ground Questie puts no mobs on (the Dustwallow one passes
-- the Theramore camp and Mudcrush Durtfeet). Theramore's gate, Sentry Point and the Barrens
-- signpost by the burnt tower are where Questie puts their guards and the signpost.

local SG = SecretGuides

SG.GUIDES = {}

SG.GUIDES.sleepingBag = [[
#forever
#group Secret Guides
#name Cozy Sleeping Bag - 14
#version 2
#next The Stone Key (unsolved) - 20

step
    +|cRXP_WARN_The chain needs level 14. Every step starts by clicking something in the world - no quest giver marks it|r
    .xp >14,1
step << Horde
    #completewith BarrensRemainsH
    .goto Orgrimmar,45.12,63.89
    >>Talk to |cRXP_FRIENDLY_Doras|r on the tower in the Valley of Strength
    .fly Camp Taurajo >>Fly to Camp Taurajo
    .zoneskip Orgrimmar,1
step << Horde
    #completewith BarrensRemainsH
    .fly Camp Taurajo >>Fly to Camp Taurajo from the nearest flight master. Already in the Barrens? Ride to the arrow
    .zoneskip Orgrimmar
    .zoneskip The Barrens
step << Horde
    #label BarrensRemainsH
    .goto The Barrens,46.34,73.90
    >>Ride out of Camp Taurajo and south down the road to the burnt tower. Click the |cRXP_PICK_Burned-Out Remains|r in its rubble
    .accept 79007 >>Accept ... and that note you found
step << Horde
    .goto The Barrens,44.45,59.15
    >>Ride back to Camp Taurajo and talk to |cRXP_FRIENDLY_Omusa Thunderhorn|r
    .fly Orgrimmar >>Fly to Orgrimmar
step << Horde
    .goto Orgrimmar,48.97,92.84,30 >>Go down the tower and leave Orgrimmar by the front gate
step << Horde
    .goto Durotar,50.80,13.80,40 >>Ride north to the zeppelin tower and go up it
step << Horde
    .goto Durotar,50.69,12.89
    >>Wait on the platform by |cRXP_FRIENDLY_Snurk Bucksquick|r for the zeppelin to Grom'gol
    .zone Stranglethorn Vale >>Take the zeppelin to Stranglethorn Vale
step << Horde
    #completewith next
    .goto Stranglethorn Vale,30.51,29.10,40,0
    .goto Stranglethorn Vale,27.09,31.27,40,0
    .goto Stranglethorn Vale,22.90,31.17,60,0
    .goto Stranglethorn Vale,19.06,27.00,60,0
    .goto Stranglethorn Vale,16.33,23.46,60,0
    .goto Stranglethorn Vale,13.49,19.04,60,0
    .goto Westfall,41.08,98.55,60,0
    .goto Westfall,37.10,89.16,40,0
    .goto Westfall,30.01,86.02,40 >>Go down the tower, swim west from Grom'gol into the Vile Reef, then north along the coast to the Westfall Lighthouse. |cRXP_WARN_Steer clear of the island|r
step << Horde
    #completewith next
    .goto Westfall,31.00,75.00,30,0
    .goto Westfall,32.00,64.00,30,0
    .goto Westfall,36.50,52.50,15 >>Walk north up the Longshore beach, then inland to Alexston Farmstead
step << Horde
    .goto Westfall,37.42,50.78
    >>Click the |cRXP_PICK_Burned-Out Remains|r by the debris, then the |cRXP_PICK_Nailed Plank|r next to it
    .turnin 79007 >>Turn in ... and that note you found
    .accept 79192 >>Accept Stepping Stones
step << Horde
    #completewith next
    .goto Westfall,32.00,64.00,30,0
    .goto Westfall,31.00,75.00,30,0
    .goto Westfall,30.01,86.02,40,0
    .goto Westfall,37.10,89.16,40,0
    .goto Westfall,41.08,98.55,60,0
    .goto Stranglethorn Vale,13.49,19.04,60,0
    .goto Stranglethorn Vale,16.33,23.46,60,0
    .goto Stranglethorn Vale,19.06,27.00,60,0
    .goto Stranglethorn Vale,22.90,31.17,60,0
    .goto Stranglethorn Vale,27.09,31.27,40,0
    .goto Stranglethorn Vale,30.51,29.10,40 >>Go back down the beach past the lighthouse and swim east to Grom'gol. |cRXP_WARN_Hearthstone in Orgrimmar? Hearth and skip ahead to Doras|r
step << Horde
    .goto Stranglethorn Vale,31.43,29.91
    >>Go up the zeppelin tower and wait by |cRXP_FRIENDLY_Nez'raz|r for the zeppelin to Durotar
    .zone Durotar >>Take the zeppelin to Durotar
step << Horde
    .goto Orgrimmar,48.97,92.84,30 >>Go down the tower and ride into Orgrimmar through the front gate
step << Horde
    .goto Orgrimmar,45.12,63.89
    >>Talk to |cRXP_FRIENDLY_Doras|r on the tower in the Valley of Strength
    .fly Sun Rock Retreat >>Fly to Sun Rock Retreat. |cRXP_WARN_Not discovered yet? Fly to the Crossroads and click this step away|r
step << Horde
    .goto The Barrens,35.19,27.79,40,0
    .goto Stonetalon Mountains,75.89,87.49,30,0
    .goto Stonetalon Mountains,68.59,88.34,40,0
    .goto Stonetalon Mountains,64.95,83.88,40,0
    .goto Stonetalon Mountains,61.47,81.51,40,0
    .goto Stonetalon Mountains,58.44,75.90,40,0
    .goto Stonetalon Mountains,54.99,76.03,40,0
    .goto Stonetalon Mountains,51.40,61.14,40,0
    .goto Stonetalon Mountains,45.12,59.84
    >>From the Crossroads ride the road west to the Barrens' edge, up into Stonetalon and through the Windshear Crag to Sun Rock Retreat. Talk to |cRXP_FRIENDLY_Tharm|r
    .fp Sun Rock Retreat >>Get the Sun Rock Retreat flight path
step << Alliance
    #completewith AlexstonRemainsA
    .goto Stormwind City,70.95,72.51
    >>Talk to |cRXP_FRIENDLY_Dungar Longdrink|r, the gryphon master by the Trade District gate
    .fly Sentinel Hill >>Fly to Sentinel Hill
    .zoneskip Stormwind City,1
step << Alliance
    #completewith AlexstonRemainsA
    .fly Sentinel Hill >>Fly to Sentinel Hill from the nearest gryphon master. Already in Westfall? Ride to the arrow
    .zoneskip Stormwind City
    .zoneskip Westfall
step << Alliance
    #label AlexstonRemainsA
    .goto Westfall,37.42,50.78
    >>Ride west from Sentinel Hill to Alexston Farmstead and click the |cRXP_PICK_Burned-Out Remains|r by the debris
    .accept 79008 >>Accept ... and that note you found
step << Alliance
    #completewith BarrensRemainsA
    .goto Westfall,56.55,52.64
    >>Ride back to Sentinel Hill and talk to |cRXP_FRIENDLY_Thor|r
    .fly Menethil Harbor >>Fly to Menethil Harbor. Not discovered yet? Fly to Ironforge and ride north through Loch Modan and Dun Algaz into the Wetlands
step << Alliance
    #completewith BarrensRemainsA
    .goto Wetlands,5.00,63.50
    .zone Dustwallow Marsh >>Take the boat to Theramore from Menethil Harbor's southern pier
step << Alliance
    #completewith BarrensRemainsA
    .goto Dustwallow Marsh,63.88,44.87,20,0
    .goto Dustwallow Marsh,59.70,41.10,25,0
    .goto Dustwallow Marsh,54.75,38.75,25,0
    .goto Dustwallow Marsh,50.75,35.75,25,0
    .goto Dustwallow Marsh,46.75,36.25,25,0
    .goto Dustwallow Marsh,42.75,37.00,25,0
    .goto Dustwallow Marsh,38.75,37.00,25,0
    .goto Dustwallow Marsh,34.73,37.66,25,0
    .goto Dustwallow Marsh,33.12,40.85,25,0
    .goto Dustwallow Marsh,32.28,42.80,25,0
    .goto Dustwallow Marsh,30.65,45.34,25,0
    .goto Dustwallow Marsh,29.70,47.60,25 >>Leave Theramore by its north-west gate and follow the road past the Sentry Point tower, west through the marsh past the Theramore camp, then south to the burnt-out Shady Rest Inn. |cRXP_WARN_Everything in Dustwallow is level 35-45 - stay on the road and keep moving|r
    .zoneskip The Barrens
step << Alliance
    #completewith BarrensRemainsA
    .goto The Barrens,46.07,75.31,15 >>Ride west past the inn into the Barrens and follow the road to the signpost where it meets the road from Camp Taurajo. |cRXP_WARN_The hyenas and thunderhawks along it are level 20-25|r
step << Alliance
    #label BarrensRemainsA
    .goto The Barrens,46.34,73.90
    >>The burnt tower is just north of the signpost. |cRXP_WARN_Camp Taurajo, further up that road, is a Horde town - don't ride on north|r
    >>Click the |cRXP_PICK_Burned-Out Remains|r in the rubble, then the |cRXP_PICK_Nailed Plank|r on it
    .turnin 79008 >>Turn in ... and that note you found
    .accept 79192 >>Accept Stepping Stones
step << Alliance
    #completewith next
    .goto The Barrens,35.19,27.79,40,0
    .goto Stonetalon Mountains,75.89,87.49,30,0
    .goto Stonetalon Mountains,68.59,88.34,40,0
    .goto Stonetalon Mountains,64.95,83.88,40,0
    .goto Stonetalon Mountains,61.47,81.51,40,0
    .goto Stonetalon Mountains,58.44,75.90,40,0
    .goto Stonetalon Mountains,54.99,76.03,40 >>Ride north-west across the Barrens to the road up into Stonetalon at the Barrens' western edge, then follow it west through the Windshear Crag. |cRXP_WARN_Keep wide of Camp Taurajo and the Crossroads, both Horde towns|r
step
    #completewith next
    .goto Stonetalon Mountains,49.96,61.04,20,0 << Horde
    .goto Stonetalon Mountains,50.29,52.94,25 >>Take the dirt path up the mountain north-east of Sun Rock Retreat
    >>|cRXP_WARN_Sun Rock Retreat is a Horde town - stay out of reach of its guards|r << Alliance
step
    .goto Stonetalon Mountains,40.79,52.61
    >>Click the |cRXP_PICK_Pocket Litter|r on the box at the abandoned camp
    >>Optional: the Simple Wood and Flint and Tinder you get light the camp's fire (Rekindle). The chain does not need it
    .turnin 79192 >>Turn in Stepping Stones
    .accept 79980 >>Accept Scramble
step
    #completewith next
    .goto Stonetalon Mountains,40.19,50.80,15 >>Climb the hill north of the camp. Don't miss the jump, or you walk all the way round again
step
    .goto Stonetalon Mountains,39.62,49.88
    >>Click the |cRXP_PICK_Mound of Dirt|r
    .turnin 79980 >>Turn in Scramble
    .accept 79974 >>Accept Wet Job
step << Horde
    .goto Stonetalon Mountains,40.79,52.61,15,0
    .goto Stonetalon Mountains,50.29,52.94,25,0
    .goto Stonetalon Mountains,49.96,61.04,20,0
    .goto Stonetalon Mountains,45.12,59.84
    >>Go back down the dirt path to Sun Rock Retreat and talk to |cRXP_FRIENDLY_Tharm|r. |cRXP_WARN_Hearthstone in Orgrimmar? Hearth and skip ahead to the front gate|r
    .fly Orgrimmar >>Fly to Orgrimmar
step << Horde
    .goto Orgrimmar,48.97,92.84,30 >>Go down the tower and leave Orgrimmar by the front gate
step << Horde
    .goto Durotar,50.80,13.80,40 >>Ride north to the zeppelin tower and go up it
step << Horde
    .goto Durotar,50.82,13.54
    >>Wait on the platform by |cRXP_FRIENDLY_Frezza|r for the zeppelin to Tirisfal Glades
    .zone Tirisfal Glades >>Take the zeppelin to Tirisfal Glades
step << Horde
    #completewith next
    .goto Tirisfal Glades,61.34,59.17,8,0
    .goto Tirisfal Glades,61.38,58.71,8,0
    .goto Tirisfal Glades,61.13,58.84,8,0
    .goto Tirisfal Glades,61.27,59.22,8,0
    .goto Tirisfal Glades,61.51,59.01,10,0
    .goto Tirisfal Glades,60.96,58.63,12,0
    .goto Tirisfal Glades,61.80,65.06,20 >>Go down the zeppelin tower and ride south to the Undercity entrance in the ruins of Lordaeron
step << Horde
    #completewith next
    .goto Undercity,66.09,20.06,35,0
    .goto Undercity,64.37,23.94,35,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >>Walk through the throne room and take the lift down into the Undercity
step << Horde
    .goto Undercity,63.25,48.56
    >>Talk to |cRXP_FRIENDLY_Michael Garrett|r, the bat handler just outside the lift
    .fly Hammerfall >>Fly to Hammerfall. |cRXP_WARN_Not discovered yet? Fly to Tarren Mill, ride east through Thoradin's Wall and along the north of the Arathi Highlands to Hammerfall (Refuge Pointe and Dabyrie's Farmstead are Alliance), then click this step away|r
step << Horde
    #completewith next
    .goto Arathi Highlands,69.08,33.00,30,0
    .goto Arathi Highlands,66.23,39.77,30,0
    .goto Arathi Highlands,65.24,53.15,30,0
    .goto Arathi Highlands,62.07,58.49,30,0
    .goto Arathi Highlands,56.09,58.73,30,0
    .goto Arathi Highlands,50.82,63.42,30,0
    .goto Arathi Highlands,48.35,68.03,30,0
    .goto Arathi Highlands,46.64,72.45,30,0
    .goto Arathi Highlands,44.16,84.98,20 >>Ride south from Hammerfall past the Horde farm, then west to the Thandol Span, the great bridge into the Wetlands. |cRXP_WARN_Keep well east of Refuge Pointe and its Alliance guards|r
step << Horde
    #completewith next
    .goto Wetlands,51.06,8.07,20,0
    .goto Wetlands,50.74,16.66,25,0
    .goto Wetlands,50.97,21.65,25,0
    .goto Wetlands,50.18,27.50,25,0
    .goto Wetlands,47.30,46.90,30,0
    .goto Wetlands,48.32,67.07,30,0
    .goto Wetlands,50.14,72.10,25,0
    .goto Wetlands,50.17,77.39,20,0
    .goto Wetlands,50.55,82.50,20,0
    .goto Wetlands,54.75,83.45,20 >>Cross the bridge and follow the road south through the Wetlands to the Algaz Gate. |cRXP_WARN_The dwarves at Dun Modr and in the camp by the road are Alliance and attack Horde - give them a wide berth|r
step << Horde
    #completewith next
    .goto Loch Modan,25.52,8.59,15,0
    .goto Loch Modan,30.00,13.00,25,0
    .goto Loch Modan,34.00,15.50,25,0
    .goto Loch Modan,38.00,12.50,20,0
    .goto Loch Modan,41.01,12.60,15 >>Go through the Dun Algaz pass into Loch Modan, turn east at once and ride past the kobold camp outside Silver Stream Mine to the west end of the Stonewrought Dam
    >>|cRXP_WARN_Horde: the Algaz Gate, Dun Algaz, Algaz Station, Thelsamar and the dam have level 30 Alliance guards. Mountaineer Dokkin walks the pass, Rockgar stands at its Loch Modan end|r << Horde
step << Alliance
    #completewith AuberdinePier
    .fly Auberdine >>Fly to Auberdine - from Stonetalon Peak, north up the road past Mirkfallon Lake. |cRXP_WARN_Hearthstone in the Eastern Kingdoms? Hearth and skip ahead to Menethil Harbor|r
step << Alliance
    #label AuberdinePier
    .goto Darkshore,32.29,44.05
    .zone Wetlands >>Take the boat from Auberdine's pier to Menethil Harbor
step << Alliance
    .goto Wetlands,9.49,59.69
    >>Talk to |cRXP_FRIENDLY_Shellei Brondir|r
    .fly Thelsamar >>Fly to Thelsamar. Not discovered yet? Ride the road east and south through the Wetlands and Dun Algaz into Loch Modan, then click this step away
step << Alliance
    #completewith next
    .goto Loch Modan,31.00,38.00,25,0
    .goto Loch Modan,28.00,26.00,25,0
    .goto Loch Modan,30.00,15.00,25,0
    .goto Loch Modan,34.00,15.50,25,0
    .goto Loch Modan,38.00,12.50,20,0
    .goto Loch Modan,41.01,12.60,15 >>Ride north out of Thelsamar towards Algaz Station, then east past the kobold camp outside Silver Stream Mine to the west end of the Stonewrought Dam
step
    #completewith next
    .goto Loch Modan,42.86,10.36,10,0
    .goto Loch Modan,44.80,12.80,8,0
    .goto Loch Modan,47.20,14.30,6,0
    .goto Loch Modan,49.42,12.85,4 >>Climb onto the dam at its west end and walk east along the top to the carved dwarf heads on the Wetlands side
    >>|cRXP_WARN_Mountaineer Haggis stands by the ramp, Morlic and Angst stand on the dam and Barn walks its whole length. Wait for Barn to pass|r << Horde
step
    .goto Loch Modan,49.42,12.85
    >>Walk along the top of the dam and drop carefully onto the easternmost carved dwarf head, facing the Wetlands. |cRXP_WARN_Miss it and you fall into the Wetlands|r
    >>Click the |cRXP_PICK_Carved Figurine|r on the ledge
    .turnin 79974 >>Turn in Wet Job
    .accept 79975 >>Accept Eagle's Fist
step << Horde
    #completewith next
    .goto Loch Modan,47.20,14.30,6,0
    .goto Loch Modan,42.86,10.36,10,0
    .goto Loch Modan,41.01,12.60,15,0
    .goto Loch Modan,38.00,12.50,20,0
    .goto Loch Modan,34.00,15.50,25,0
    .goto Loch Modan,30.00,13.00,25,0
    .goto Loch Modan,25.52,8.59,15,0
    .zone Wetlands >>Get back onto the dam, leave it at the west end and ride back through Dun Algaz into the Wetlands. Fell into the Wetlands instead? Follow the next arrow from where you landed
step << Horde
    #completewith next
    .goto Wetlands,54.75,83.45,20,0
    .goto Wetlands,50.55,82.50,20,0
    .goto Wetlands,50.17,77.39,20,0
    .goto Wetlands,50.14,72.10,25,0
    .goto Wetlands,48.32,67.07,30,0
    .goto Wetlands,47.30,46.90,30,0
    .goto Wetlands,50.18,27.50,25,0
    .goto Wetlands,50.97,21.65,25,0
    .goto Wetlands,50.74,16.66,25,0
    .goto Wetlands,51.06,8.07,20,0
    .goto Arathi Highlands,44.16,84.98,20 >>Ride north up the Wetlands road and over the Thandol Span into the Arathi Highlands
step << Horde
    .goto Arathi Highlands,46.64,72.45,30,0
    .goto Arathi Highlands,48.35,68.03,30,0
    .goto Arathi Highlands,50.82,63.42,30,0
    .goto Arathi Highlands,56.09,58.73,30,0
    .goto Arathi Highlands,62.07,58.49,30,0
    .goto Arathi Highlands,65.24,53.15,30,0
    .goto Arathi Highlands,66.23,39.77,30,0
    .goto Arathi Highlands,69.08,33.00,30,0
    .goto Arathi Highlands,73.02,32.70
    >>Ride east past the Horde farm and north to Hammerfall. Talk to |cRXP_FRIENDLY_Urda|r
    .fly Tarren Mill >>Fly to Tarren Mill
step << Alliance
    #completewith next
    .goto Loch Modan,47.20,14.30,6,0
    .goto Loch Modan,42.86,10.36,10,0
    .goto Loch Modan,41.01,12.60,15,0
    .goto Loch Modan,38.00,12.50,20,0
    .goto Loch Modan,34.00,15.50,25,0
    .goto Loch Modan,30.00,15.00,25,0
    .goto Loch Modan,28.00,26.00,25,0
    .goto Loch Modan,31.00,38.00,25,0
    .goto Loch Modan,33.94,50.95,15 >>Get back onto the dam, leave it at the west end and ride back to Thelsamar
    .zoneskip Wetlands
step << Alliance
    .goto Loch Modan,33.94,50.95
    >>Talk to |cRXP_FRIENDLY_Thorgrum Borrelson|r. Fell into the Wetlands? Ride west to Menethil Harbor's |cRXP_FRIENDLY_Shellei Brondir|r instead
    .fly Southshore >>Fly to Southshore
step
    #completewith next
    .goto Hillsbrad Foothills,57.78,20.20,20,0 << Horde
    .goto Hillsbrad Foothills,57.03,24.04,20,0 << Horde
    .goto Hillsbrad Foothills,61.67,33.45,25,0
    .goto Hillsbrad Foothills,67.61,32.13,25,0
    .goto Hillsbrad Foothills,70.93,35.93,25,0
    .goto Hillsbrad Foothills,74.33,37.57,25,0
    .goto Hillsbrad Foothills,77.72,43.82,25,0
    .goto Hillsbrad Foothills,82.36,47.21,20,0
    .goto Hillsbrad Foothills,87.69,48.17,10 >>Ride south out of Tarren Mill, then east along the road to Thoradin's Wall on the Arathi Highlands border. Find the broken cart on the Hillsbrad side << Horde
    .goto Hillsbrad Foothills,87.69,48.17,10 >>Ride north out of Southshore to the crossroads, then east along the road to Thoradin's Wall on the Arathi Highlands border. Find the broken cart on the Hillsbrad side << Alliance
step
    #completewith next
    .goto Arathi Highlands,24.13,21.47,7 >>Climb the cart and its debris up into the wall - a jumping puzzle
step
    .goto Arathi Highlands,22.48,24.23
    >>Cross the room full of knick-knacks and click the |cRXP_PICK_Messenger Bag|r hanging on the wall
    .turnin 79975 >>Turn in Eagle's Fist
    .accept 79976 >>Accept This Must Be The Place
step
    .goto Arathi Highlands,22.47,24.23
    >>Click the |cRXP_PICK_Hastily Rolled-Up Satchel|r just below the bag
    .turnin 79976 >>Turn in This Must Be The Place
    .collect 211527,1 >>|cRXP_LOOT_Cozy Sleeping Bag|r
step
    +|cRXP_WARN_Use the|r |cRXP_LOOT_Cozy Sleeping Bag|r|cRXP_WARN_: rest in it for a minute for +1% experience, stacking to 3 (+3%), for an hour. One hour cooldown; party members can rest in your bag too|r
    >>Student Fodder no longer gives rested experience in Forever - it is a health and mana snack with a short speed burst
step
    +Optional: the |cRXP_PICK_Burnt Page|r in the metal bucket above the burnt tapestry in this room starts the unsolved Stone Key trail - the next guide
    .goto Arathi Highlands,22.57,24.27
]]

SG.GUIDES.stoneKey = [[
#forever
#group Secret Guides
#name The Stone Key (unsolved) - 20
#version 1

step
    +|cRXP_WARN_Unsolved: the steps below get you the Stone Key, but nobody has found what it opens yet. Reachable at level 20|r
step
    #completewith next
    .goto Arathi Highlands,24.13,21.47,7 >>Climb into Thoradin's Wall the way the Cozy Sleeping Bag guide does
step
    .goto Arathi Highlands,22.57,24.27
    >>In the room with the sleeping bag, find the metal bucket above the burnt tapestry
    +Read the |cRXP_PICK_Burnt Page|r. It gives no item; its riddle points to the Undercity
step
    #completewith next
    .zone Undercity >>Go to the Undercity's back entrance, through the sewers
    >>|cRXP_WARN_No guards on the way, but Alliance players are flagged for PvP|r << Alliance
step
    .goto Undercity,23.47,36.62
    >>In the corridor just inside, a pile of debris holds an open book next to a barrel. The book shows Blackrock Mountain, the Dark Portal and Fire Plume Ridge; its |cRXP_PICK_Torn Page|r points to page 155 of the 2004 game manual
    +Loot the knife beside the book: |cRXP_LOOT_Keystone Fragment|r
step
    #completewith next
    .zone Searing Gorge >>Travel to Blackrock Mountain (from Searing Gorge or the Burning Steppes)
step
    >>Inside Blackrock Mountain go towards Upper Blackrock Spire. Near the old Blackwing Lair attunement spot a ramp leads up to the part of Lower Blackrock Spire outside the instance: jump across the platforms on the right of the ramp
    >>|cRXP_WARN_The mobs here are far above level 20. The|r |cRXP_ENEMY_Scarshield Grunt|r |cRXP_WARN_by the satchel leaves you alone unless you attack him|r
    +Use the Keystone Fragment on his satchel: |cRXP_LOOT_Stone Key|r
step
    +What the Stone Key opens is the open question. Leads: the three pictures in the Undercity book. The hunt is on the WoW Secret Finding Discord, #forever-secrets channel
]]

-- The checklist: one manual step per secret, with arrows where a location is published.
local function clean(text)
    -- RestedXP reads "<<" / ">>" as tags and splits steps on line breaks.
    return (tostring(text):gsub("[<>]", ""):gsub("[\r\n]+", " "))
end

function SG.ListGuideText()
    local out = {
        "#forever",
        "#group Secret Guides",
        "#name Other Forever secrets",
        "#version 1",
        "",
        "step",
        "    +|cRXP_WARN_A checklist of WoW Forever's other secrets. Tick each one off when found - arrows point at every published location. Most were found in the beta, so a detail can have changed|r",
    }
    for _, s in ipairs(SG.SECRETS) do
        local tag = s.faction and (", " .. s.faction .. " only") or ""
        local lvl = s.level and (", level " .. s.level) or ""
        out[#out + 1] = "step"
        out[#out + 1] = string.format("    +|cRXP_FRIENDLY_%s|r (%s%s%s, %s) - %s",
            clean(s.name), clean(s.kind), tag, lvl, s.status, clean(s.reward))
        out[#out + 1] = "    >>" .. clean(s.where)
        for _, step in ipairs(s.how) do out[#out + 1] = "    >>" .. clean(step) end
        local many = s.points and #s.points > 1
        for _, p in ipairs(s.points or {}) do
            out[#out + 1] = string.format("    .goto %s,%.2f,%.2f%s", p[1], p[2], p[3], many and ",-1" or "")
        end
    end
    return table.concat(out, "\n") .. "\n"
end

SG.GUIDES.list = SG.ListGuideText()
SG.ORDER = { "sleepingBag", "stoneKey", "list" }

local RXP = _G.RXPGuides
if RXP and RXP.RegisterGuide then
    for _, key in ipairs(SG.ORDER) do
        RXP.RegisterGuide(SG.GUIDES[key])
    end
    SG.registered = true
end
