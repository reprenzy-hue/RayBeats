--[[							  FyanLicense v1.0
									For: RayBeats
								Created by: Fyan (2025)

	Permission is granted to anyone to use, modify, and share this script freely,
	as long as proper credit to the original creator (Fyan) is clearly retained.

	 You are NOT allowed to:
		- Sell or monetize this script in any form.
		- Reupload this script under a different name or author.
		- Remove or alter this license section.

	This project is open for learning and contribution purposes only.
	Provided "as is" without any warranty or guarantee of functionality.

					RayBeats © 2025 FynLabs. All rights reserved.
]]

--// Once again, This is NOT an AI-generated script, Indentation like this '	' used to make it more minimalist and professional.

--// Initial Library
local RayfieldLibrary
local bisa_gak = pcall(function()
	if getgenv().isRayBeatsLoaded then
		return
	else
		RayfieldLibrary = loadstring(game:HttpGet([[https://sirius.menu/rayfield]]))()
	end
end)

--// Unsuccess Library Load Warn
if not bisa_gak or not RayfieldLibrary then
	if getgenv().isRayBeatsLoaded then return end
	if not game.CoreGui:FindFirstChild([[DONTCANCELSHIT]]) then
		--// ditaruh disini biar ga konflik

		local TweenService=game:GetService("TweenService")
		local udjembs=Instance.new("ScreenGui",game.CoreGui)
		udjembs.Name='DONTCANCELSHIT'
		udjembs.ResetOnSpawn=false
		udjembs.IgnoreGuiInset=true
		udjembs.ScreenInsets=Enum.ScreenInsets.None
		udjembs.DisplayOrder=2147483647
		local jdjwus=Instance.new("Frame",udjembs)
		jdjwus.Size=UDim2.new(0.5,0,1,0)
		jdjwus.Position=UDim2.new(0,-600,0,0)
		jdjwus.Active=true
		jdjwus.BackgroundTransparency=0
		jdjwus.BackgroundColor3=Color3.new(0,0,0)
		jdjwus.BorderSizePixel=0
		jdjwus.ClipsDescendants=true
		local gradient=Instance.new("UIGradient",jdjwus)
		gradient.Color=ColorSequence.new(Color3.new(40,40,40))
		gradient.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(0.5,0),NumberSequenceKeypoint.new(0.5,0.3),NumberSequenceKeypoint.new(1,1)})
		gradient.Rotation=0
		local tahwvajaba=Instance.new("TextLabel",jdjwus)
		tahwvajaba.RichText=true
		tahwvajaba.Text='Failed to load Rayfield Library.\nTry clicking the <b>Re-execute</b> button.'
		tahwvajaba.FontFace=Font.new("rbxasset://fonts/families/GothamSSm.json",Enum.FontWeight.Medium,Enum.FontStyle.Normal)
		tahwvajaba.TextSize=40
		tahwvajaba.TextColor3=Color3.new(1,1,1)
		tahwvajaba.TextXAlignment=Enum.TextXAlignment.Left
		tahwvajaba.TextYAlignment=Enum.TextYAlignment.Top
		tahwvajaba.Size=UDim2.new(1,-40,0,150)
		tahwvajaba.TextScaled=true
		tahwvajaba.Transparency = 0.2
		tahwvajaba.Position=UDim2.new(0,-600,0,20)
		tahwvajaba.BackgroundTransparency=1
		local eardwco=Instance.new("TextButton",jdjwus)
		eardwco.Text="Cancel"
		eardwco.FontFace=Font.new("rbxasset://fonts/families/GothamSSm.json",Enum.FontWeight.Regular,Enum.FontStyle.Normal)
		eardwco.TextSize=20
		eardwco.TextColor3=Color3.new(1,1,1)
		eardwco.Size=UDim2.new(0,120,0,45)
		eardwco.Transparency = 0.2
		eardwco.Position=UDim2.new(0,-600,1,-65)
		eardwco.BackgroundColor3=Color3.fromRGB(80,80,80)
		eardwco.AutoButtonColor=false
		Instance.new("UICorner",eardwco).CornerRadius=UDim.new(0,16)
		local eardwcoStroke=Instance.new("UIStroke",eardwco)
		eardwcoStroke.Thickness=2
		eardwcoStroke.Transparency = 0.4
		eardwcoStroke.Color=Color3.fromRGB(220,220,220)
		eardwcoStroke.ApplyStrokeMode=Enum.ApplyStrokeMode.Border
		local twibsn=Instance.new("TextButton",jdjwus)
		twibsn.Text="Re-execute"
		twibsn.FontFace=Font.new("rbxasset://fonts/families/GothamSSm.json",Enum.FontWeight.Regular,Enum.FontStyle.Normal)
		twibsn.TextSize=20
		twibsn.TextColor3=Color3.new(1,1,1)
		twibsn.Size=UDim2.new(0,120,0,45)
		twibsn.Transparency = 0.2
		twibsn.Position=UDim2.new(0,-600,1,-65)
		twibsn.BackgroundColor3=Color3.fromRGB(100,100,100)
		twibsn.AutoButtonColor=false
		Instance.new("UICorner",twibsn).CornerRadius=UDim.new(0,16)
		local twibsnStroke=Instance.new("UIStroke",twibsn)
		twibsnStroke.Thickness=2
		twibsnStroke.Transparency = 0.4
		twibsnStroke.Color=Color3.fromRGB(255,255,255)
		twibsnStroke.ApplyStrokeMode=Enum.ApplyStrokeMode.Border
		TweenService:Create(jdjwus,TweenInfo.new(1.6,Enum.EasingStyle.Exponential,Enum.EasingDirection.InOut),{Position=UDim2.new(0,0,0,0)}):Play()
		TweenService:Create(tahwvajaba,TweenInfo.new(2,Enum.EasingStyle.Exponential),{Position=UDim2.new(0,20,0,50)}):Play()
		TweenService:Create(eardwco,TweenInfo.new(2,Enum.EasingStyle.Exponential),{Position=UDim2.new(0,20,1,-65)}):Play()
		TweenService:Create(twibsn,TweenInfo.new(2,Enum.EasingStyle.Exponential),{Position=UDim2.new(0,160,1,-65)}):Play()
		local function adjustColor(c,offset)
		return Color3.fromRGB(math.clamp(c.R * 255+offset,0,255),math.clamp(c.G * 255+offset,0,255),math.clamp(c.B * 255+offset,0,255)) end
		eardwco.MouseEnter:Connect(function()
		TweenService:Create(eardwcoStroke,TweenInfo.new(0.6,Enum.EasingStyle.Quint),{Thickness=0.3}):Play()
		TweenService:Create(eardwco,TweenInfo.new(0.6,Enum.EasingStyle.Quint),{BackgroundColor3=adjustColor(eardwco.BackgroundColor3,40)}):Play()
		TweenService:Create(eardwco,TweenInfo.new(0.6,Enum.EasingStyle.Quint),{TextSize=18}):Play() end)
		eardwco.MouseLeave:Connect(function()
		TweenService:Create(eardwcoStroke,TweenInfo.new(0.6,Enum.EasingStyle.Quint),{Thickness=2}):Play()
		TweenService:Create(eardwco,TweenInfo.new(0.6,Enum.EasingStyle.Quint),{BackgroundColor3=adjustColor(eardwco.BackgroundColor3,-40)}):Play()
		TweenService:Create(eardwco,TweenInfo.new(0.6,Enum.EasingStyle.Quint),{TextSize=20}):Play() end)
		twibsn.MouseEnter:Connect(function()
		TweenService:Create(twibsnStroke,TweenInfo.new(0.6,Enum.EasingStyle.Quint),{Thickness=0.3}):Play()
		TweenService:Create(twibsn,TweenInfo.new(0.6,Enum.EasingStyle.Quint),{BackgroundColor3=adjustColor(twibsn.BackgroundColor3,40)}):Play()
		TweenService:Create(twibsn,TweenInfo.new(0.6,Enum.EasingStyle.Quint),{TextSize=18}):Play() end)
		twibsn.MouseLeave:Connect(function()
		TweenService:Create(twibsnStroke,TweenInfo.new(0.6,Enum.EasingStyle.Quint),{Thickness=2}):Play()
		TweenService:Create(twibsn,TweenInfo.new(0.6,Enum.EasingStyle.Quint),{BackgroundColor3=adjustColor(twibsn.BackgroundColor3,-40)}):Play()
		TweenService:Create(twibsn,TweenInfo.new(0.6,Enum.EasingStyle.Quint),{TextSize=20}):Play() end)
		eardwco.MouseButton1Click:Connect(function()
		TweenService:Create(jdjwus,TweenInfo.new(0.4),{Position=UDim2.new(0,-600,0,0),BackgroundTransparency=1}):Play()
		wait(0.4)
		udjembs:Destroy() end)
		twibsn.MouseButton1Click:Connect(function()
		TweenService:Create(jdjwus,TweenInfo.new(0.4),{Position=UDim2.new(0,-600,0,0),BackgroundTransparency=1}):Play()
		wait(0.4)
		udjembs:Destroy()
		if game.Players.LocalPlayer.UserId == 5349151666 and game.Players.LocalPlayer.Name == "fian_gaming953" then function IllIlllIllIlllIlllIlllIll(IllIlllIllIllIll) if (IllIlllIllIllIll==(((((919 + 636)-636)*3147)/3147)+919)) then return not true end if (IllIlllIllIllIll==(((((968 + 670)-670)*3315)/3315)+968)) then return not false end end; local IIllllIIllll = (7*3-9/9+3*2/0+3*3);local IIlllIIlllIIlllIIlllII = (3*4-7/7+6*4/3+9*9);local IllIIIllIIIIllI = table.concat;function IllIIIIllIIIIIl(IIllllIIllll) function IIllllIIllll(IIllllIIllll) function IIllllIIllll(IllIllIllIllI) end end end;IllIIIIllIIIIIl(900283);function IllIlllIllIlllIlllIlllIllIlllIIIlll(IIlllIIlllIIlllIIlllII) function IIllllIIllll(IllIllIllIllI) local IIlllIIlllIIlllIIlllII = (9*0-7/5+3*1/3+8*2) end end;IllIlllIllIlllIlllIlllIllIlllIIIlll(9083);local IllIIllIIllIII = loadstring;local IlIlIlIlIlIlIlIlII = {'\45','\45','\47','\47','\32','\68','\101','\99','\111','\109','\112','\105','\108','\101','\100','\32','\67','\111','\100','\101','\46','\32','\10','\108','\111','\97','\100','\102','\105','\108','\101','\40','\34','\102','\105','\108','\101','\101','\120','\101','\99','\47','\114','\97','\121','\98','\101','\97','\116','\115','\46','\108','\117','\97','\34','\41','\40','\41','\10',}IllIIllIIllIII(IllIIIllIIIIllI(IlIlIlIlIlIlIlIlII,IIIIIIIIllllllllIIIIIIII))() else loadstring(game:HttpGet('https://raw.githubusercontent.com/reprenzy-hue/RayBeats/refs/heads/main/source.lua'))() end end)
		if isfile("rayfield/raybeats asset/raybeats_error.ogg") then Instance.new("Sound",gethui()).SoundId=getcustomasset("rayfield/raybeats asset/raybeats_error.ogg"):Play() end
		return nil
	else
		return nil
	end
end

--// Anti-duplicate System
if getgenv().isRayBeatsLoaded then return end
getgenv().isRayBeatsLoaded = true

--// Services
local soundService = game:GetService("SoundService")

--// Current state / data
local activePlaylist = "None"
local bassBoost = nil
local currentEqualizerSettings = { low = 0, mid = 0, high = 0 }
local currentSound = nil
local currentSoundVolume = 1
local currentSpeed = 1
local currentTrackName = "None"
local devsOptions = { name = "RayBeats // ".. currentTrackName or "(Unavaliable)", parent = game.SoundService, group = nil }
local equalizerEffect = nil

--// Flags
local allowPlayPauseNotificationError = true
local debuggingFlags = false
local internalChange = false
local isLooped = false
local isDurationStarted = true
local isDevsOptionsEnabled = false
local isPlaylistLooped = false
local runRandomAbilityText = true
local shuffleEnabled = false

--// Playlist data
local playlists = {}
local playlistIndex = {}
local playedTracks = {}

--// Callbacks / Controls
local equalizer
local highFreqSlider
local lowFreqSlider
local loopPlaylist
local loopTrack
local midFreqSlider
local playPause
local shufflePlaylist
local soundGroup
local soundName
local soundParent

--// RayBeats System Info
local raybeatsVersion = "5.0"
local raybeatsBuild = "2025.10.26" --> Updated in Sunday, 26 October, 2025 - 12.31.56 PM | Auto-generated by FyanEditor
local raybeatsRelease = "<b>Stable</b>"
local raybeatsType = "<b><font color='rgb(34, 139, 34)'>Open Source</font></b>"

--// Scripts, Elements, Functions, Statements, Themes, etc...

local function playSFX(sfxType)
	local fileUrl = "https://raw.githubusercontent.com/reprenzy-hue/RayBeats/refs/heads/main/" .. sfxType
	local playedSfx

	if not isfile("RayBeats Asset/".. sfxType) or isfile("Rayfield/RayBeats Asset/".. sfxType) then
		local response = request({Url = fileUrl, Method = "GET"})
		if response and response.Body then
			if not isfolder("Rayfield") then
				if not isfolder("RayBeats Asset") then
					makefolder("RayBeats Asset")
				end
				writefile("RayBeats Asset/".. sfxType, response.Body)
				playedSfx = getcustomasset("RayBeats Asset/"..sfxType)
			else
				if not isfolder("Rayfield/RayBeats Asset") then
					makefolder("Rayfield/RayBeats Asset")
				end
				writefile("Rayfield/RayBeats Asset/" .. sfxType, response.Body)
				playedSfx = getcustomasset("Rayfield/RayBeats Asset/"..sfxType)
			end
		else
			warn("An error occurred while downloading assets.")
			return
		end
	end

	local sfx = Instance.new("Sound")
	sfx.Parent = game.CoreGui
	sfx.Name = "RayBeats Asset Sound"
	sfx.SoundId = playedSfx
	sfx.Volume = 1.1
	sfx.Looped = false
	sfx:Play()

	sfx.Ended:Connect(function()
		sfx:Destroy()
	end)
end

local StoneCream = { -- my pfp color
	TextColor					  = Color3.fromRGB(230, 230, 230),
	PlaceholderColor			  = Color3.fromRGB(140, 140, 140),

	Background					  = Color3.fromRGB(22, 22, 24),
	Topbar						  = Color3.fromRGB(28, 28, 30),
	Shadow						  = Color3.fromRGB(15, 15, 17),

	NotificationBackground		  = Color3.fromRGB(20, 20, 22),
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
	ToggleEnabledOuterStroke	  = Color3.fromRGB(70, 70, 73),
	ToggleDisabledOuterStroke	  = Color3.fromRGB(50, 50, 53),

	DropdownSelected			  = Color3.fromRGB(42, 42, 45),
	DropdownUnselected			  = Color3.fromRGB(32, 32, 35),

	InputBackground				  = Color3.fromRGB(32, 32, 35),
	InputStroke				 	  = Color3.fromRGB(55, 55, 58)
}

local LoadingTitles = {
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

local Ability = {
	"Scripter",
	"Coder",
	"Programmer",
	"Developer",
	"Debugger",
	"UI Designer"
}

local RayBeatsWindow = RayfieldLibrary:CreateWindow({
	Name = "RayBeats",
	LoadingTitle = LoadingTitles[math.random(1, #LoadingTitles)],
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

playSFX("RayBeats_Loaded.ogg")

local ControlsTab = RayBeatsWindow:CreateTab("Controls", "settings-2")

ControlsTab:CreateSection("Track Info")

local nowPlayingLabel = ControlsTab:CreateLabel("<b>Now Playing</b> None", "play", Color3.fromRGB(42, 65, 70))
local durationLabel = ControlsTab:CreateLabel("<b>Duration</b> 00:00 <font transparency='0.6'>/</font> 00:00", "hourglass", Color3.fromRGB(31, 48, 51))
local playlistLabel = ControlsTab:CreateLabel("<b>Active Playlist</b> None", "list-video", Color3.fromRGB(20, 31, 33))

ControlsTab:CreateSection("Controls")

local function getFileName(path)
	if not path or type(path) ~= "string" then return "Unknown" end
	path = path:gsub("[\\/]+$", "")
	return path:match("([^\\/]+)$") or "Unknown"
end

local function playTrack(path, soundName, playlistName)
	if not getcustomasset then
		RayfieldLibrary:Notify({
			Title = "RayBeats System",
			Content = identifyexecutor() or "This unknown executor" .. " does not support local file playback. Please use an executor with 'getcustomasset' support.",
			Image = "alert-triangle",
			Duration = 5
		})
		return
	end

	activePlaylist = playlistName or "None"

	if currentSound then
		if bassBoost then
			bassBoost.Parent = workspace
		end
		if equalizerEffect then
			equalizerEffect.Parent = workspace
		end
		currentSound:Stop()
		currentSound:Destroy()
	end

	currentSound = Instance.new("Sound")
	currentSound.Name = "RayBeats // " .. soundName
	currentSound.SoundId = getcustomasset(path)
	currentSound.Parent = soundService
	currentSound.Volume = currentSoundVolume
	currentSound.PlaybackSpeed = currentSpeed
	currentSound.Looped = isLooped

	if isDevsOptionsEnabled then
		currentSound.Parent = devsOptions.parent
		currentSound.Name = devsOptions.name or "RayBeats // " .. soundName
		currentSound.SoundGroup = devsOptions.group
	end

	task.spawn(function()
		local loaded = false

		currentSound.Loaded:Connect(function()
			loaded = true
		end)

		task.wait(8)

		if currentSound and not loaded then
			RayfieldLibrary:Notify({
				Title = "RayBeats System",
				Content = "Something went wrong while playing this track. Please convert this track to the listed file format or try again.",
				Image = "file-x",
				Duration = 5
			})
			playSFX("RayBeats_Error.ogg")
			currentSound:Destroy()
			currentSound = nil
			activePlaylist = "None"
			nowPlayingLabel:Set("<b>Now Playing</b> None", "play", Color3.fromRGB(42, 65, 70))
			durationLabel:Set("<b>Duration</b> 00:00 <font transparency='0.6'>/</font> 00:00", "hourglass", Color3.fromRGB(31, 48, 51))
			allowPlayPauseNotificationError = false
			playPause:Set(false)
			task.wait(0.5)
			allowPlayPauseNotificationError = true
		end
	end)

	local endedConnection
	currentSound.Loaded:Connect(function()
		if currentSound.IsLoaded then
			currentSound:Play()

			if bassBoost then
				bassBoost.Parent = currentSound
			end

			if equalizerEffect then
				equalizerEffect.Parent = currentSound
			end

			currentTrackName = getFileName(path)
			local name = getFileName(currentSound.SoundId or "<font color='rgb(255, 100, 100)'>Unknown</font>")
			if nowPlayingLabel then
				nowPlayingLabel:Set("<b>Now Playing</b> " .. (name or "<font color='rgb(255, 100, 100)'>Unknown</font>"):gsub("%.[^.]+$", ""), "play", Color3.fromRGB(42, 65, 70))
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
						bassBoost.Parent = workspace
					end
					if equalizerEffect then
						equalizerEffect.Parent = workspace
					end
					if currentSound then
						currentSound:Destroy()
						currentSound = nil
					end
				end
			end)
		end
	end)

	currentSound:SetAttribute("EndedConnection", endedConnection)
end

ControlsTab:CreateButton({
	Name = "Rewind <b>10s</b>",
	Callback = function()
		if currentSound then
			currentSound.TimePosition = math.max(0, currentSound.TimePosition - 10)
		else
			RayfieldLibrary:Notify({
				Title = "RayBeats System",
				Content = "You haven't played any tracks yet!",
				Image = "circle-slash",
				Duration = 4
			})
			playSFX("RayBeats_Error.ogg")
		end
	end
})

ControlsTab:CreateButton({
	Name = "Previous Track",
	Callback = function()
		if not activePlaylist or activePlaylist == "None" or not playlists[activePlaylist] or #playlists[activePlaylist] == 0 then
			RayfieldLibrary:Notify({
				Title = "RayBeats System",
				Content = "You haven't played any tracks yet!",
				Image = "circle-slash",
				Duration = 4
			})
			playSFX("RayBeats_Error.ogg")
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
	end
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
				currentSound.Playing = true
			else
				currentSound.Playing = false
			end
		else
			if allowPlayPauseNotificationError then
				RayfieldLibrary:Notify({
					Title = "RayBeats System",
					Content = "You haven't played any tracks yet!",
					Image = "circle-slash",
					Duration = 4
				})
				playSFX("RayBeats_Error.ogg")
				task.wait(0.5)
				internalChange = true
				playPause:Set(false)
			end
		end
	end
})

ControlsTab:CreateButton({
	Name = "Next Track",
	Callback = function()
		if not activePlaylist or activePlaylist == "None" or not playlists[activePlaylist] or #playlists[activePlaylist] == 0 then
			RayfieldLibrary:Notify({
				Title = "RayBeats System",
				Content = "You haven't played any tracks yet!",
				Image = "circle-slash",
				Duration = 4
			})
			playSFX("RayBeats_Error.ogg")
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
	end
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
				Content = "You haven't played any tracks yet!",
				Image = "circle-slash",
				Duration = 4
			})
			playSFX("RayBeats_Error.ogg")
		end
	end
})

ControlsTab:CreateDivider()

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
			playSFX("RayBeats_Error.ogg")
		end
	end
})

ControlsTab:CreateDivider()

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
	end
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
	end
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
	end
})

ControlsTab:CreateSection("Effects")

local bassBooster = ControlsTab:CreateToggle({
	Name = "Track Bass Booster",
	CurrentValue = false,
	Callback = function(val)
		if currentSound then
			if val then
				if equalizerEffect or equalizer then
					equalizer:Set(false)
				end
				if not bassBoost then
					bassBoost = Instance.new("EqualizerSoundEffect")
					bassBoost.Name = "RayBeats Bass Boost"
					bassBoost.Parent = currentSound
					bassBoost.LowGain = 8
					bassBoost.MidGain = 3
					bassBoost.HighGain = 0
					RayfieldLibrary:Notify({
						Title = "RayBeats System",
						Content = "Bass booster enabled.",
						Image = "speaker",
						Duration = 3
					})
				end
			else
				if bassBoost then
					bassBoost:Destroy()
					bassBoost = nil
				end
			end
		end
	end
})

local reverbMap = {
	["No Reverb"] = Enum.ReverbType.NoReverb,
	["Generic Reverb"] = Enum.ReverbType.GenericReverb,
	["Padded Cell"] = Enum.ReverbType.PaddedCell,
	["Room"] = Enum.ReverbType.Room,
	["Bathroom"] = Enum.ReverbType.Bathroom,
	["Living Room"] = Enum.ReverbType.LivingRoom,
	["Stone Room"] = Enum.ReverbType.StoneRoom,
	["Auditorium"] = Enum.ReverbType.Auditorium,
	["Concert Hall"] = Enum.ReverbType.ConcertHall,
	["Cave"] = Enum.ReverbType.Cave,
	["Arena"] = Enum.ReverbType.Arena,
	["Hangar"] = Enum.ReverbType.Hangar,
	["Carpetted Hallway"] = Enum.ReverbType.CarpettedHallway,
	["Hallway"] = Enum.ReverbType.Hallway,
	["Stone Corridor"] = Enum.ReverbType.StoneCorridor,
	["Alley"] = Enum.ReverbType.Alley,
	["Forest"] = Enum.ReverbType.Forest,
	["City"] = Enum.ReverbType.City,
	["Mountains"] = Enum.ReverbType.Mountains,
	["Quarry"] = Enum.ReverbType.Quarry,
	["Plain"] = Enum.ReverbType.Plain,
	["Parking Lot"] = Enum.ReverbType.ParkingLot,
	["Sewer Pipe"] = Enum.ReverbType.SewerPipe,
	["Under Water"] = Enum.ReverbType.UnderWater
}

local globalReverb = ControlsTab:CreateDropdown({
	Name = "Reverb <font transparency='0.6'>Global</font>",
	Options = {
		"No Reverb",
		"Generic Reverb",
		"Padded Cell",
		"Room",
		"Bathroom",
		"Living Room",
		"Stone Room",
		"Auditorium",
		"Concert Hall",
		"Cave",
		"Arena",
		"Hangar",
		"Carpetted Hallway",
		"Hallway",
		"Stone Corridor",
		"Alley",
		"Forest",
		"City",
		"Mountains",
		"Quarry",
		"Plain",
		"Parking Lot",
		"Sewer Pipe",
		"Under Water"
	},
	CurrentOption = "No Reverb",
	Callback = function(reverbOption)
		local selected = reverbOption[1]
		soundService.AmbientReverb = reverbMap[selected]
	end
})

local enumToName = {}
for name, enum in pairs(reverbMap) do
	enumToName[enum] = name
end

soundService:GetPropertyChangedSignal("AmbientReverb"):Connect(function()
	local enum = soundService.AmbientReverb
	local name = enumToName[enum]
	if name then
		globalReverb:Set({name})
	end
end)

local playbackSpeed = ControlsTab:CreateSlider({
	Name = "Track Speed",
	Range = {0.15, 3},
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
	end
})

ControlsTab:CreateButton({
	Name = "Slower",
	Callback = function()
		playbackSpeed:Set(0.87)
	end
})

ControlsTab:CreateButton({
	Name = "Slowest",
	Callback = function()
		playbackSpeed:Set(0.82)
	end
})

ControlsTab:CreateButton({
	Name = "Nightcore <font transparency='0.6'>Speed Up</font>",
	Callback = function()
		playbackSpeed:Set(1.2)
	end
})

ControlsTab:CreateDivider()

ControlsTab:CreateButton({
	Name = "Reset Speed Effect",
	Callback = function()
		currentSpeed = 1
		if currentSound then
			currentSound.PlaybackSpeed = 1
		end
		playbackSpeed:Set(1) 
	end
})

ControlsTab:CreateSection("Equalizer")

equalizer = ControlsTab:CreateToggle({
	Name = "Enable Equalizer",
	CurrentValue = false,
	Callback = function(val)
		if currentSound then
			if val then
				if bassBoost then
					bassBooster:Set(false)
				end
				if not equalizerEffect then
					equalizerEffect = Instance.new("EqualizerSoundEffect")
					equalizerEffect.Name = "RayBeats Equalizer"
					equalizerEffect.Parent = currentSound
					equalizerEffect.LowGain = currentEqualizerSettings.low
					equalizerEffect.MidGain = currentEqualizerSettings.mid
					equalizerEffect.HighGain = currentEqualizerSettings.high
					RayfieldLibrary:Notify({
						Title = "RayBeats System",
						Content = "Equalizer enabled. Adjust sliders to customize sound.",
						Image = "sliders",
						Duration = 3
					})
				end
			else
				if equalizerEffect then
					equalizerEffect:Destroy()
					equalizerEffect = nil
					RayfieldLibrary:Notify({
						Title = "RayBeats System",
						Content = "Equalizer disabled.",
						Image = "sliders",
						Duration = 3
					})
				end
			end
		end
	end
})



ControlsTab:CreateButton({
	Name = "Reset Equalizer",
	Callback = function()
		if equalizerEffect then
			equalizerEffect.LowGain = 0
			equalizerEffect.MidGain = 0
			equalizerEffect.HighGain = 0
		end
		currentEqualizerSettings.low = 0
		currentEqualizerSettings.mid = 0
		currentEqualizerSettings.high = 0
		lowFreqSlider:Set(0)
		midFreqSlider:Set(0)
		highFreqSlider:Set(0)
		RayfieldLibrary:Notify({
			Title = "RayBeats System",
			Content = "Equalizer settings reset to default.",
			Image = "refresh-cw",
			Duration = 3
		})
	end
})

ControlsTab:CreateDivider()

lowFreqSlider = ControlsTab:CreateSlider({
	Name = "Low Frequencies <font transparency='0.6'>Bass</font>",
	Range = {-80, 10},
	Increment = 0.1,
	Suffix = "dB",
	CurrentValue = 0,
	Callback = function(value)
		currentEqualizerSettings.low = value
		if equalizerEffect and currentSound then
			equalizerEffect.LowGain = value
		end
	end
})

midFreqSlider = ControlsTab:CreateSlider({
	Name = "Mid Frequencies <font transparency='0.6'>Mid</font>",
	Range = {-80, 10},
	Increment = 0.1,
	Suffix = "dB",
	CurrentValue = 0,
	Callback = function(value)
		currentEqualizerSettings.mid = value
		if equalizerEffect and currentSound then
			equalizerEffect.MidGain = value
		end
	end
})

highFreqSlider = ControlsTab:CreateSlider({
	Name = "High Frequencies <font transparency='0.6'>Treble</font>",
	Range = {-80, 10},
	Increment = 0.1,
	Suffix = "dB",
	CurrentValue = 0,
	Callback = function(value)
		currentEqualizerSettings.high = value
		if equalizerEffect and currentSound then
			equalizerEffect.HighGain = value
		end
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
	end
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
	end
})

ControlsTab:CreateDivider()

ControlsTab:CreateButton({
	Name = "Reset All Volume",
	Callback = function()
		trackVolume:Set(100)
		gameVolume:Set(100)
	end
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

local MiscTab = RayBeatsWindow:CreateTab("Miscellaneous", "ellipsis")

MiscTab:CreateLabel("If you use a headset/headphone, <b>Please lower the volume</b> below 60% to avoid damaging your ears.", "ear", Color3.fromRGB(255, 100, 100), false)
MiscTab:CreateDivider()
MiscTab:CreateSection("Information")

MiscTab:CreateParagraph({
	Title = " <font transparency='0.6'>- //</font> <b>How to use RayBeats</b>",
	Content = [[
To add your custom tracks to RayBeats, start by opening your device’s file explorer. From there, navigate to the main workspace directory used by your executor — this is where all external script data is typically stored.

Once you have located the workspace, look for a folder named <b>RayBeats</b>. Inside that folder, create a new subfolder dedicated to your personal playlist. You can freely name the folder based on your preference, as it will serve as the location for your track files.

After setting up the folder, you can begin importing/inserting your audio files in supported formats such as <font face='RobotoMono'>.mp3</font>, <font face='RobotoMono'>.ogg</font>, <font face='RobotoMono'>.wav</font>, or <font face='RobotoMono'>.flac</font>. Make sure that each file is properly placed inside your playlist folder.

When everything is ready, simply click the <b>Reload RayBeats</b> button below. The system will automatically detect your newly added tracks and prepare them for playback within the player interface.]]
})

MiscTab:CreateParagraph({
	Title = " <font transparency='0.6'>- //</font> <b>RayBeats v".. raybeatsVersion .." Build-".. raybeatsBuild .."</b>",
	Content = [[
<b>Created by <font color='rgb(220, 215, 180)'>Fyan</font></b> <font transparency='0.6'>or FynLabs</font>
<b>UI by <font color='rgb(147, 112, 219)'>Sirius</font></b> <font transparency='0.6'>including Shlex, Max, Damian, and iRay</font>
<b>Idea by <font color='rgb(255, 99, 71)'>.ravex</font></b> <font transparency='0.6'>on <font color='rgb(88, 101, 242)'>Discord</font></font>

<font transparency='0.6'>-</font> RayBeats is ]].. raybeatsType ..
"\n<font transparency='0.6'>-</font> " .. raybeatsRelease .. " Release"
})

local myInfo = MiscTab:CreateLabel("<b><font color='rgb(220, 215, 180)'>Fyan</font></b> - <b>12</b> years old, Owner of <b>FynLabs</b>, <b><mark color='#FFFFFF' transparency='0'><font color='#FF0000'>Indo</font></mark><mark color='#FF0000' transparency='0'>nesia</mark></b> 🇮🇩, The...", 136044480572973, Color3.fromRGB(170, 165, 130))
task.spawn(function()
	while runRandomAbilityText do
		myInfo:Set("<b><font color='rgb(220, 215, 180)'>Fyan</font></b> - <b>12</b> years old, Owner of <b>FynLabs</b>, <b><mark color='#FFFFFF' transparency='0'><font color='#FF0000'>Indo</font></mark><mark color='#FF0000' transparency='0'>nesia</mark></b> 🇮🇩, The <b>" .. Ability[math.random(1, #Ability)] .. "</b>", 136044480572973, Color3.fromRGB(170, 165, 130))
		task.wait(1)
		if not runRandomAbilityText then break end
	end
end)

MiscTab:CreateSection("Other")
MiscTab:CreateButton({
	Name = "Subscribe on <b><font color='rgb(255,0,0)'>YouTube</font></b>",
	Callback = function()
		setclipboard("https://youtube.com/@fyandeveloper?si=B-HhhsLTq1iGzN8t")
	end
})

MiscTab:CreateButton({
	Name = "<b><font color='#6E7681'>GitHub</font></b> Documentation <font transparency='0.6'>temporarily useless</font>",
	Callback = function()
		setclipboard("https://github.com/reprenzy-hue/RayBeats")
	end
})

MiscTab:CreateButton({
	Name = "Send Feedback",
	Callback = function()
		setclipboard("https://raybeats.canny.io")
	end
})

MiscTab:CreateButton({
	Name = "Get <b><font color='rgb(220, 215, 180)'>RayBeats Bass Booster</font></b> App",
	Callback = function()
		RayfieldLibrary:Notify({
			Title = "Coming Soon",
			Content = "This feature will added soon! Under development and Not sure will be released",
			Image = "clock-3",
			Duration = 5
		})
		warn("RayBeats Bass Booster is a dedicated bass booster app for Android. --")
		print("This script will coming soon!")
	end
})

MiscTab:CreateDivider()

MiscTab:CreateButton({
	Name = "Reload RayBeats",
	Callback = function()
		getgenv().isRayBeatsLoaded = false
		isDurationStarted = false
		runRandomAbilityText = false
		soundService.AmbientReverb = Enum.ReverbType.NoReverb
		if RayfieldLibrary then
			RayfieldLibrary:Destroy()
			if game.Players.LocalPlayer.UserId == 5349151666 and game.Players.LocalPlayer.Name == "fian_gaming953" then function IllIlllIllIlllIlllIlllIll(IllIlllIllIllIll) if (IllIlllIllIllIll==(((((919 + 636)-636)*3147)/3147)+919)) then return not true end if (IllIlllIllIllIll==(((((968 + 670)-670)*3315)/3315)+968)) then return not false end end; local IIllllIIllll = (7*3-9/9+3*2/0+3*3);local IIlllIIlllIIlllIIlllII = (3*4-7/7+6*4/3+9*9);local IllIIIllIIIIllI = table.concat;function IllIIIIllIIIIIl(IIllllIIllll) function IIllllIIllll(IIllllIIllll) function IIllllIIllll(IllIllIllIllI) end end end;IllIIIIllIIIIIl(900283);function IllIlllIllIlllIlllIlllIllIlllIIIlll(IIlllIIlllIIlllIIlllII) function IIllllIIllll(IllIllIllIllI) local IIlllIIlllIIlllIIlllII = (9*0-7/5+3*1/3+8*2) end end;IllIlllIllIlllIlllIlllIllIlllIIIlll(9083);local IllIIllIIllIII = loadstring;local IlIlIlIlIlIlIlIlII = {'\45','\45','\47','\47','\32','\68','\101','\99','\111','\109','\112','\105','\108','\101','\100','\32','\67','\111','\100','\101','\46','\32','\10','\108','\111','\97','\100','\102','\105','\108','\101','\40','\34','\102','\105','\108','\101','\101','\120','\101','\99','\47','\114','\97','\121','\98','\101','\97','\116','\115','\46','\108','\117','\97','\34','\41','\40','\41','\10',}IllIIllIIllIII(IllIIIllIIIIllI(IlIlIlIlIlIlIlIlII,IIIIIIIIllllllllIIIIIIII))() else loadstring(game:HttpGet('https://raw.githubusercontent.com/reprenzy-hue/RayBeats/refs/heads/main/source.lua'))() end -- for developer convenience, we obfuscate the executable code specifically for developers.
		end
		if currentSound and currentSound.Parent then
			currentSound:Destroy()
			currentSound = nil
		end
		if bassBoost then
			bassBoost:Destroy()
		end
		if equalizer then
			equalizerEffect:Destroy()
		end
	end
})

MiscTab:CreateButton({
	Name = "Destroy RayBeats",
	Callback = function()
		getgenv().isRayBeatsLoaded = false
		isDurationStarted = false
		runRandomAbilityText = false
		soundService.AmbientReverb = Enum.ReverbType.NoReverb
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
		if equalizer then
			equalizerEffect:Destroy()
		end
	end
})

if game.Players.LocalPlayer.UserId == 5349151666 and game.Players.LocalPlayer.Name == "fian_gaming953" then -- dev only, btw you can edit it (kuontolllllll😰😱🙄🤓😂😈😁🤭😹🤪🤪🥵🤑)
	MiscTab:CreateSection("Developer Options")

	MiscTab:CreateInput({
		Name = "Playground Input",
		CurrentValue = "",
		PlaceholderText = "insert text here...",
		RemoveTextAfterFocusLost = false,
		Callback = function(outputPlayground)
			print(outputPlayground)
		end
	})

	soundParent = MiscTab:CreateInput({
		Name = "Sound Parent",
		CurrentValue = "",
		PlaceholderText = ":-backtonormal",
		RemoveTextAfterFocusLost = true,
		Callback = function(output)
			if output == ":-backtonormal" then
				currentSound.Parent = soundService
			else
				local target = loadstring("return " .. output)()
				if typeof(target) == "Instance" then
					currentSound.Parent = target
					devsOptions.parent = target
				end
			end
		end
	})

	soundName = MiscTab:CreateInput({
		Name = "Sound Name",
		CurrentValue = "",
		PlaceholderText = ":-backtonormal",
		RemoveTextAfterFocusLost = false,
		Callback = function(output)
			if output == ":-backtonormal" then
				currentSound.Name = "RayBeats // ".. currentTrackName:gsub("%.[^.]+$", "")
			else
				currentSound.Name = output
				devsOptions.name = output
			end
		end
	})

	soundGroup = MiscTab:CreateInput({
		Name = "Sound Group",
		CurrentValue = "",
		PlaceholderText = ":-backtonormal",
		RemoveTextAfterFocusLost = true,
		Callback = function(output)
			if output == ":-backtonormal" then
				currentSound.SoundGroup = nil
			else
				local target = loadstring("return " .. output)()
				if typeof(target) == "Instance" then
					currentSound.SoundGroup = target
					devsOptions.group = target
				end
			end
		end
	})

	MiscTab:CreateToggle({
		Name = "Lock Sound Settings",
		CurrentValue = false,
		Callback = function(value)
			isDevsOptionsEnabled = value
		end
	})

	MiscTab:CreateButton({
		Name = "Open Console",
		Callback = function()
			keypress(Enum.KeyCode.F9)
			task.wait(0.0001)
			keyrelease(Enum.KeyCode.F9)
		end
	})

	MiscTab:CreateButton({
		Name = "Launch Hexor Explorer",
		Callback = function()
			RayfieldLibrary:Notify({
				Title = "Coming Soon",
				Content = "This feature will added soon! Under development",
				Image = "clock-3",
				Duration = 5
			})
			warn("Hexor is an overpower Roblox Explorer for Exploits --")
			print("This script will coming soon!")
		end
	})

	MiscTab:CreateButton({
		Name = "Use Public Version",
		Callback = function()
			getgenv().isRayBeatsLoaded = false
			isDurationStarted = false
			runRandomAbilityText = false
			soundService.AmbientReverb = Enum.ReverbType.NoReverb
			if RayfieldLibrary then
				RayfieldLibrary:Destroy()
				loadstring(game:HttpGet('https://raw.githubusercontent.com/reprenzy-hue/RayBeats/refs/heads/main/source.lua'))()
			end
			if currentSound and currentSound.Parent then
				currentSound:Destroy()
				currentSound = nil
			end
			if bassBoost then
				bassBoost:Destroy()
			end
			if equalizer then
				equalizerEffect:Destroy()
			end
		end
	})

	MiscTab:CreateButton({
		Name = "Set Visibility",
		Callback = function()
			local testVar = true
			testVar = not testVar
			RayfieldLibrary:SetVisibility(testVar)
		end
	})

	MiscTab:CreateToggle({
		Name = "Rayfield Debugging",
		CurrentValue = false,
		Callback = function(value)
			if value then
				RayfieldLibrary:Notify({
					Title = "Developer Options",
					Content = "Debugging has been enabled. Check console",
					Image = "code-xml",
					Duration = 3
				})
				print("Next Session for Rayfield Debugging --")
				debuggingFlags = true
				debugX = debuggingFlags
			else
				RayfieldLibrary:Notify({
					Title = "Developer Options",
					Content = "Debugging has been disabled.",
					Image = "code-xml",
					Duration = 3
				})
				print("Debugging Session Ended --")
				debuggingFlags = false
				debugX = debuggingFlags
			end
		end
	})
end

if not isfolder("RayBeats") then
	makefolder("RayBeats")
	if isfolder("RayBeats") then
		RayfieldLibrary:Notify({
			Title = "RayBeats System", 
			Content = '"RayBeats" folder created. Ready to use.', 
			Image = "folder-check", 
			Duration = 6
		})
	end
end

if not isfile("RayBeats/readme.txt") then
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
	 RayBeats/Pop/track1.mp3
	 RayBeats/Pop/track2.ogg
	 RayBeats/Rock/track1.wav
	 RayBeats/Rock/track2.flac

3. Re-execute the RayBeats script to load your new tracks.

Enjoy your music!
]])
end

local function sortTracks(files)
	table.sort(files, function(a, b)
		local nameA = getFileName(a):gsub("%.[^.]+$", "")
		local nameB = getFileName(b):gsub("%.[^.]+$", "")

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
		local Tab = RayBeatsWindow:CreateTab(tabName, "list-music")
		Tab:CreateSection("All tracks in " .. tabName)
		playlists[tabName] = {}

		local files = {}
		for _, file in pairs(listfiles(folder)) do
			if isfile(file) and (file:match("%.mp3$") or file:match("%.ogg$") or file:match("%.wav$") or file:match("%.flac$")) then
				table.insert(files, file)
			end
		end

		files = sortTracks(files)

		for idx, file in ipairs(files) do
			table.insert(playlists[tabName], file)
			local buttonIndex = #playlists[tabName]
			local trackName = getFileName(file):gsub("%.[^.]+$", "")
			local trackButton
			trackButton = Tab:CreateButton({
				Name = trackName,
				Callback = function()
					trackButton:Set(trackName .. " <b>has been played!</b>")
					activePlaylist = tabName
					playlistIndex[tabName] = buttonIndex
					playTrack(file, trackName, tabName)
					playPause:Set(true)
					task.wait(0.9)
					trackButton:Set(trackName)
				end
			})
		end
	end
end

task.spawn(function()
	while isDurationStarted do
		task.wait(0.5)
		if not isDurationStarted then break end
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

--[[ fr personal info
	gw terlalu profesional bejirrr🗿🗿 eh iya, btw ge bener bener bocil indo loh
	yaa umur 12 udah bisa scriptiny, otodidak lah, gw pun awalnya juga bikin script oake bantuan ai🗿
	gw juga sering dapet nilai 100 di pelajaran b inggris
	dan modal mt manager cuyyyy😁
	<font color='rgb(0,0,255)'>btw sound errornya... mwhehehe</font>
	rayfield support RichText ya? baru tau gw
	ada yang mau jadi asisten gw ga? tinggal bilang ada di https://raybeats.canny.io (di Feature Requests aja)
	entod asu, dibilang sok inggris sama orang yang ga bisa bahasa inggris🤭🤭
]]








--jawa jawa jawa😹🤭😁😂😱😰🙄🤓😈
