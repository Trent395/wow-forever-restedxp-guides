# RestedXP guides for World of Warcraft: Forever

Extra guides for the [RestedXP](https://github.com/RestedXP/RXPGuides) guide addon, covering
things RestedXP itself does not have yet: the new Riverglades zone and Forever's hidden secrets.
Two small addons. Each one adds its guides to RestedXP's guide list.

## What's included

### Forever Zone Guides: leveling in the new zones (Horde)

Shows up in RestedXP's guide list under the group **Forever Zone Guides**.

| Guide | What it covers |
|---|---|
| **36-40 Riverglades** | Getting there (Gadgetzan's Overseas Delivery and the Steamwheedle Port boat, or the Grom'gol and Hammerfall breadcrumbs and the walk in from Kargath or Redridge Pass), then Rog'mar, Meadowsbrook, Farholde's outskirts, Turner's Logging Camp, the Bristle Hills and Sunnyglade |
| **40-44 Riverglades** | Sunnyglade's caves, Bolder'ok and the Bloodmaster's Ring, Powderfuse Port and the Eastwind Shore, Twilight's Shroud and Krol'dok Stronghold |

- Horde only. An Alliance character never sees these guides.
- Quest givers and turn-ins have arrows. A few places have no data in any database yet: some
  mobs (for example Glade Vipers and the Cinderscale dragonkin), the caves under Sunnyglade,
  Fuzzle's treasure and Captain Bentcoin. For those the step names the subzone instead of
  showing an arrow that could be wrong.
- Riverglades is not in RestedXP's map or flight tables yet, so its waypoints use the map ID and
  the Rog'mar flight path is a plain "talk to the flight master" step.

### Secret Guides: Forever's hidden quests and secrets (Horde and Alliance)

Shows up in RestedXP's guide list under the group **Secret Guides**.

| Guide | What it covers |
|---|---|
| **Cozy Sleeping Bag - 14** | Every click of the hidden seven-quest chain, with travel between the clues for both factions. Reward: +1% XP per stack, up to 3, for an hour |
| **The Stone Key (unsolved) - 20** | The trail from Thoradin's Wall through the Undercity sewers to Blackrock Mountain. Nobody has found what the key opens yet |
| **Other Forever secrets** | A checklist of the other known secrets: pets, toys, hidden vendors, secret bosses, item tricks, and the ones nobody has solved yet. Arrows wherever a location has been published |

It also adds a chat command that works without RestedXP:

- `/secrets` lists every secret.
- `/secrets 5` shows number 5 in full.

## Install

**[Step-by-step install guide](INSTALL.md)**, with where to find the folder, updating and
troubleshooting. In short:

1. Install **RestedXP** (the free `RXPGuides` addon) if you don't have it.
2. Download the zip from the [latest release](../../releases/latest). Don't use the green
   "Code > Download ZIP" button: it wraps everything in an extra folder.
3. Open the zip and drag its two folders into `World of Warcraft\_forever_\Interface\AddOns`.
4. **Exit and restart the game.** `/reload` doesn't load a newly added addon.
5. Click the scroll icon (**Browse Guides**) on RestedXP's guide window and pick a guide from
   **Forever Zone Guides** or **Secret Guides**.

There is nothing to paste into RestedXP's Import window. It only takes RestedXP's own guide
codes, which are locked to one Battle.net account.

## Accuracy

- Most of Forever's secrets were found during the beta, so a detail can have changed since.
  Coordinates appear only where a source published them.
- Spot a wrong step or a better route? Open an issue and say which guide and step.

## Sources and credits

- **Riverglades**:
  - Quest list, text, givers and levels: Wowhead's Forever database.
  - Quest-giver coordinates and prerequisites: AllTheThings' Forever database.
  - Where mobs and NPCs stand: Questie's Forever database.
  - Subzone positions: the game's own map overlays.
  - The ways into the zone: the timesaver.gg Riverglades guide.
- **Cozy Sleeping Bag and the Stone Key**:
  - Objects and coordinates: checked against Questie's Forever database and Icy Veins' Forever write-up.
  - The Forever-only details: reports on Wowhead and Icy Veins.
  - Flight-path roads: the game's own flight paths.
  - Some travel steps (the zeppelin towers, the Undercity lift, the Orgrimmar gate, Dun Algaz,
    the Grom'gol swim, the Barrens-Stonetalon road and the end of the Dustwallow road at Shady
    Rest) are adapted from RestedXP's own guides.
- **Other Forever secrets**: Icy Veins, Warcraft Tavern and Wowhead reports, as collected by
  wowclassicforever.info and lostwow.com.
- Guide format: [RestedXP / RXPGuides](https://github.com/RestedXP/RXPGuides).

Not affiliated with RestedXP or Blizzard Entertainment. World of Warcraft is a trademark of
Blizzard Entertainment.

## License

[CC BY-NC-SA 4.0](LICENSE). You may share and adapt these guides for non-commercial use, as long
as you credit this project and release your changes under the same licence. RestedXP's own guides,
which some of the travel steps are adapted from, are under the same licence.
