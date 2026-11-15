# Installing the guides

These guides are **addons**: you copy two folders into WoW's AddOns folder. There is no code to
paste, so don't use RestedXP's Import window (see [Troubleshooting](#troubleshooting)).

About five minutes, once.

## 1. Install RestedXP

The guides run inside the free RestedXP guide addon (`RXPGuides`). If you already have it, skip
this step. If not, get it from one of these:

- **CurseForge**: search for "RestedXP Guides".
- **Wago**: search for "RestedXP Guides".
- **GitHub**: [RestedXP/RXPGuides releases](https://github.com/RestedXP/RXPGuides/releases).

RestedXP supports the Forever client, so the normal download works.

## 2. Find your Forever AddOns folder

1. Open the **Battle.net** app and click **World of Warcraft**.
2. In the version drop-down above the Play button, pick the **Forever** version.
3. Click the gear icon next to Play, then **Show in Explorer** (on a Mac: **Show in Finder**).
4. Open the `_forever_` folder, then `Interface`, then `AddOns`. If `Interface` or `AddOns`
   doesn't exist yet, create it. Spell it exactly like that.

The usual places:

| System | Folder |
|---|---|
| Windows | `C:\Program Files (x86)\World of Warcraft\_forever_\Interface\AddOns` |
| Mac | `/Applications/World of Warcraft/_forever_/Interface/AddOns` |

## 3. Download the guides

1. Open the [latest release](../../releases/latest).
2. Under **Assets**, click `wow-forever-restedxp-guides-<version>.zip`.

Don't use the green **Code > Download ZIP** button on the main page. That zip wraps everything in
an extra folder, and the game won't find the addons.

## 4. Copy the two folders into AddOns

1. Double-click the zip to open it. Inside are two folders: `ForeverZoneGuides` and `SecretGuides`.
2. Drag both folders into the AddOns folder from step 2. You can take just one if that's all you want.

Avoid Windows' **Extract All**. It creates a new folder named after the zip, which puts the
addons one level too deep.

When you're done, the `.toc` files must sit directly inside each addon's folder:

```
_forever_\Interface\AddOns\ForeverZoneGuides\ForeverZoneGuides.toc
_forever_\Interface\AddOns\SecretGuides\SecretGuides.toc
_forever_\Interface\AddOns\RXPGuides\RXPGuides.toc
```

## 5. Restart the game

1. **Exit WoW completely and start it again.** `/reload` doesn't find addons that were added
   while the game was running.
2. At character select, click **AddOns** (bottom left) and check that **Forever Zone Guides**,
   **Secret Guides** and **RestedXP Guides** are ticked.
3. If one of them says "Out of date", tick **Load out of date AddOns** in that window.

## 6. Pick a guide

1. Log in. If RestedXP's guide window isn't showing, type `/rxp show`.
2. Click the scroll icon (**Browse Guides**) at the top of the guide window. In RestedXP's older
   window style, right-click the bar with the guide's name instead.
3. Open the group you want:
   - **Forever Zone Guides**: **36-40 Riverglades** and **40-44 Riverglades**. Horde characters only.
   - **Secret Guides**: **Cozy Sleeping Bag - 14**, **The Stone Key (unsolved) - 20** and
     **Other Forever secrets**.

Secret Guides also adds a chat command that works even without RestedXP. Type `/secrets` for the
whole list, or `/secrets 5` for number 5 in full.

## Updating

1. Download the newest zip.
2. Delete the old `ForeverZoneGuides` and `SecretGuides` folders from AddOns.
3. Copy the new folders in.
4. Restart the game.

To uninstall, delete the two folders.

## Troubleshooting

**"Incomplete or invalid encoded string" in RestedXP's Import window.** That window is only for
guide codes that RestedXP issues itself. RestedXP encrypts each code for one Battle.net account,
so pasted guide text, or a code from someone else, always fails there. These guides install as
addons instead (steps 2 to 5). Nothing needs pasting.

**The guides aren't in the guide list.**
- Check the folder layout in step 4. A `.toc` file one folder too deep is the usual cause.
- Restart the game rather than `/reload`.
- Check the addons are ticked at character select, and that RestedXP is installed.
- Type `/secrets`. If it lists the secrets, Secret Guides is loaded and only RestedXP is missing.

**I only see Secret Guides, not the Riverglades guides.** The Riverglades guides are for the
Horde. RestedXP hides them from Alliance characters.

**A step is wrong or out of date.** Open an issue with the guide name and the step's text.
