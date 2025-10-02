--// RayBeats - Local Music Player
--// Once again, This is NOT an AI-generated script, Indentation like this '	' used to make it more minimalist and professional.

local RayfieldLibrary
local success, errorMessage = pcall(function()
	RayfieldLibrary = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()
end)

if not success or not RayfieldLibrary then
	game.StarterGui:SetCore("SendNotification", {
		Title = "RayBeats System",
		Text = "Failed to load Rayfield Library: " .. (errorMessage or "Unknown issue") .. ". Check internet/executor and try again.",
		Duration = 5
	})
	return
end

local SoundService = game:GetService("SoundService")
local currentSound = nil
local internalChange = false
local currentSoundVolume = 1
local currentTrackName = "None"
local isLooped = false
local shuffleEnabled = false
local bassBoost = nil
local running = true
local runLabel = true
local setCallback = true
local currentSpeed = 1
local activePlaylist = "None"
local playPause, shufflePlaylist, loopTrack, loopPlaylist
local isPlaylistLooped = false
local playlists = {}
local playlistIndex = {}
local playedTracks = {}

--// RayBeats System Info
local raybeatsVersion = "4.4"
local raybeatsBuild = "2025.10.01"
local raybeatsRelease = "Stable"
local raybeatsType = "<b><font color='rgb(34, 139, 34)'>Open Source</font></b>"

local starterSound = Instance.new("Sound")	
starterSound.Parent = SoundService
starterSound.Name = "RayBeats Starter Sound"
starterSound.SoundId = "rbxassetid://108626032093243"
starterSound.Volume = 0.9
starterSound.Looped = false

--// Error Sound (bruh)
function startErrorSound()
	local folderPath = "Rayfield"
	local filePath = folderPath .."/error.mp3"
	local fileUrl = "https://raw.githubusercontent.com/reprenzy-hue/RayBeats/refs/heads/main/error.mp3"

	if not isfile(filePath) then
		local response = request({Url = fileUrl, Method = "GET"})
		if response and response.Body then
			if not isfolder(folderPath) then
				writefile("error.mp3", response.Body)
			else
				writefile(filePath, response.Body)
			end
		else
			warn("An error occurred while downloading assets.")
			return
		end
	end

	local errorSound = Instance.new("Sound")
	errorSound.Parent = game.CoreGui
	errorSound.Name = "RayBeats Error Sound"
	errorSound.SoundId = getcustomasset(filePath)
	errorSound.Volume = 1.1
	errorSound.Looped = false
	errorSound:Play()

	errorSound.Ended:Connect(function()
		errorSound:Destroy()
	end)
end

local StoneCream = { -- my pfp color
	TextColor				  	  = Color3.fromRGB(230, 230, 230),
	PlaceholderColor			  = Color3.fromRGB(140, 140, 140),

	Background					  = Color3.fromRGB(22, 22, 24),
	Topbar						  = Color3.fromRGB(28, 28, 30),
	Shadow					  	  = Color3.fromRGB(15, 15, 17),

	NotificationBackground	  	  = Color3.fromRGB(20, 20, 22),
	NotificationActionsBackground = Color3.fromRGB(35, 35, 38),

	TabBackground				  = Color3.fromRGB(35, 35, 38),
	TabStroke					  = Color3.fromRGB(50, 50, 53),
	TabBackgroundSelected		  = Color3.fromRGB(220, 215, 180),
	TabTextColor				  = Color3.fromRGB(230, 230, 230),
	SelectedTabTextColor		  = Color3.fromRGB(22, 22, 24),

	ElementBackground			  = Color3.fromRGB(32, 32, 35),
	ElementBackgroundHover		  = Color3.fromRGB(42, 42, 45),
	SecondaryElementBackground	  = Color3.fromRGB(22, 22, 24),
	ElementStroke				  = Color3.fromRGB(55, 55, 58),
	SecondaryElementStroke		  = Color3.fromRGB(45, 45, 48),
			
	SliderBackground			  = Color3.fromRGB(40, 40, 43),
	SliderProgress				  = Color3.fromRGB(195, 180, 145),
	SliderStroke				  = Color3.fromRGB(190, 185, 150),

	ToggleBackground			  = Color3.fromRGB(32, 32, 35),
	ToggleEnabled				  = Color3.fromRGB(220, 215, 180),
	ToggleDisabled				  = Color3.fromRGB(100, 100, 100),
	ToggleEnabledStroke			  = Color3.fromRGB(190, 185, 150),
	ToggleDisabledStroke		  = Color3.fromRGB(70, 70, 70),
	ToggleEnabledOuterStroke	  = Color3.fromRGB(22, 22, 24),
	ToggleDisabledOuterStroke	  = Color3.fromRGB(50, 50, 53),

	DropdownSelected			  = Color3.fromRGB(42, 42, 45),
	DropdownUnselected			  = Color3.fromRGB(32, 32, 35),

	InputBackground				  = Color3.fromRGB(32, 32, 35),
	InputStroke				 	  = Color3.fromRGB(55, 55, 58)
}

local Titles = {
	"Setting up your music player...",
	"Preparing your music vibes...",
	"Loading up the music engine...",
	"Getting your tunes ready...",
	"Powering up the player...",
	"Booting your sound system...",
	"Starting the music session...",
	"Initializing your beats...",
	"Tuning the player for you...",
	"Your music player is almost ready...",
	"Calibrating sound waves...",
	"Spinning up the audio system...",
	"Dropping the beat loader...",
	"Lining up your tracks...",
	"Charging up the sound system...",
	"Hitting play in style...",
	"Mixing the intro sounds...",
	"Priming your headphones...",
	"Unlocking your playlists...",
	"Warming up the bass...",
	"Plugging into your music...",
	"Running the sound check...",
	"Unpacking your vibes...",
	"Prepping the rhythm engine...",
	"Getting bass boost ready...",
	"Firing up the speakers...",
	"Syncing your sound session...",
	"Building up the groove...",
	"Starting the audio core...",
	"Waking up your music hub...",
	"Organizing your sound files...",
	"Checking your waveforms...",
	"Packing in extra bass...",
	"Fueling your music journey...",
	"Loading your listening zone...",
	"Activating player core...",
	"Revving the audio driver...",
	"Cooking up the beats...",
	"Sharpening your playlist...",
	"Rewinding to start fresh...",
	"Lighting up the equalizer...",
	"Dropping the intro sequence...",
	"Energizing the player...",
	"Scanning for vibes...",
	"Installing groove system...",
	"Stabilizing sound output...",
	"Wiring up the soundboard...",
	"Aligning the tracks...",
	"Pumping airwaves...",
	"Striking the first chord...",
	"Igniting the player engine...",
	"Optimizing the speakers...",
	"Launching your tracks...",
	"Buffing the playlist...",
	"Gearing up the music deck...",
	"Compiling sound data...",
	"Mapping your music journey...",
	"Ready to vibe...",
	"Lubricating the sound gears...",
	"Configuring bass system...",
	"Reviving the music hub...",
	"Fetching your playlists...",
	"Cranking up the volume...",
	"Leveling your audio session...",
	"Patching the sound waves...",
	"Streaming intro beats...",
	"Balancing the mixer...",
	"Priming the speakers...",
	"Loading up the chill zone...",
	"Lifting the audio curtain...",
	"Preparing the beat drop...",
	"Warming up the tracklist...",
	"Aligning the headphones...",
	"Stirring the sound pot...",
	"Loading hidden tracks...",
	"Spicing up your beats...",
	"Powering the groove core...",
	"Tuning the audio strings...",
	"Summoning your music flow...",
	"Installing rhythm drivers...",
	"Arranging your tunes...",
	"Plugging into the vibe source...",
	"Getting audio chips ready...",
	"Rolling the audio dice...",
	"Waking the bass monster...",
	"Shuffling your melodies...",
	"Building sonic layers...",
	"Polishing the sound surface...",
	"Refilling sound energy...",
	"Charging up treble boost...",
	"Loading sample packs...",
	"Looping the first rhythm...",
	"Boosting the subwoofer...",
	"Sorting the playlist vibes...",
	"Unfolding music canvas...",
	"Catching the waveforms...",
	"Igniting sound sparks...",
	"Stacking the harmony...",
	"Tightening drum kicks...",
	"Painting with melodies...",
	"Cooking rhythm soup...",
	"Lubing up sound tubes...",
	"Loading the jam session...",
	"Assembling the band...",
	"Blowing the first whistle...",
	"Checking tempo stability...",
	"Pressing play on vibes...",
	"Fastening sound cables...",
	"Fueling treble engine...",
	"Mapping echo chambers...",
	"Baking audio layers...",
	"Shining music gems...",
	"Hooking sound hooks...",
	"Wrapping your playlist...",
	"Amplifying your journey...",
	"Pumping melody veins...",
	"Greasing the beat machine...",
	"Reloading your tracks...",
	"Beating the drum roll...",
	"Wiring groove circuits...",
	"Launching harmony system...",
	"Polishing sound textures...",
	"Drafting audio session...",
	"Unpacking sonic vibes...",
	"Fast-forwarding startup...",
	"Planting sound seeds...",
	"Growing melody trees...",
	"Summoning vibe spirits...",
	"Aligning tempo beats...",
	"Charging harmony cells...",
	"Mending broken tracks...",
	"Shining up bassline...",
	"Drafting chorus setup...",
	"Ticking rhythm clock...",
	"Balancing left-right sound...",
	"Unlocking audio vault...",
	"Booting beat processors...",
	"Sharpening synth keys...",
	"Testing vocal layers...",
	"Aligning groove particles...",
	"Programming music code...",
	"Recharging melody flow...",
	"Fine-tuning balance...",
	"Assembling audio pieces...",
	"Stretching tempo strings...",
	"Loading acoustic vibes...",
	"Mixing deep reverb...",
	"Clipping audio start...",
	"Injecting stereo effect...",
	"Shaping the wave curve..."
}

local Sebutan = {
	"Scripter","Coder","Programmer","Developer","Debugger",
	"Function Maker","Code Wizard","Lua Lord","API Hunter","Syntax Master",
	"Script Architect","Logic Crafter","Code Alchemist","Variable Master","Function Lord",
	"Runtime Hacker","Console Tamer","Algorithm Kid","Code Breaker","Loop Lord",
	"Script Samurai","Code Ninja","Runtime Ruler","API Wizard","Module Maker",
	"Debug Slayer","Algorithm Lord","Code Hunter","Script Prodigy","Console Lord",
	"Bit Crafter","Error Fixer","Syntax Hacker","Data Coder","Logic Hacker",
	"Loop Breaker","Script Demon","Code Gladiator","Memory Handler","Runtime Kid",
	"Builder","Game Dev","Studio Expert","Obby Maker","GUI Designer",
	"Animator","Plugin Maker","LocalPlayer Ruler","Modeler","Script Executor",
	"Tycoon Builder","Simulator Dev","HD Admin Master","Baseplate Ruler","Part Manipulator",
	"Physics Hacker","Event Handler","Remote Caller","GUI Wizard","Server-Side Slayer",
	"Mesh Maker","Lighting Lord","Game Architect","Server Dev","Local Dev",
	"Part Builder","Roblox Engineer","Asset Crafter","Studio Hacker","Roblox Innovator",
	"Themer","App Builder","KLWP Master","KWGT Ruler","APK Editor",
	"Widget Maker","Customizer","ROM Freak","Android Hacker","Automator",
	"UI/UX Architect","Widget Crafter","Material You Freak","Overlay Hacker","Shortcut Engineer",
	"Launcher Wizard","APK Patcher","Beta Breaker","Root Lord","System Tinkerer",
	"UI Tuner","Widget Hacker","Launcher Lord","Shortcut Master","Custom ROMer",
	"System Modder","APK Hacker","UI/UX Hacker","Theme Builder","Android Architect",
}

local Window = RayfieldLibrary:CreateWindow({
	Name = "RayBeats",
	LoadingTitle = Titles[math.random(1, #Titles)],
	LoadingSubtitle = "Initializing RayBeats System",
	ShowText = "RayBeats",
	Icon = 93626130496227,
	Theme = StoneCream,
	DisableRayfieldPrompts = true,
	ToggleUIKeybind = "R",
	ConfigurationSaving = { Enabled = false },
	Discord = { Enabled = false },
	KeySystem = false
})

local ControlsTab = Window:CreateTab("Controls", "sliders-horizontal")

ControlsTab:CreateSection("Track Info")

local nowPlayingLabel = ControlsTab:CreateLabel("<b>Now Playing</b> None", "play", Color3.fromRGB(42, 65, 70))
local durationLabel = ControlsTab:CreateLabel("<b>Duration</b> 00:00 <font transparency='0.6'>/</font> 00:00", "hourglass", Color3.fromRGB(31, 48, 51))
local playlistLabel = ControlsTab:CreateLabel("<b>Active Playlist</b> None", "list-video", Color3.fromRGB(20, 31, 33))

ControlsTab:CreateSection("Controls")

ControlsTab:CreateButton({
	Name = "Rewind <b>10s</b>",
	Callback = function()
		if currentSound then
			currentSound.TimePosition = math.max(0, currentSound.TimePosition - 10)
		else
			RayfieldLibrary:Notify({
				Title = "RayBeats System",
				Content = "No tracks playing!",
				Image = "circle-slash",
				Duration = 3
			})
			startErrorSound()
		end
	end
})

local function getFileName(path)
	if not path or type(path) ~= "string" then return "Unknown" end
	path = path:gsub("[\\/]+$", "")
	return path:match("([^\\/]+)$") or "Unknown"
end

ControlsTab:CreateButton({
	Name = "Previous Track",
	Callback = function()
		if not activePlaylist or activePlaylist == "None" or not playlists[activePlaylist] or #playlists[activePlaylist] == 0 then
			RayfieldLibrary:Notify({
				Title = "RayBeats System",
				Content = "No active playlist or tracks available! Please select a track first.",
				Image = "circle-slash",
				Duration = 4
			})
			startErrorSound()
			return
		end

		local currentIndex = playlistIndex[activePlaylist] or 1
		local prevIndex = currentIndex - 1
		if prevIndex < 1 then
			prevIndex = #playlists[activePlaylist]
		end
		local prevFile = playlists[activePlaylist][prevIndex]
		local prevSongName = getFileName(prevFile):gsub("%.[^.]+$", "")
		playlistIndex[activePlaylist] = prevIndex
		playTrack(prevFile, prevSongName, activePlaylist)
	end,
})

playPause = ControlsTab:CreateToggle({
	Name = "Pause <font transparency='0.6'>/</font> Resume",
	CurrentValue = false,
	Callback = function(value)
		if internalChange then 
			internalChange = false
			return
		end

		if currentSound then
			if value then
				currentSound:Resume()
			else
				currentSound:Pause()
			end
		else
			if setCallback then
				RayfieldLibrary:Notify({
					Title = "RayBeats System",
					Content = "No tracks playing!",
					Image = "circle-slash",
					Duration = 3
				})
				startErrorSound()
				task.wait(0.5)
				internalChange = true
				playPause:Set(false)
			end
		end
	end,
})

ControlsTab:CreateButton({
	Name = "Next Track",
	Callback = function()
		if not activePlaylist or activePlaylist == "None" or not playlists[activePlaylist] or #playlists[activePlaylist] == 0 then
			RayfieldLibrary:Notify({
				Title = "RayBeats System",
				Content = "No active playlist or tracks available! Please select a track first.",
				Image = "circle-slash",
				Duration = 4
			})
			startErrorSound()
			return
		end

		local currentIndex = playlistIndex[activePlaylist] or 1
		local nextIndex = currentIndex + 1
		if nextIndex > #playlists[activePlaylist] then
			nextIndex = 1
		end
		local nextFile = playlists[activePlaylist][nextIndex]
		local nextSongName = getFileName(nextFile):gsub("%.[^.]+$", "")
		playlistIndex[activePlaylist] = nextIndex
		playTrack(nextFile, nextSongName, activePlaylist)
	end,
})

ControlsTab:CreateButton({
	Name = "Forward <b>10s</b>",
	Callback = function()
		if currentSound then
			local newPos = currentSound.TimePosition + 10
			if newPos < currentSound.TimeLength then
				currentSound.TimePosition = newPos
			else
				currentSound.TimePosition = currentSound.TimeLength - 0.1
			end
		else
			RayfieldLibrary:Notify({
				Title = "RayBeats System",
				Content = "No tracks playing!",
				Image = "circle-slash",
				Duration = 3
			})
			startErrorSound()
		end
	end
})

ControlsTab:CreateButton({
	Name = "Stop Track",
	Callback = function()
		if currentSound and currentSound.IsPlaying then
			local endedConnection = currentSound:GetAttribute("EndedConnection")
			if endedConnection then
				endedConnection:Disconnect()
			end
			currentSound.TimePosition = 0
			currentSound:Pause()
			if nowPlayingLabel then
				nowPlayingLabel:Set("<b>Now Playing</b> None", "play", Color3.fromRGB(42, 65, 70))
			end
			if durationLabel then
				durationLabel:Set("<b>Duration</b> 00:00 <font transparency='0.6'>/</font> 00:00", "hourglass", Color3.fromRGB(31, 48, 51))
			end
			if playlistLabel then
				playlistLabel:Set("<b>Active Playlist</b> None", "list-video", Color3.fromRGB(20, 31, 33))
			end
			activePlaylist = "None"
			playedTracks = {}
			playPause:Set(false)
			currentSound:Destroy()
		else
			RayfieldLibrary:Notify({
				Title = "RayBeats System",
				Content = "You haven't played any tracks yet!",
				Image = "circle-slash",
				Duration = 4
			})
			startErrorSound()
		end
	end
})

loopPlaylist = ControlsTab:CreateToggle({
	Name = "Loop Playlist",
	CurrentValue = false,
	Callback = function(value)
		isPlaylistLooped = value
		if value then
			RayfieldLibrary:Notify({
				Title = "RayBeats System",
				Content = "Playlist loop activated! Will repeat after last track.",
				Image = "repeat",
				Duration = 3
			})
			if isLooped then
				loopTrack:Set(false)
			end
			if shuffleEnabled then
				shufflePlaylist:Set(false)
			end
		else
			RayfieldLibrary:Notify({
				Title = "RayBeats System",
				Content = "Playlist loop deactivated.",
				Image = "repeat",
				Duration = 3
			})
		end
	end,
})

loopTrack = ControlsTab:CreateToggle({
	Name = "Loop Track",
	CurrentValue = false,
	Callback = function(value)
		isLooped = value
		if currentSound then
			currentSound.Looped = isLooped
		end
		if value then
			RayfieldLibrary:Notify({
				Title = "RayBeats System",
				Content = "The current track will be repeated continuously.",
				Image = "repeat",
				Duration = 3
			})
			if isPlaylistLooped then
				loopPlaylist:Set(false)
			end
			if shuffleEnabled then
				shufflePlaylist:Set(false)
			end
		else
			RayfieldLibrary:Notify({
				Title = "RayBeats System",
				Content = "The current track will not be repeated again.",
				Image = "repeat",
				Duration = 3
			})
		end
	end,
})

shufflePlaylist = ControlsTab:CreateToggle({
	Name = "Shuffle Playlist",
	CurrentValue = false,
	Callback = function(value)
		shuffleEnabled = value
		if value then
			RayfieldLibrary:Notify({
				Title = "RayBeats System",
				Content = "Shuffle mode activated! Next track will be random.",
				Image = "shuffle",
				Duration = 3
			})
			if isLooped then
				loopTrack:Set(false)
			end
			if isPlaylistLooped then
				loopPlaylist:Set(false)
			end
		else
			RayfieldLibrary:Notify({
				Title = "RayBeats System",
				Content = "Shuffle mode deactivated.",
				Image = "shuffle",
				Duration = 3
			})
		end
	end,
})

ControlsTab:CreateSection("Effects")

ControlsTab:CreateToggle({
	Name = "Track Bass Booster",
	CurrentValue = false,
	Callback = function(val)
		if currentSound then
			if val then
				if not bassBoost then
					bassBoost = Instance.new("EqualizerSoundEffect")
					bassBoost.Name = "RayBeats Bass Boost"
					bassBoost.Parent = currentSound
					bassBoost.LowGain = 8
					bassBoost.MidGain = 3
					bassBoost.HighGain = 0
				end
			else
				if bassBoost then
					bassBoost:Destroy()
					bassBoost = nil
				end
			end
		end
	end,
})

local reverbMap = {
	["NoReverb"] = Enum.ReverbType.NoReverb,
	["GenericReverb"] = Enum.ReverbType.GenericReverb,
	["PaddedCell"] = Enum.ReverbType.PaddedCell,
	["Room"] = Enum.ReverbType.Room,
	["Bathroom"] = Enum.ReverbType.Bathroom,
	["LivingRoom"] = Enum.ReverbType.LivingRoom,
	["StoneRoom"] = Enum.ReverbType.StoneRoom,
	["Auditorium"] = Enum.ReverbType.Auditorium,
	["ConcertHall"] = Enum.ReverbType.ConcertHall,
	["Cave"] = Enum.ReverbType.Cave,
	["Arena"] = Enum.ReverbType.Arena,
	["Hangar"] = Enum.ReverbType.Hangar,
	["CarpettedHallway"] = Enum.ReverbType.CarpettedHallway,
	["Hallway"] = Enum.ReverbType.Hallway,
	["StoneCorridor"] = Enum.ReverbType.StoneCorridor,
	["Alley"] = Enum.ReverbType.Alley,
	["Forest"] = Enum.ReverbType.Forest,
	["City"] = Enum.ReverbType.City,
	["Mountains"] = Enum.ReverbType.Mountains,
	["Quarry"] = Enum.ReverbType.Quarry,
	["Plain"] = Enum.ReverbType.Plain,
	["ParkingLot"] = Enum.ReverbType.ParkingLot,
	["SewerPipe"] = Enum.ReverbType.SewerPipe,
	["UnderWater"] = Enum.ReverbType.UnderWater
}

local globalReverb = ControlsTab:CreateDropdown({
	Name = "Reverb <font transparency='0.6'>Global</font>",
	Options = {
		"NoReverb", "GenericReverb", "PaddedCell", "Room", "Bathroom",
		"LivingRoom", "StoneRoom", "Auditorium", "ConcertHall", "Cave",
		"Arena", "Hangar", "CarpettedHallway", "Hallway", "StoneCorridor",
		"Alley", "Forest", "City", "Mountains", "Quarry",
		"Plain", "ParkingLot", "SewerPipe", "UnderWater"
	},
	CurrentOption = "NoReverb",
	Callback = function(reverbOption)
		local selected = reverbOption[1]
		game:GetService("SoundService").AmbientReverb = reverbMap[selected]
	end
})

local playbackSpeed = ControlsTab:CreateSlider({
	Name = "Track Playback Speed",
	Range = {0, 2},
	Increment = 0.01,
	Suffix = "x",
	CurrentValue = 1,
	Callback = function(v)
		local formatted = string.format("%.2f", v)
		formatted = formatted:gsub("%.?0+$", "")
		
		currentSpeed = tonumber(formatted)
		if currentSound then
			currentSound.PlaybackSpeed = currentSpeed
		end
	end
})

ControlsTab:CreateSection("Speed Effect")

ControlsTab:CreateButton({
	Name = "Slow",
	Callback = function()
		playbackSpeed:Set(0.91)
	end,
})

ControlsTab:CreateButton({
	Name = "Slower",
	Callback = function()
		playbackSpeed:Set(0.87)
	end,
})

ControlsTab:CreateButton({
	Name = "Slowest",
	Callback = function()
		playbackSpeed:Set(0.82)
	end,
})

ControlsTab:CreateButton({
	Name = "Nightcore <font transparency='0.6'>Speed Up</font>",
	Callback = function()
		playbackSpeed:Set(1.2)
	end,
})

ControlsTab:CreateButton({
	Name = "Reset Track Playback Speed",
	Callback = function()
		currentSpeed = 1
		if currentSound then
			currentSound.PlaybackSpeed = 1
		end
		playbackSpeed:Set(1) 
	end
})

ControlsTab:CreateSection("Volume")

local trackVolume = ControlsTab:CreateSlider({
	Name = "Track Volume",
	Range = {0, 100},
	Increment = 1,
	Suffix = "%",
	CurrentValue = 100,
	Callback = function(val)
		currentSoundVolume = val / 100
		if currentSound then
			currentSound.Volume = currentSoundVolume
		end
	end,
})

local gameVolume = ControlsTab:CreateSlider({
	Name = "Game Volume",
	Range = {0, 100},
	Increment = 1,
	Suffix = "%",
	CurrentValue = 100,
	Callback = function(val)
		for _, obj in ipairs(game:GetDescendants()) do
			if obj:IsA("Sound") and obj ~= currentSound then
				if val == 100 then
					obj.Volume = obj:GetAttribute("OriginalVolume") or obj.Volume
				else
					if not obj:GetAttribute("OriginalVolume") then
						obj:SetAttribute("OriginalVolume", obj.Volume)
					end
					obj.Volume = (val/100) * (obj:GetAttribute("OriginalVolume") or obj.Volume)
				end
			end
		end
	end,
})

game.DescendantAdded:Connect(function(obj)
	if obj:IsA("Sound") and obj ~= currentSound then
		obj:SetAttribute("OriginalVolume", obj.Volume)
		local val = gameVolume.CurrentValue
		if val < 100 then
			obj.Volume = (val/100) * (obj:GetAttribute("OriginalVolume") or obj.Volume)
		end
	end
end)

local MiscTab = Window:CreateTab("Misc", "info")

MiscTab:CreateLabel("If you use a headset/headphone, <b>Please lower the volume</b> below 60% to avoid damaging your ears.", "ear", Color3.fromRGB(255, 100, 100), false)
MiscTab:CreateDivider()
MiscTab:CreateSection("Information")

MiscTab:CreateParagraph({
	Title = " <font transparency='0.6'>- //</font> <b>How to use RayBeats</b>",
	Content = [[
In order for tracks to be added to RayBeats, You must open your device's file explorer and find the dedicated workspace for your executor, Once you've done that find 'RayBeats' and create a folder in there for your playlist.

Once you have made the folder you can import your <font face='RobotoMono'>.mp3</font>, <font face='RobotoMono'>.ogg</font>, or <font face='RobotoMono'>.wav</font> files and re-execute the script.]]
})

MiscTab:CreateParagraph({
	Title = " <font transparency='0.6'>- //</font> <b>RayBeats v".. raybeatsVersion .." Build-".. raybeatsBuild .."</b>",
	Content = [[
<b>Created by <font color='rgb(220, 215, 180)'>Fyan</font></b> <font transparency='0.6'>or FyanDev</font>
<b>UI by <font color='rgb(147, 112, 219)'>Sirius</font></b> <font transparency='0.6'>including Shlex, Max, Damian, and iRay</font>
<b>Idea by <font color='rgb(255, 99, 71)'>.ravex</font></b> <font transparency='0.6'>on <font color='rgb(88, 101, 242)'>Discord</font></font>

- RayBeats is ]].. raybeatsType ..
"\n- ".. raybeatsRelease .. " Release"
})

local myInfo = MiscTab:CreateLabel("<b><font color='rgb(220, 215, 180)'>Fyan</font></b> - <b>12</b> years old, <b><mark color='#FFFFFF' transparency='0'><font color='#FF0000'>Indo</font></mark><mark color='#FF0000' transparency='0'>nesia</mark></b> 🇮🇩, The...", 119631975477627, Color3.fromRGB(170, 165, 130))
task.spawn(function()
	while runLabel do
		local randomTitle = "<b><font color='rgb(220, 215, 180)'>Fyan</font></b> - <b>12</b> years old, <b><mark color='#FFFFFF' transparency='0'><font color='#FF0000'>Indo</font></mark><mark color='#FF0000' transparency='0'>nesia</mark></b> 🇮🇩, The " .. Sebutan[math.random(1, #Sebutan)]
		myInfo:Set(randomTitle, 119631975477627, Color3.fromRGB(170, 165, 130))
		task.wait(1)
	end
end)

MiscTab:CreateSection("Other")
MiscTab:CreateButton({
	Name = "Subscribe on <b><font color='rgb(255,0,0)'>YouTube</font></b>",
	Callback = function()
		setclipboard("https://youtube.com/@fyandeveloper?si=B-HhhsLTq1iGzN8t")
	end,
})

MiscTab:CreateButton({
	Name = "<b><font color='#6E7681'>GitHub</font></b> Documentation",
	Callback = function()
		setclipboard("https://github.com/reprenzy-hue/RayBeats")
	end,
})

MiscTab:CreateButton({
	Name = "Reload RayBeats",
	Callback = function()
		running = false
		runLabel = false
		game:GetService("SoundService").AmbientReverb = Enum.ReverbType.NoReverb
		if RayfieldLibrary then
			RayfieldLibrary:Destroy()
		end
		if currentSound and currentSound.Parent then
			currentSound:Destroy()
			currentSound = nil
		end
		if bassBoost then
			bassBoost:Destroy()
		end
		loadstring(game:HttpGet('https://raw.githubusercontent.com/reprenzy-hue/RayBeats/refs/heads/main/source.lua'))()
	end,
})

MiscTab:CreateButton({
	Name = "Destroy RayBeats",
	Callback = function()
		running = false
		runLabel = false
		game:GetService("SoundService").AmbientReverb = Enum.ReverbType.NoReverb
		if RayfieldLibrary then
			RayfieldLibrary:Destroy()
		end
		if currentSound and currentSound.Parent then
			currentSound:Destroy()
			currentSound = nil
		end
		if bassBoost then
			bassBoost:Destroy()
		end
	end,
})

if not isfolder("RayBeats") then
	makefolder("RayBeats")
	writefile("RayBeats/readme.txt", [[
========================================
	 README - RayBeats Track Folder
========================================

This is the main folder for the RayBeats Music Player.

How to use:
1. Inside this folder, create subfolders to act as playlists.
   Example:
	 Pop/
	 Rock/
	 Lofi/

2. Put your .mp3 files into those subfolders.
   Example:
	 RayBeats/Pop/song1.mp3
	 RayBeats/Pop/song2.mp3
	 RayBeats/Rock/track1.mp3

3. Re-execute the RayBeats script to load your new tracks.

Enjoy your music!
]])
	RayfieldLibrary:Notify({
		Title = "RayBeats System", 
		Content = "'RayBeats' folder created. Ready to use.", 
		Image = "folder-check", 
		Duration = 6
	})
end

function playTrack(path, soundName, playlistName)
	if not getcustomasset then
		RayfieldLibrary:Notify({
			Title = "RayBeats System",
			Content = "This executor does not support local file playback. Please use an executor with 'getcustomasset' support.",
			Image = "alert-triangle",
			Duration = 5
		})
		return
	end

	activePlaylist = playlistName or "None"

	if currentSound then
		if bassBoost then
			bassBoost.Parent = SoundService
		end
		currentSound:Stop()
		currentSound:Destroy()
	end

	currentSound = Instance.new("Sound")
	currentSound.Name = "RayBeats // " .. soundName
	currentSound.SoundId = getcustomasset(path)
	currentSound.Parent = SoundService
	currentSound.Volume = currentSoundVolume
	currentSound.PlaybackSpeed = currentSpeed
	currentSound.Looped = isLooped

	task.delay(3, function()
		if currentSound and not currentSound.IsLoaded then
			RayfieldLibrary:Notify({
				Title = "RayBeats System",
				Content = "Something went wrong while playing this track, Please convert this track to the listed file format or Try again.",
				Image = "file-x",
				Duration = 5
			})
			startErrorSound()
			currentSound:Destroy()
			currentSound = nil
			activePlaylist = "None"
			nowPlayingLabel:Set("<b>Now Playing</b> None", "play", Color3.fromRGB(42, 65, 70))
			durationLabel:Set("<b>Duration</b> 00:00 <font transparency='0.6'>/</font> 00:00", "hourglass", Color3.fromRGB(31, 48, 51))
			playlistLabel:Set("<b>Active Playlist</b> None", "list-video", Color3.fromRGB(20, 31, 33))
			setCallback = false
			playPause:Set(false)
			task.wait(0.5)
			setCallback = true
		end
	end)

	local endedConnection
	currentSound.Loaded:Connect(function()
		if currentSound.IsLoaded then
			currentSound:Play()

			if bassBoost then
				bassBoost.Parent = currentSound
			end

			currentTrackName = getFileName(path)
			local name = getFileName(currentSound.SoundId or "<font color='rgb(255, 100, 100)'>Unknown</font>")
			if nowPlayingLabel then
				nowPlayingLabel:Set("<b>Now Playing</b> " .. (name or "<font color='rgb(255, 100, 100)'>Unknown</font>"), "play", Color3.fromRGB(42, 65, 70))
			end
			if playlistLabel then
				playlistLabel:Set("<b>Active Playlist</b> " .. (playlistName or "None"), "list-video", Color3.fromRGB(20, 31, 33))
			end

			RayfieldLibrary:Notify({
				Title = "Now Playing",
				Content = currentTrackName:gsub("%.[^.]+$", ""),
				Image = "play",
				Duration = 6
			})
			playPause:Set(true)

			endedConnection = currentSound.Ended:Connect(function()
				if isLooped then
					playPause:Set(true)
					return
				end

				if shuffleEnabled and activePlaylist and playlists[activePlaylist] and #playlists[activePlaylist] > 1 then
					table.insert(playedTracks, path)

					if #playedTracks >= #playlists[activePlaylist] then
						playedTracks = {}
					end

					local availableTracks = {}
					for i, track in ipairs(playlists[activePlaylist]) do
						if not table.find(playedTracks, track) then
							table.insert(availableTracks, {index = i, path = track})
						end
					end

					if #availableTracks > 0 then
						local randomTrack = availableTracks[math.random(1, #availableTracks)]
						local nextFile = randomTrack.path
						local nextSongName = getFileName(nextFile):gsub("%.[^.]+$", "")
						playlistIndex[activePlaylist] = randomTrack.index
						
						playTrack(nextFile, nextSongName, activePlaylist)
					else
						local randomIndex = math.random(1, #playlists[activePlaylist])
						local nextFile = playlists[activePlaylist][randomIndex]
						local nextSongName = getFileName(nextFile):gsub("%.[^.]+$", "")
						playlistIndex[activePlaylist] = randomIndex
						
						playTrack(nextFile, nextSongName, activePlaylist)
						
					end
				elseif isPlaylistLooped and activePlaylist and playlists[activePlaylist] and #playlists[activePlaylist] > 1 then
					local currentIndex = playlistIndex[activePlaylist] or 1
					local nextIndex = currentIndex + 1
					if nextIndex > #playlists[activePlaylist] then
						nextIndex = 1
					end
					local nextFile = playlists[activePlaylist][nextIndex]
					local nextSongName = getFileName(nextFile):gsub("%.[^.]+$", "")
					playlistIndex[activePlaylist] = nextIndex
					playTrack(nextFile, nextSongName, activePlaylist)
				else
					playPause:Set(false)
					if nowPlayingLabel then
						nowPlayingLabel:Set("<b>Now Playing</b> None", "play", Color3.fromRGB(42, 65, 70))
					end
					if durationLabel then
						durationLabel:Set("<b>Duration</b> 00:00 <font transparency='0.6'>/</font> 00:00", "hourglass", Color3.fromRGB(31, 48, 51))
					end
					activePlaylist = "None"
					if bassBoost then
						bassBoost.Parent = SoundService
					end
					currentSound:Destroy()
				end
			end)
		end
	end)

	currentSound:SetAttribute("EndedConnection", endedConnection)
end

local function sortTracks(files)
	table.sort(files, function(a, b)
		local nameA = getFileName(a):gsub("%.mp3$", "")
		local nameB = getFileName(b):gsub("%.mp3$", "")

		local numA = tonumber(nameA:match("^%s*(%d+)"))
		local numB = tonumber(nameB:match("^%s*(%d+)"))
		if numA and numB then
			if numA ~= numB then return numA < numB end
			local remA = nameA:match("^%s*%d+%s*(.*)") or ""
			local remB = nameB:match("^%s*%d+%s*(.*)") or ""
			return remA < remB
		elseif numA then
			return true
		elseif numB then
			return false
		end

		local startsUpperA = nameA:match("^%s*([A-Z])") ~= nil
		local startsUpperB = nameB:match("^%s*([A-Z])") ~= nil
		local startsLowerA = nameA:match("^%s*([a-z])") ~= nil
		local startsLowerB = nameB:match("^%s*([a-z])") ~= nil

		if startsUpperA and startsUpperB then
			return nameA < nameB
		end
		if startsUpperA and not startsUpperB then return true end
		if startsUpperB and not startsUpperA then return false end

		if startsLowerA and startsLowerB then
			return nameA < nameB
		end
		if startsLowerA and not startsLowerB then return true end
		if startsLowerB and not startsLowerA then return false end

		return nameA < nameB
	end)
	return files
end

for _, folder in pairs(listfiles("RayBeats")) do
	if isfolder(folder) then
		local tabName = getFileName(folder)
		local Tab = Window:CreateTab(tabName, "list-music")
		Tab:CreateSection("All tracks in " .. tabName)
		playlists[tabName] = {}

		local files = {}
		for _, file in pairs(listfiles(folder)) do
			if isfile(file) and (file:match("%.mp3$") or file:match("%.ogg$") or file:match("%.wav$")) then
				table.insert(files, file)
			end
		end

		files = sortTracks(files)

		for idx, file in ipairs(files) do
			table.insert(playlists[tabName], file)
			local buttonIndex = #playlists[tabName]
			local songName = getFileName(file):gsub("%.[^.]+$", "")
			Tab:CreateButton({
				Name = songName,
				Callback = function()
					activePlaylist = tabName
					playlistIndex[tabName] = buttonIndex
					playTrack(file, songName, tabName)
				end
			})
		end
	end
end

task.spawn(function()
	while running do
		task.wait(0.5)
		if not running then break end
		if currentSound then
			local time = math.floor(currentSound.TimePosition)
			local total = math.floor(currentSound.TimeLength)
			local function format(sec)
				local min = math.floor(sec / 60)
				local s = sec % 60
				return string.format("%02d:%02d", min, s)
			end
			durationLabel:Set("<b>Duration</b> " .. format(time) .. " <font transparency='0.6'>/</font> " .. format(total), "hourglass", Color3.fromRGB(31, 48, 51))
		else
			durationLabel:Set("<b>Duration</b> 00:00 <font transparency='0.6'>/</font> 00:00", "hourglass", Color3.fromRGB(31, 48, 51))
		end
	end
end)

starterSound:Play()
starterSound.Ended:Connect(function()
	starterSound:Destroy()
end)

--gw terlalu profesional bejirrr🗿🗿 eh iya, btw ge bener bener bocil indo loh
--yaa umur 12 udah bisa scriptiny, otodidak lah, gw pun awalnya juga bikin script oake bantuan ai🗿
--gw juga sering dapet nilai 100 di pelajaran b inggris
--dan modal mt manager cuyyyy😁
-- <font color='rgb(0,0,255)'>btw sound errornya... mwhehehe</font>
