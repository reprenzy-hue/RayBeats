# RayBeats - Local Music Player

![RayBeats Preview](https://raw.githubusercontent.com/reprenzy-hue/RayBeats/refs/heads/main/raybeats_preview.png)

RayBeats is a lightweight, fully-featured **local music player for Roblox**, designed to enhance your in-game audio experience. With a clean and modern UI inspired by Sirius' Rayfield library, it allows you to manage, play, and manipulate your music files directly from a customized GUI interface. 

---

## Run RayBeats
```lua
mberoh, proyeke durong dadi
```
Put this in your executor and execute.

---

## Features Overview

RayBeats comes packed with a comprehensive set of features that give you full control over your music experience:

### 1. **Playback Controls**
- **Play / Pause Button**: Toggle playback of the currently loaded track.
- **Seek Buttons (-10s / +10s)**: Jump backward or forward in the track by 10 seconds for precise control over playback.
- **Stop Button**: Stop music completely.
- **Now Playing Label**: Displays the current song name in real time.
- **Duration Label**: Shows the current position and total duration of the playing track in `MM:SS / MM:SS` format.

### 2. **Looping and Playlist Control**
- **Loop Current Song Toggle**: Enables repeating the currently playing song continuously.
- **Active Playlist Label**: Indicates the currently selected playlist.
- **Automatic Playlist Sorting**: Songs are automatically sorted based on numeric prefixes, uppercase/lowercase, and alphabetical order for easy navigation.
- **Dynamic Playlist Tabs**: Every folder inside the `RayBeats` directory becomes a separate playlist tab in the GUI.

### 3. **Audio Effects**
- **Bass Booster Toggle**: Adds an Equalizer effect with enhanced low-frequency gain (`LowGain = 6`) to enrich bass-heavy tracks.
- **Reverb Dropdown (Global)**: Apply one of 28 built-in reverb presets to the SoundService's ambient reverb. Options include `NoReverb`, `GenericReverb`, `Room`, `Auditorium`, `ConcertHall`, `Cave`, `Forest`, `City`, `UnderWater`, and many more.

### 4. **Playback Speed**
- **Playback Speed Slider**: Adjust the speed of the current track from `0x` to `2x` with fine control (`0.01` increments). Ideal for practicing music or fast-forward listening.
- **Reset Playback Speed Button**: Instantly resets playback speed to the default `1x`.

### 5. **Volume Controls**
- **Music Volume Slider**: Adjusts the volume of the currently playing song independently from other game sounds.
- **Game Volume Slider**: Dynamically scales the volume of all other game sounds in relation to the chosen percentage. Original volumes are preserved and restored if volume is set back to 100%.
- **Automatic Volume Management**: Any new Sound objects added to the game automatically inherit the set game volume proportionally.

### 6. **User Interface**
- **Customizable Theme**: RayBeats features a `CyanDarkThemeCalm` that defines colors for text, background, sliders, toggles, tabs, and notifications for a consistent, modern look.
- **Dynamic Loading Titles**: Randomly displays one of 100+ witty loading titles during GUI initialization, adding personality to the startup process.
- **Responsive GUI Tabs**: Supports two main tabs: `Controls` (for playback and effects) and `Misc` (for usage instructions and metadata).

### 7. **Miscellaneous**
- **How to Use Instructions**: Included in the `Misc` tab and initial `readme.txt` in the `RayBeats` folder, guiding users to create playlists and import `.mp3` files.
- **Destroy Button**: Gracefully closes the RayBeats GUI, stops any playing song, resets SoundService reverb, and cleans up all resources.
- **Starter Sound**: Plays a short introductory sound to signal that RayBeats has successfully loaded.
- **Configuration Saving Disabled**: Prevents automatic saving of GUI state to avoid conflicts or unwanted persistence.

### 8. **File Management**
- **Playlist Folder Detection**: Automatically detects folders inside the `RayBeats` directory to generate tabs.
- **MP3 File Detection**: Only `.mp3` files are recognized and listed as playable tracks.
- **Custom Asset Support**: Uses `getcustomasset()` to load local files into Roblox Sound objects.
- **Song Name Parsing**: Removes `.mp3`, `.wav`, or `.ogg` extensions for display in GUI and notifications.

---

## Installation & Usage

1. Ensure your executor can read local files.
2. Locate or create the `RayBeats` folder in your executor workspace.
3. Create subfolders for playlists, e.g., `Pop`, `Rock`, `Lofi`.
4. Add your `.mp3`, `.wav`, or `.ogg` files to these subfolders.
5. Re-execute the RayBeats script to load songs into the GUI.
6. Interact with the GUI to play music, adjust volume, apply effects, or manage playlists.

Example directory structure:

```
RayBeats/
├─ readme.txt                # Basic usage instructions (auto-created by script)
├─ Playlist1/                # Playlist Example
│  ├─ song1.mp3
│  ├─ song2.mp3
│  └─ song3.mp3
├─ Playlist2/
│  ├─ track1.mp3
│  └─ track2.mp3
├─ Playlist3/
│  └─ chillbeat.mp3
└─ ...
```

---

## Credits
- **Created by:** Fyan/FyanDev/FyanDeveloper
- **UI by:** Sirius (Rayfield Library)  
- **Idea by:** .ravex on Discord  

RayBeats is **open source** and designed to be extensible for advanced Roblox audio manipulation.

---

This README documents **every functional feature** present in the script, from playback and effects to file handling and GUI behavior, providing a full overview for developers or users aiming to use or extend RayBeats.
