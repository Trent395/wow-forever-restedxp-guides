-- Secret Guides: the list of WoW Forever's other secrets, shown two ways:
--   * /secrets prints it in chat (works without RestedXP), /secrets N gives one in full;
--   * Guides.lua turns it into the RestedXP checklist guide "Other Forever secrets".
--
-- Sources (checked 2026-11-14): Questie's Forever database for the Cozy Sleeping Bag and
-- Stone Key objects; Icy Veins, Warcraft Tavern and Wowhead reports as collected by
-- wowclassicforever.info and lostwow.com for the rest. Most were found in the beta, so a
-- step can have changed since; coordinates are only given where a source published them.
-- Text here must not contain "<<" or ">>" (RestedXP reads those as tags) or a line break.

local _, NS = ...
SecretGuides = SecretGuides or {}
local SG = SecretGuides
SG.VERSION = "1.1.0"

SG.SLEEPING_BAG = 211527          -- Cozy Sleeping Bag (item)
SG.CHAIN = { 79007, 79008, 79192, 79980, 79974, 79975, 79976 }   -- its seven quests

-- kind: what you get; faction: nil = both; status: solved / partly solved / unsolved;
-- points: {zone, x, y} the way RestedXP names zones (world map coordinates).
SG.SECRETS = {
    {
        name = "Cozy Sleeping Bag", kind = "Hidden quest chain", status = "solved", level = 14,
        where = "Starts in the Barrens (Horde) or Westfall (Alliance)",
        reward = "Cozy Sleeping Bag: +1% XP per stack, up to 3, for an hour",
        how = { "Has its own step-by-step guide: pick Secret Guides - Cozy Sleeping Bag in RestedXP." },
        points = { { "The Barrens", 46.34, 73.90 }, { "Westfall", 37.42, 50.78 } },
        guide = "Cozy Sleeping Bag - 14",
    },
    {
        name = "The Stone Key", kind = "Hidden trail", status = "unsolved", level = 20,
        where = "Thoradin's Wall, then the Undercity sewers, then Blackrock Mountain",
        reward = "Keystone Fragment, Stone Key - what the key opens is unknown",
        how = { "Has its own guide: pick Secret Guides - The Stone Key in RestedXP." },
        points = { { "Arathi Highlands", 22.57, 24.27 } },
        guide = "The Stone Key (unsolved) - 20",
    },
    {
        name = "Eluvi'ana, the Night Dancer", kind = "Hidden quest chain", status = "partly solved",
        where = "Zephras Isle (zeppelin from Skywatcher Plateau in Mulgore); needs the Night Watchman's Torch",
        reward = "Eluvi'ana (one-hand sword, believed to upgrade later - keep it)",
        how = {
            "Get the Ancient Heirloom ring: Skyborne quest Coming of Age, or loot it on the top floor of the building at 41.7, 23.4.",
            "At the Ruins of Ban'aethal (58.1, 24.1) take out the Night Watchman's Torch: it reveals The Ancient Hilt.",
            "Find the Ancient Skyborne Blade at one of its spawns (48.9, 72.7 / 50.4, 44.3 / 66.3, 43.2 / 59.9, 82.2).",
            "Talk to Ealaane Nimbuswalker for Eluvi'ana. The chain goes on (Befouled Water Globe, Hyjal, Prince Tortheldrin in Dire Maul) and stops there for now.",
        },
        points = { { "Zephras Isle", 41.7, 23.4 }, { "Zephras Isle", 58.13, 24.06 }, { "Zephras Isle", 48.94, 72.68 },
                   { "Zephras Isle", 50.4, 44.3 }, { "Zephras Isle", 66.25, 43.15 }, { "Zephras Isle", 59.9, 82.2 } },
    },
    {
        name = "Night Watchman's Torch", kind = "Toy", status = "solved",
        where = "Raven Hill, Duskwood",
        reward = "Night Watchman's Torch (light it every 30 sec); first step of Eluvi'ana",
        how = { "Behind the largest house in Raven Hill, by the outhouse, a slain Night Watch guard sometimes lies on the ground. Check back if he isn't there.",
                "Click him for An Unfortunate End." },
    },
    {
        name = "Musical Gustjumper", kind = "Pet", status = "solved",
        where = "Zephras Isle, a rock full of frogs",
        reward = "Musical Gustjumper (singing frog pet)",
        how = { "Stand by the frogs on the rock and type /sing.", "A frog hops onto the log beside you: pick it up and use it. Not bound until learned, so you can take extras." },
        points = { { "Zephras Isle", 51.5, 72.2 } },
    },
    {
        name = "Excitable Slime", kind = "Pet", status = "solved", faction = "Horde",
        where = "Undercity canal",
        reward = "Excitable Slime (pet that dances back)",
        how = { "Buy a Nutritious Slime Sludge from Boyle on the bridge to the Apothecarium.",
                "Jump into the canal, find the small slime and /dance at it until it offers WRIGGLE (it takes several tries).",
                "Hand it the sludge." },
        points = { { "Undercity", 56.2, 64.6 } },
    },
    {
        name = "Early relics for Druids and Shamans", kind = "Hidden quest reward", status = "solved", faction = "Horde", level = 5,
        where = "Shen'dar Village, Zephras Isle",
        reward = "Totem of Charged Flames (Shaman), Idol of Shifting Tides (Druid)",
        how = { "Turn in Welcome to Shen'dar Village, then take Meddlesome Mages from Illaya Amberwind." },
    },
    {
        name = "Brother Zendraas", kind = "Hidden vendor", status = "solved",
        where = "Shrine of Akir, Zephras Isle",
        reward = "24 green Al'aketh cloth/leather/mail pieces for 5, 8 or 15 Windstones",
        how = { "Looks like a hostile cultist but isn't: talk through his dialogue (sometimes twice) and his shop opens.",
                "Windstones lie around Zephras Isle and drop from its creatures; they can be mailed." },
        points = { { "Zephras Isle", 57.8, 52.0 } },
    },
    {
        name = "Library books", kind = "Collection", status = "solved",
        where = "Books in inns, crypts, ogre caves and pirate camps all over Azeroth",
        reward = "10 books: neck; 20: ring; 25: Truthseeker's Bow (or a shield / off-hand)",
        how = { "Pick up every library book you find and hand each to your faction's librarian next to the mage portal trainer: Owen Thadd in the Undercity Magic Quarter, Garion Wendell in the Stormwind Mage Tower.",
                "Mages who hand one in learn Research: Study in a library makes a Bundle of Scrolls." },
        points = { { "Undercity", 73.7, 32.7 } },
    },
    {
        name = "Whispering Horror Residue", kind = "Hidden quest", status = "solved", faction = "Horde",
        where = "Cellar under the ruined house in Shadowvale, Tirisfal Glades",
        reward = "Undercity reputation, plus more small quests in the same cellar",
        how = { "Kill the level 11 elite Whispering Horror in the cellar: its Whispering Horror Residue starts a quest.",
                "Take it to Father Lankester in the Undercity War Quarter." },
    },
    {
        name = "Blessing of Kalimdor", kind = "Rare-drop set", status = "solved",
        where = "The Barrens rares",
        reward = "2 pieces: +5% speed in the Barrens and Stonetalon Mountains",
        how = { "Humar the Pridelord drops Mark of the Pack Leader (neck), Swiftmane the Signet of the Zhevra (ring), Takk the Leaper the Raptor Hide Cloak." },
    },
    {
        name = "Lyn the Ignored", kind = "Secret boss", status = "solved",
        where = "Shadowfang Keep, Ambermill (Silverpine), then the City of Dalaran dungeon",
        reward = "A hidden boss fight",
        how = { "Kill Archmage Arugal and click the book on his table: Black Tome.",
                "Use it by the Ambermill Leyline Focus inside the Ambermill keep: Tome of Dalaran.",
                "In the City of Dalaran, past Atrexis the Grave Knight, go straight on through the sewer to a purple floor rune and use the tome (3 min cooldown, not used up)." },
    },
    {
        name = "Ruins of Lordaeron bosses", kind = "Secret bosses", status = "solved",
        where = "Ruins of Lordaeron",
        reward = "The Abandoned: Scepter of the Abandoned, Rotmender's Leggings; Viktor the Vile: Vilewalker Boots",
        how = { "The Abandoned (level 18): clear the courtyard with the glowing-eyed statue and its tower, step into the tower doorway, survive the undead waves.",
                "Viktor the Vile: click the fireplace of the burned house south-west of Lordamere Overlook; he comes with the sixth wave." },
    },
    {
        name = "Rockslicer", kind = "Item trick", status = "solved",
        where = "The Deadmines (Rhahk'Zor)",
        reward = "Level 18 two-hand axe that mines Copper, Tin, Silver and Iron veins without Mining (30 charges)",
        how = { "Drops from Rhahk'Zor, the first Deadmines boss." },
    },
    {
        name = "Partners in Crime", kind = "Ring set", status = "partly solved",
        where = "The Deadmines (Mr. Smite)",
        reward = "First Mate Band; with the level 60 Band of the Better Half: +22 Strength and an Angry proc",
        how = { "Mr. Smite drops the First Mate Band. Nobody has found where the Band of the Better Half drops." },
    },
    {
        name = "Coldflame Saber", kind = "Class secret", status = "solved",
        where = "Shadowfang Keep (Blade of Silverlaine) - Mages only",
        reward = "A sword that burns frozen targets",
        how = { "Mages decipher scrolls with the Comprehension skill; the Scroll of the Saber turns the Blade of Silverlaine from Shadowfang Keep into the Coldflame Saber." },
    },
    {
        name = "Druid serpent form", kind = "Hidden set bonus", status = "solved",
        where = "Wailing Caverns",
        reward = "A Druid wearing all five pieces turns into a snake",
        how = { "Collect all five Embrace of the Viper pieces (each from a different Wailing Caverns boss) and wear them as a Druid." },
    },
    {
        name = "Graverobber's Shovel", kind = "Item trick", status = "partly solved",
        where = "The Stockade (Dextren Ward, about 0.5%)",
        reward = "Two-hand mace that digs graves at Raven Hill Cemetery and the Scarlet Monastery graveyard",
        how = { "What the graves give has not been published yet." },
    },
    {
        name = "The Drunken Dwarf", kind = "Hidden place", status = "partly solved",
        where = "High above the Dun Algaz tunnels, about 53.0, 79.6",
        reward = "A rested area with its own food, a slow-fall ale and music; the cellar door stays shut",
        how = { "Take the road through the Dun Algaz tunnels to the orc camp and start climbing the mountain earlier than feels right, then drop towards a tree." },
    },
    {
        name = "Tidal Charm", kind = "Item trick", status = "solved",
        where = "Drowned Reef off Arathi Highlands (Prince Nazjak)",
        reward = "Stuns naga for 5 sec and refunds 80% of its cooldown",
        how = { "Prince Nazjak still drops it; the naga effect is new in Forever." },
    },
    {
        name = "Savory Whimsyfin Delight", kind = "Fun item", status = "solved",
        where = "Random drop (for example Great Goretusks in Redridge)",
        reward = "Eat it to become an orc ninja or pirate",
        how = { "Loot Recipe: Savory Whimsyfin Delight, learn it with Cooking and cook it." },
    },
    {
        name = "Silver of the Waves", kind = "Hidden quest", status = "solved", faction = "Alliance",
        where = "Bottom of the lake, Loch Modan",
        reward = "Repurposed Hair Band and experience",
        how = { "Dive to the Discarded Fishing Toolbox for the Monogrammed Silver Hair Clip (K.D.) and bring it to Khara Deepwater (39.5, 39.2)." },
        points = { { "Loch Modan", 45.6, 43.4 } },
    },
    {
        name = "Malignant Root", kind = "Hidden quest", status = "solved", faction = "Alliance",
        where = "Wetlands",
        reward = "Malignant Root ring (no level requirement)",
        how = { "Kite the elite Nightveiled Rotheap for its Rotheap Innards and trade them to Rethiel the Greenwarden." },
        points = { { "Wetlands", 56.2, 40.4 } },
    },
    {
        name = "Baby Crocolisk", kind = "Pet", status = "solved", faction = "Alliance",
        where = "Stormwind City canals",
        reward = "Baby Crocolisk pet",
        how = { "The Sewer Beast (level 50 elite, needs a raid) patrols the canals and drops it." },
    },
    {
        name = "Still unsolved", kind = "Open mysteries", status = "unsolved",
        where = "All over Azeroth",
        reward = "Nobody knows yet",
        how = { "The Drunken Dwarf's cellar door; Rotmender's robe, sash and gloves; the Blueprint: Greenhouse for herb seeds; the island south of Land's End (Tanaris); the Karazhan caretaker's 'special delivery'; the tauren Prepared Incense; Manor Mistmantle's shut doors (Duskwood)." },
    },
}

local function fmtPoint(p)
    return string.format("%s %.1f, %.1f", p[1], p[2], p[3])
end

-- One line per secret for chat.
function SG.Summary(i, s)
    local tag = s.faction and (" - " .. s.faction .. " only") or ""
    local lvl = s.level and (" - level " .. s.level) or ""
    return string.format("%d. %s (%s%s%s, %s): %s", i, s.name, s.kind, tag, lvl, s.status, s.where)
end

function SG.Details(s)
    local lines = { "|cffffd100" .. s.name .. "|r - " .. s.kind .. (s.faction and (", " .. s.faction .. " only") or "") .. ", " .. s.status }
    lines[#lines + 1] = "Where: " .. s.where
    for _, step in ipairs(s.how) do lines[#lines + 1] = "- " .. step end
    if s.points then
        local p = {}
        for _, point in ipairs(s.points) do p[#p + 1] = fmtPoint(point) end
        lines[#lines + 1] = "Map: " .. table.concat(p, "; ")
    end
    lines[#lines + 1] = "Reward: " .. s.reward
    return lines
end

local function say(msg)
    DEFAULT_CHAT_FRAME:AddMessage("|cff33ff99Secret Guides:|r " .. msg)
end

SLASH_SECRETGUIDES1 = "/secrets"
SLASH_SECRETGUIDES2 = "/secretguides"
SlashCmdList.SECRETGUIDES = function(msg)
    msg = (msg or ""):match("^%s*(.-)%s*$")
    local n = tonumber(msg)
    if n and SG.SECRETS[n] then
        for _, line in ipairs(SG.Details(SG.SECRETS[n])) do say(line) end
        return
    end
    say(#SG.SECRETS .. " secrets. /secrets N for one in full.")
    for i, s in ipairs(SG.SECRETS) do say(SG.Summary(i, s)) end
    if SG.registered then
        say("RestedXP guides: open the RestedXP guide list, group Secret Guides.")
    else
        say("RestedXP (RXPGuides) is not loaded, so the step-by-step guides are off.")
    end
end
