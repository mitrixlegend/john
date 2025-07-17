local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
	Name = "mitrix cheats v1",
	LoadingTitle = "mitrix",
	LoadingSubtitle = "I will kill roblox",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = "UnivHub",
		FileName = "virus.stealer777"
	},
	KeySystem = false, -- Set this to true to use their key system
	KeySettings = {
		Title = "univ Hub",
		Subtitle = "Key System",
		Note = "telegram: @xexexewhat",
		SaveKey = true, 
		Key = "telegram: @xexexewhat"
	}
})
Rayfield:Notify("Loaded!", "hi", 4483362458) -- Notfication -- Title, Content, Image
--Setting tabs
local comb = Window:CreateTab("Combat", 4483362458)
local plrc = Window:CreateTab("mitrix", 4483362458)
local misc = Window:CreateTab("Misc", 4483362458)

local Button = misc:CreateButton({
 	Name = "Infinity Yield",
 	Callback = function()
  loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
 	end,
})
local Button = misc:CreateButton({
 Name = "tool giver",
 Callback = function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/yofriendfromschool1/Sky-Hub-Backup/main/gametoolgiver.lua"))()
end,
})

local Button = misc:CreateButton({
 	Name = "R6 Anim Hub",
 	Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/ExploitFin/AquaMatrix/refs/heads/AquaMatrix/AquaMatrix"))()
 	end,
})
--Combat
local Button = comb:CreateButton({
	Name = "ESP",
	Callback = function()
 loadstring(game:HttpGet('https://pastebin.com/raw/yxpZ41xf'))()
 end,
})
local Button = comb:CreateButton({
 Name = "Aimlock",
 Callback = function()
 loadstring(game:HttpGet('https://pastebin.com/raw/NU9gz4yq'))()
 end,
})

local Button = plrc:CreateButton({
 	Name = "Fly",
 	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
end,
})
local Button = plrc:CreateButton({
 	Name = "Noclip",
 	Callback = function()
  noclip()
 	end,
})

local Button = comb:CreateButton({
 Name = "John doe text box",
 Callback = function()

loadstring(game:HttpGet("https://pastebin.com/raw/mhUzRuBv"))()
end,
})

local Button = plrc:CreateButton({
 Name = "keyboard",
 Callback = function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/Xxtan31/Ata/main/deltakeyboardcrack.txt", true))()
end,
})

local Button = comb:CreateButton({
 Name = "tool giver",
 Callback = function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/gObl00x/Pendulum-Fixed-AND-Others-Scripts/refs/heads/main/Dual%20Ultima%20RB%20Swords"))()
end,
})
local Button = misc:CreateButton({
 Name = "dark dex",
 Callback = function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/ProphecySkondo/Misc/refs/heads/main/dex.lua"))()
end,
})

local Button = comb:CreateButton({
 Name = "coolkid clan",
 Callback = function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/cfsmi2/c00lguiv1/refs/heads/main/Main.lua", true))()
end,
})
