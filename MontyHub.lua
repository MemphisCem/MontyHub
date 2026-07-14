--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.9) ~  Much Love, Ferib 

]]--

local v0 = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))();
local v1 = game:GetService("Players");
local v2 = v1.LocalPlayer;
local v3 = game:GetService("RunService");
local v4 = game:GetService("TeleportService");
local v5 = game:GetService("HttpService");
local v6 = true;
local v7 = false;
local v8 = false;
local v9;
local v10 = v0:CreateWindow({Title="Monty Hub",Author="by arreltbcc",Icon="skull",Size=UDim2.fromOffset(537 - 187, 35 + 215),User={Enabled=true,Anonymous=false,Callback=function()
end}});
local v11 = v10:Tab({Title="Main",Icon="user"});
local v12 = v10:Tab({Title="Auto Farm",Icon="leaf"});
local v13 = v10:Tab({Title="Combat",Icon="sword"});
local v14 = v10:Tab({Title="Teleport",Icon="map-pinned"});
local v15 = v10:Tab({Title="ESP",Icon="eye"});
local v16 = v10:Tab({Title="Info",Icon="info"});
v11:Section({Title="Player",Icon="user"});
v11:Toggle({Title="Speed Boost",Default=false,Callback=function(v20)
	local FlatIdent_378D0 = 0;
	local v21;
	local v22;
	while true do
		if (FlatIdent_378D0 == 0) then
			SpeedEnabled = v20;
			v21 = v2.Character;
			FlatIdent_378D0 = 1;
		end
		if (FlatIdent_378D0 == 1) then
			v22 = v21 and v21:FindFirstChildOfClass("Humanoid");
			if v22 then
				if v20 then
					v22.WalkSpeed = 43 - 11;
				else
					v22.WalkSpeed = 16 + 0;
				end
			end
			break;
		end
	end
end});
v11:Slider({Title="WalkSpeed",Value={Min=(1490 - (1329 + 145)),Max=(1471 - (140 + 831)),Default=16},Callback=function(v23)
	local v24 = 1850 - (1409 + 441);
	local v25;
	local v26;
	while true do
		if (v24 == 1) then
			if v26 then
				v26.WalkSpeed = v23;
			end
			break;
		end
		if (v24 == (718 - (15 + 703))) then
			v25 = game.Players.LocalPlayer.Character;
			v26 = v25 and v25:FindFirstChild("Humanoid");
			v24 = 1;
		end
	end
end});
v11:Slider({Title="JumpBoost",Step=(1 + 0),Value={Min=(488 - (262 + 176)),Max=(2221 - (345 + 1376)),Default=(738 - (198 + 490))},Callback=function(v27)
	local FlatIdent_2FBEB = 0;
	local v28;
	local v29;
	local v30;
	while true do
		if (FlatIdent_2FBEB == 1) then
			v30 = nil;
			while true do
				if (v28 == (2 - 1)) then
					if v30 then
						v30.JumpPower = v27;
					end
					break;
				end
				if (v28 == (1206 - (696 + 510))) then
					local FlatIdent_475BC = 0;
					local v83;
					while true do
						if (FlatIdent_475BC == 0) then
							v83 = 0;
							while true do
								if (v83 == (0 - 0)) then
									v29 = game.Players.LocalPlayer;
									v30 = v29.Character and v29.Character:FindFirstChildOfClass("Humanoid");
									v83 = 1263 - (1091 + 171);
								end
								if ((1 + 0) == v83) then
									v28 = 3 - 2;
									break;
								end
							end
							break;
						end
					end
				end
			end
			break;
		end
		if (FlatIdent_2FBEB == 0) then
			v28 = 0 - 0;
			v29 = nil;
			FlatIdent_2FBEB = 1;
		end
	end
end});
v11:Toggle({Title="Infinity Jump",Default=false,Callback=function(v31)
	local FlatIdent_25011 = 0;
	local v32;
	local v33;
	while true do
		if (FlatIdent_25011 == 0) then
			v32 = game.Players.LocalPlayer;
			v33 = game:GetService("UserInputService");
			FlatIdent_25011 = 1;
		end
		if (FlatIdent_25011 == 1) then
			if v31 then
				if not _G.InfJumpConnection then
					_G.InfJumpConnection = v33.JumpRequest:Connect(function()
						local FlatIdent_1076E = 0;
						local v100;
						local v101;
						while true do
							if (1 == FlatIdent_1076E) then
								while true do
									if (v100 == (374 - (123 + 251))) then
										v101 = v32.Character and v32.Character:FindFirstChildOfClass("Humanoid");
										if v101 then
											v101:ChangeState(Enum.HumanoidStateType.Jumping);
										end
										break;
									end
								end
								break;
							end
							if (FlatIdent_1076E == 0) then
								v100 = 0 - 0;
								v101 = nil;
								FlatIdent_1076E = 1;
							end
						end
					end);
				end
			elseif _G.InfJumpConnection then
				local FlatIdent_104D4 = 0;
				while true do
					if (FlatIdent_104D4 == 0) then
						_G.InfJumpConnection:Disconnect();
						_G.InfJumpConnection = nil;
						break;
					end
				end
			end
			break;
		end
	end
end});
v11:Toggle({Title="Invisible",Default=false,Callback=function(v34)
	local FlatIdent_940A0 = 0;
	local v35;
	local v36;
	local v37;
	while true do
		if (1 == FlatIdent_940A0) then
			v35 = game:GetService("Players");
			v36 = v35.LocalPlayer;
			FlatIdent_940A0 = 2;
		end
		if (FlatIdent_940A0 == 2) then
			v37 = nil;
			function v37(v68, v69)
				for v70, v71 in ipairs(v68:GetDescendants()) do
					if (v71:IsA("BasePart") and (v71.Name ~= "HumanoidRootPart")) then
						v71.Transparency = v69;
					end
				end
			end
			FlatIdent_940A0 = 3;
		end
		if (FlatIdent_940A0 == 0) then
			InvisibleEnabled = v34;
			print("Invisible:", v34);
			FlatIdent_940A0 = 1;
		end
		if (FlatIdent_940A0 == 3) then
			if v34 then
				local FlatIdent_703C8 = 0;
				local v72;
				local v73;
				while true do
					if (FlatIdent_703C8 == 0) then
						v72 = 0 - 0;
						v73 = nil;
						FlatIdent_703C8 = 1;
					end
					if (FlatIdent_703C8 == 1) then
						while true do
							if ((698 - (208 + 490)) == v72) then
								v73 = v36.Character;
								if v73 then
									local FlatIdent_1B51D = 0;
									local v110;
									local v111;
									local v117;
									while true do
										if (FlatIdent_1B51D == 2) then
											v111.Name = "invischair";
											v111.Transparency = 1;
											v111.Position = Vector3.new(-(700.95 - (534 + 141)), 34 + 50, 3537.55);
											v117 = Instance.new("Weld", v111);
											FlatIdent_1B51D = 3;
										end
										if (FlatIdent_1B51D == 0) then
											v37(v73, 0.5 + 0);
											v110 = v73.HumanoidRootPart.CFrame;
											task.wait();
											v73:MoveTo(Vector3.new(-(12.95 + 13), 920 - (660 + 176), 425.5500000000002 + 3112));
											FlatIdent_1B51D = 1;
										end
										if (FlatIdent_1B51D == 3) then
											v117.Part0 = v111;
											v117.Part1 = v73:FindFirstChild("Torso") or v73:FindFirstChild("UpperTorso");
											v111.CFrame = v110;
											print("Invisibility Enabled");
											break;
										end
										if (FlatIdent_1B51D == 1) then
											task.wait(202.15 - (14 + 188));
											v111 = Instance.new("Seat", workspace);
											v111.Anchored = false;
											v111.CanCollide = false;
											FlatIdent_1B51D = 2;
										end
									end
								end
								break;
							end
						end
						break;
					end
				end
			else
				local FlatIdent_66799 = 0;
				local v74;
				local v75;
				while true do
					if (FlatIdent_66799 == 0) then
						v74 = 0;
						v75 = nil;
						FlatIdent_66799 = 1;
					end
					if (FlatIdent_66799 == 1) then
						while true do
							if (v74 == (0 + 0)) then
								v75 = v36.Character;
								if v75 then
									local FlatIdent_981A3 = 0;
									local v121;
									local v122;
									while true do
										if (FlatIdent_981A3 == 1) then
											while true do
												if (v121 == (0 - 0)) then
													v122 = 0 - 0;
													while true do
														if ((0 - 0) == v122) then
															local FlatIdent_7909D = 0;
															while true do
																if (FlatIdent_7909D == 1) then
																	v122 = 1 + 0;
																	break;
																end
																if (FlatIdent_7909D == 0) then
																	v37(v75, 0 + 0);
																	if workspace:FindFirstChild("invischair") then
																		workspace.invischair:Destroy();
																	end
																	FlatIdent_7909D = 1;
																end
															end
														end
														if (v122 == (397 - (115 + 281))) then
															print("Invisibility Disabled");
															break;
														end
													end
													break;
												end
											end
											break;
										end
										if (FlatIdent_981A3 == 0) then
											v121 = 0 + 0;
											v122 = nil;
											FlatIdent_981A3 = 1;
										end
									end
								end
								break;
							end
						end
						break;
					end
				end
			end
			break;
		end
	end
end});
v11:Toggle({Title="Noclip",Default=false,Callback=function(v38)
	local v39 = 0;
	while true do
		if (v39 == (0 - 0)) then
			v8 = v38;
			if v8 then
				v9 = v3.Stepped:Connect(function()
					if v2.Character then
						for v137, v138 in pairs(v2.Character:GetDescendants()) do
							if v138:IsA("BasePart") then
								v138.CanCollide = false;
							end
						end
					end
				end);
			elseif v9 then
				v9:Disconnect();
			end
			break;
		end
	end
end});
v11:Toggle({Title="Infinity Stamina",Default=false,Callback=function(v40)
	if v40 then
		local v76 = 0 + 0;
		local v77;
		local v78;
		while true do
			if (v76 == (2 - 1)) then
				task.spawn(function()
					while v40 do
						local v123 = 0;
						while true do
							if ((3 - 2) == v123) then
								task.wait(867.1 - (550 + 317));
								break;
							end
							if (v123 == (0 - 0)) then
								for v153, v154 in ipairs(v78:GetDescendants()) do
									if (v154:IsA("NumberValue") or v154:IsA("IntValue")) then
										local v160 = 0;
										local v161;
										while true do
											if (v160 == (0 - 0)) then
												v161 = string.lower(v154.Name);
												if (string.find(v161, "stamina") or string.find(v161, "energy")) then
													v154.Value = v154.MaxValue or (2794477 - 1794478);
												end
												break;
											end
										end
									end
								end
								if v78.Character then
									for v162, v163 in pairs(v78.Character:GetAttributes()) do
										local v164 = 0;
										local v165;
										while true do
											if (v164 == (285 - (134 + 151))) then
												v165 = string.lower(v162);
												if (string.find(v165, "stamina") or string.find(v165, "energy")) then
													v78.Character:SetAttribute(v162, 1001664 - (970 + 695));
												end
												break;
											end
										end
									end
								end
								v123 = 1 - 0;
							end
						end
					end
				end);
				break;
			end
			if (0 == v76) then
				v77 = game:GetService("Players");
				v78 = v77.LocalPlayer;
				v76 = 1;
			end
		end
	end
end});
v12:Toggle({Title="Generator Helper",Default=false,Callback=function(v41)
	local FlatIdent_AC2F = 0;
	while true do
		if (FlatIdent_AC2F == 0) then
			v12 = v41;
			if v12 then
				print("Auto Farm Enabled");
			else
				print("Auto Farm Disabled");
			end
			break;
		end
	end
end});
v13:Section({Title="Kill Aura",Icon="sword"});
v13:Toggle({Title="Kill Aura",Default=false,Callback=function(v42)
	local v43 = 0;
	local v44;
	while true do
		if (v43 == (1990 - (582 + 1408))) then
			v44 = 0 - 0;
			while true do
				if (v44 == (0 - 0)) then
					KillAuraEnabled = v42;
					print("Kill Aura:", v42);
					break;
				end
			end
			break;
		end
	end
end});
v13:Slider({Title="Aura Distance",Step=(3 - 2),Value={Min=1,Max=(1924 - (1195 + 629)),Default=(13 - 3)},Callback=function(v45)
	local FlatIdent_89237 = 0;
	local v46;
	while true do
		if (FlatIdent_89237 == 0) then
			v46 = 0;
			while true do
				if (v46 == (241 - (187 + 54))) then
					AuraDistance = v45;
					print("Aura Distance:", v45);
					break;
				end
			end
			break;
		end
	end
end});
v13:Section({Title="Hitboxes",Icon="box"});
v13:Toggle({Title="Hitboxes",Default=false,Callback=function(v47)
	local FlatIdent_8435E = 0;
	while true do
		if (FlatIdent_8435E == 0) then
			HitboxesEnabled = v47;
			print("Hitboxes:", v47);
			break;
		end
	end
end});
v13:Slider({Title="Hitboxes Distance",Step=(781 - (162 + 618)),Value={Min=(1 + 0),Max=(67 + 33),Default=(21 - 11)},Callback=function(v48)
	local FlatIdent_98388 = 0;
	local v49;
	while true do
		if (FlatIdent_98388 == 0) then
			v49 = 0 - 0;
			while true do
				if (v49 == (0 + 0)) then
					HitboxesDistance = v48;
					print("Hitboxes Distance:", v48);
					break;
				end
			end
			break;
		end
	end
end});
local v1 = game:GetService("Players");
local v2 = v1.LocalPlayer;
local v17 = nil;
v14:Dropdown({Title="TP to Player",Values=(function()
	local v50 = 1636 - (1373 + 263);
	local v51;
	while true do
		local FlatIdent_2388 = 0;
		while true do
			if (FlatIdent_2388 == 0) then
				if (v50 == (1001 - (451 + 549))) then
					return v51;
				end
				if (v50 == (0 + 0)) then
					v51 = {};
					for v89, v90 in ipairs(v1:GetPlayers()) do
						if (v90 ~= v2) then
							table.insert(v51, v90.Name);
						end
					end
					v50 = 1 - 0;
				end
				break;
			end
		end
	end
end)(),Callback=function(v52)
	local FlatIdent_8BC55 = 0;
	local v53;
	local v54;
	while true do
		if (FlatIdent_8BC55 == 1) then
			while true do
				if (v53 == 0) then
					local FlatIdent_75224 = 0;
					while true do
						if (FlatIdent_75224 == 0) then
							v17 = v52;
							v54 = v1:FindFirstChild(v52);
							FlatIdent_75224 = 1;
						end
						if (FlatIdent_75224 == 1) then
							v53 = 1;
							break;
						end
					end
				end
				if (v53 == 1) then
					if (v54 and v54.Character and v54.Character:FindFirstChild("HumanoidRootPart") and v2.Character and v2.Character:FindFirstChild("HumanoidRootPart")) then
						v2.Character.HumanoidRootPart.CFrame = v54.Character.HumanoidRootPart.CFrame + Vector3.new(0, 3, 0);
					end
					break;
				end
			end
			break;
		end
		if (FlatIdent_8BC55 == 0) then
			v53 = 0 - 0;
			v54 = nil;
			FlatIdent_8BC55 = 1;
		end
	end
end});
v14:Button({Title="TP to home",Callback=function()
	print("Test Button нажата");
end});
v15:Toggle({Title="Esp Players",Default=false,Callback=function(v55)
	local v56 = 1384 - (746 + 638);
	local v57;
	local v58;
	local v59;
	local v60;
	while true do
		if (v56 == (1 + 1)) then
			local v84 = 0;
			while true do
				if (v84 == (1 - 0)) then
					v56 = 344 - (218 + 123);
					break;
				end
				if (0 == v84) then
					local FlatIdent_21DDC = 0;
					while true do
						if (FlatIdent_21DDC == 1) then
							v84 = 1 + 0;
							break;
						end
						if (FlatIdent_21DDC == 0) then
							v60 = nil;
							function v60(v124)
								local FlatIdent_67691 = 0;
								local v125;
								while true do
									if (FlatIdent_67691 == 0) then
										v125 = 0;
										while true do
											if (v125 == (1581 - (1535 + 46))) then
												v124.CharacterAdded:Connect(function()
													local FlatIdent_20FE3 = 0;
													local v155;
													while true do
														if (FlatIdent_20FE3 == 0) then
															v155 = 0 + 0;
															while true do
																if (v155 == (0 + 0)) then
																	task.wait(560.5 - (306 + 254));
																	v59(v124);
																	break;
																end
															end
															break;
														end
													end
												end);
												if v124.Character then
													v59(v124);
												end
												break;
											end
										end
										break;
									end
								end
							end
							FlatIdent_21DDC = 1;
						end
					end
				end
			end
		end
		if (v56 == (0 - 0)) then
			local FlatIdent_578E3 = 0;
			while true do
				if (FlatIdent_578E3 == 0) then
					v57 = game:GetService("Players");
					v58 = v57.LocalPlayer;
					FlatIdent_578E3 = 1;
				end
				if (FlatIdent_578E3 == 1) then
					v56 = 1468 - (899 + 568);
					break;
				end
			end
		end
		if (v56 == (2 + 1)) then
			local FlatIdent_40070 = 0;
			while true do
				if (FlatIdent_40070 == 0) then
					for v91, v92 in ipairs(v57:GetPlayers()) do
						v60(v92);
					end
					v57.PlayerAdded:Connect(v60);
					FlatIdent_40070 = 1;
				end
				if (1 == FlatIdent_40070) then
					v56 = 9 - 5;
					break;
				end
			end
		end
		if (1 == v56) then
			v59 = nil;
			function v59(v93)
				local FlatIdent_32BB2 = 0;
				local v94;
				local v95;
				while true do
					if (FlatIdent_32BB2 == 0) then
						v94 = 603 - (268 + 335);
						v95 = nil;
						FlatIdent_32BB2 = 1;
					end
					if (FlatIdent_32BB2 == 1) then
						while true do
							if ((290 - (60 + 230)) == v94) then
								local FlatIdent_91608 = 0;
								while true do
									if (FlatIdent_91608 == 1) then
										v94 = 573 - (426 + 146);
										break;
									end
									if (FlatIdent_91608 == 0) then
										if (v93 == v58) then
											return;
										end
										v95 = v93.Character;
										FlatIdent_91608 = 1;
									end
								end
							end
							if (v94 == (1 + 0)) then
								if not v95 then
									return;
								end
								if v55 then
									local FlatIdent_15A17 = 0;
									local v139;
									local v140;
									while true do
										if (FlatIdent_15A17 == 1) then
											while true do
												if (v139 == (811 - (569 + 242))) then
													v140 = v95:FindFirstChild("PlayerESP");
													if not v140 then
														local FlatIdent_69C4C = 0;
														local v168;
														while true do
															if (FlatIdent_69C4C == 0) then
																v168 = 0 - 0;
																while true do
																	if (v168 == 0) then
																		local FlatIdent_854BA = 0;
																		while true do
																			if (FlatIdent_854BA == 0) then
																				v140 = Instance.new("Highlight");
																				v140.Name = "PlayerESP";
																				FlatIdent_854BA = 1;
																			end
																			if (FlatIdent_854BA == 1) then
																				v168 = 1 + 0;
																				break;
																			end
																		end
																	end
																	if (v168 == 1) then
																		v140.FillColor = Color3.fromRGB(0, 255, 1024 - (706 + 318));
																		v140.OutlineColor = Color3.fromRGB(1506 - (721 + 530), 255, 1526 - (945 + 326));
																		v168 = 4 - 2;
																	end
																	if ((3 + 0) == v168) then
																		v140.Parent = v95;
																		break;
																	end
																	if ((702 - (271 + 429)) == v168) then
																		v140.OutlineTransparency = 0;
																		v140.FillTransparency = 0.3 + 0;
																		v168 = 1503 - (1408 + 92);
																	end
																end
																break;
															end
														end
													end
													break;
												end
											end
											break;
										end
										if (FlatIdent_15A17 == 0) then
											v139 = 1456 - (282 + 1174);
											v140 = nil;
											FlatIdent_15A17 = 1;
										end
									end
								else
									local FlatIdent_5962D = 0;
									local v141;
									local v142;
									while true do
										if (0 == FlatIdent_5962D) then
											v141 = 1086 - (461 + 625);
											v142 = nil;
											FlatIdent_5962D = 1;
										end
										if (FlatIdent_5962D == 1) then
											while true do
												if (v141 == (1288 - (993 + 295))) then
													v142 = v95:FindFirstChild("PlayerESP");
													if v142 then
														v142:Destroy();
													end
													break;
												end
											end
											break;
										end
									end
								end
								break;
							end
						end
						break;
					end
				end
			end
			v56 = 1 + 1;
		end
		if (v56 == (1175 - (418 + 753))) then
			if not v55 then
				for v107, v108 in ipairs(v57:GetPlayers()) do
					if v108.Character then
						local v131 = 0;
						local v132;
						while true do
							if (v131 == (0 + 0)) then
								v132 = v108.Character:FindFirstChild("PlayerESP");
								if v132 then
									v132:Destroy();
								end
								break;
							end
						end
					end
				end
			end
			break;
		end
	end
end});
v15:Toggle({Title="Esp Items",Default=false,Callback=function(v61)
	if v61 then
		local v79 = 0 + 0;
		local v80;
		local v81;
		while true do
			if ((1 + 0) == v79) then
				function v81()
					local FlatIdent_7126B = 0;
					local v109;
					while true do
						if (0 == FlatIdent_7126B) then
							v109 = 0;
							while true do
								if (v109 == 0) then
									if not v61 then
										local FlatIdent_4E551 = 0;
										while true do
											if (FlatIdent_4E551 == 0) then
												for v156, v157 in ipairs(v80:GetDescendants()) do
													if (v157:IsA("Highlight") and (v157.Name == "AxisESP")) then
														v157:Destroy();
													end
												end
												return;
											end
										end
									end
									for v144, v145 in ipairs(v80:GetDescendants()) do
										if (v145:IsA("Part") and string.find(string.lower(v145.Name), "axis")) then
											local FlatIdent_10550 = 0;
											local v158;
											local v159;
											while true do
												if (0 == FlatIdent_10550) then
													v158 = 0;
													v159 = nil;
													FlatIdent_10550 = 1;
												end
												if (FlatIdent_10550 == 1) then
													while true do
														if ((0 + 0) == v158) then
															v159 = v145:FindFirstChild("AxisESP");
															if not v159 then
																local v181 = 529 - (406 + 123);
																while true do
																	if (v181 == 1) then
																		local FlatIdent_F26C = 0;
																		while true do
																			if (FlatIdent_F26C == 1) then
																				v181 = 1324 - (1249 + 73);
																				break;
																			end
																			if (FlatIdent_F26C == 0) then
																				v159.FillColor = Color3.fromRGB(2024 - (1749 + 20), 61 + 194, 0);
																				v159.OutlineColor = Color3.fromRGB(255, 255, 255);
																				FlatIdent_F26C = 1;
																			end
																		end
																	end
																	if (v181 == 3) then
																		v159.Parent = v145;
																		break;
																	end
																	if (v181 == (1 + 1)) then
																		local FlatIdent_77478 = 0;
																		while true do
																			if (FlatIdent_77478 == 0) then
																				v159.OutlineTransparency = 0;
																				v159.FillTransparency = 0.3;
																				FlatIdent_77478 = 1;
																			end
																			if (1 == FlatIdent_77478) then
																				v181 = 3;
																				break;
																			end
																		end
																	end
																	if (v181 == 0) then
																		v159 = Instance.new("Highlight");
																		v159.Name = "AxisESP";
																		v181 = 1;
																	end
																end
															end
															break;
														end
													end
													break;
												end
											end
										end
									end
									break;
								end
							end
							break;
						end
					end
				end
				task.spawn(function()
					while v61 do
						local FlatIdent_145D2 = 0;
						local v127;
						while true do
							if (FlatIdent_145D2 == 0) then
								v127 = 0;
								while true do
									if (v127 == (1145 - (466 + 679))) then
										v81();
										task.wait(2 - 1);
										break;
									end
								end
								break;
							end
						end
					end
				end);
				break;
			end
			if ((0 - 0) == v79) then
				local FlatIdent_7B2D6 = 0;
				while true do
					if (FlatIdent_7B2D6 == 0) then
						v80 = game:GetService("Workspace");
						v81 = nil;
						FlatIdent_7B2D6 = 1;
					end
					if (FlatIdent_7B2D6 == 1) then
						v79 = 1901 - (106 + 1794);
						break;
					end
				end
			end
		end
	end
end});
local v18 = game:GetService("Workspace");
local v1 = game:GetService("Players");
local v19 = false;
v15:Toggle({Title="Esp NPCs",Default=false,Callback=function(v62)
	local FlatIdent_6DFD9 = 0;
	local v63;
	local v64;
	while true do
		if (FlatIdent_6DFD9 == 1) then
			while true do
				if (v63 == 1) then
					function v64()
						local v96 = 0 + 0;
						while true do
							if (v96 == (0 - 0)) then
								if not v19 then
									local FlatIdent_3121 = 0;
									while true do
										if (FlatIdent_3121 == 0) then
											for v146, v147 in ipairs(v18:GetDescendants()) do
												if (v147:IsA("Highlight") and (v147.Name == "NPCESP")) then
													v147:Destroy();
												end
											end
											return;
										end
									end
								end
								for v133, v134 in ipairs(v18:GetDescendants()) do
									if (v134:IsA("Model") and v134:FindFirstChildOfClass("Humanoid")) then
										local FlatIdent_90A69 = 0;
										local v148;
										local v149;
										while true do
											if (FlatIdent_90A69 == 1) then
												while true do
													if (v148 == (115 - (4 + 110))) then
														if not v149 then
															local FlatIdent_40096 = 0;
															local v171;
															local v172;
															while true do
																if (FlatIdent_40096 == 1) then
																	while true do
																		if (v171 == 0) then
																			v172 = v134:FindFirstChild("NPCESP");
																			if not v172 then
																				local FlatIdent_6066D = 0;
																				while true do
																					if (FlatIdent_6066D == 3) then
																						v172.Parent = v134;
																						break;
																					end
																					if (2 == FlatIdent_6066D) then
																						v172.OutlineTransparency = 0 - 0;
																						v172.FillTransparency = 0.3 - 0;
																						FlatIdent_6066D = 3;
																					end
																					if (FlatIdent_6066D == 1) then
																						v172.FillColor = Color3.fromRGB(1682 - (41 + 1386), 103 - (17 + 86), 0);
																						v172.OutlineColor = Color3.fromRGB(255, 255, 174 + 81);
																						FlatIdent_6066D = 2;
																					end
																					if (FlatIdent_6066D == 0) then
																						v172 = Instance.new("Highlight");
																						v172.Name = "NPCESP";
																						FlatIdent_6066D = 1;
																					end
																				end
																			end
																			break;
																		end
																	end
																	break;
																end
																if (FlatIdent_40096 == 0) then
																	v171 = 584 - (57 + 527);
																	v172 = nil;
																	FlatIdent_40096 = 1;
																end
															end
														else
															local FlatIdent_14716 = 0;
															local v173;
															while true do
																if (0 == FlatIdent_14716) then
																	v173 = v134:FindFirstChild("NPCESP");
																	if v173 then
																		v173:Destroy();
																	end
																	break;
																end
															end
														end
														break;
													end
													if (v148 == (166 - (122 + 44))) then
														v149 = false;
														for v169, v170 in ipairs(v1:GetPlayers()) do
															if (v170.Character == v134) then
																v149 = true;
																break;
															end
														end
														v148 = 1 - 0;
													end
												end
												break;
											end
											if (FlatIdent_90A69 == 0) then
												v148 = 0 - 0;
												v149 = nil;
												FlatIdent_90A69 = 1;
											end
										end
									end
								end
								break;
							end
						end
					end
					if v19 then
						task.spawn(function()
							while v19 do
								local v128 = 0 - 0;
								while true do
									if (v128 == (0 + 0)) then
										v64();
										task.wait(1 + 0);
										break;
									end
								end
							end
						end);
					else
						v64();
					end
					break;
				end
				if (v63 == (0 - 0)) then
					local FlatIdent_71493 = 0;
					while true do
						if (FlatIdent_71493 == 1) then
							v63 = 66 - (30 + 35);
							break;
						end
						if (FlatIdent_71493 == 0) then
							v19 = v62;
							v64 = nil;
							FlatIdent_71493 = 1;
						end
					end
				end
			end
			break;
		end
		if (FlatIdent_6DFD9 == 0) then
			v63 = 0 + 0;
			v64 = nil;
			FlatIdent_6DFD9 = 1;
		end
	end
end});
local v18 = game:GetService("Workspace");
local v19 = false;
v15:Toggle({Title="Esp Generators",Default=false,Callback=function(v65)
	local FlatIdent_75331 = 0;
	local v66;
	local v67;
	while true do
		if (FlatIdent_75331 == 0) then
			v66 = 0;
			v67 = nil;
			FlatIdent_75331 = 1;
		end
		if (FlatIdent_75331 == 1) then
			while true do
				if (v66 == 0) then
					local FlatIdent_5BCFC = 0;
					while true do
						if (FlatIdent_5BCFC == 1) then
							v66 = 1 + 0;
							break;
						end
						if (0 == FlatIdent_5BCFC) then
							v19 = v65;
							v67 = nil;
							FlatIdent_5BCFC = 1;
						end
					end
				end
				if (v66 == (1258 - (1043 + 214))) then
					function v67()
						local v97 = 0;
						while true do
							if (v97 == (0 - 0)) then
								if not v19 then
									local FlatIdent_7D3C9 = 0;
									local v143;
									while true do
										if (0 == FlatIdent_7D3C9) then
											v143 = 0;
											while true do
												if (v143 == 0) then
													for v166, v167 in ipairs(v18:GetDescendants()) do
														if (v167:IsA("Highlight") and (v167.Name == "GeneratorESP")) then
															v167:Destroy();
														end
													end
													return;
												end
											end
											break;
										end
									end
								end
								for v135, v136 in ipairs(v18:GetDescendants()) do
									if (v136:IsA("Model") and (v136.Name == "Generator")) then
										local FlatIdent_270C = 0;
										local v150;
										local v151;
										while true do
											if (FlatIdent_270C == 0) then
												v150 = 0;
												v151 = nil;
												FlatIdent_270C = 1;
											end
											if (FlatIdent_270C == 1) then
												while true do
													if ((1212 - (323 + 889)) == v150) then
														v151 = v136:FindFirstChild("GeneratorESP");
														if not v151 then
															local FlatIdent_B322 = 0;
															local v174;
															while true do
																if (FlatIdent_B322 == 0) then
																	v174 = 0 - 0;
																	while true do
																		if (v174 == (581 - (361 + 219))) then
																			local FlatIdent_4F2F2 = 0;
																			while true do
																				if (FlatIdent_4F2F2 == 0) then
																					v151.FillColor = Color3.fromRGB(448 - (53 + 267), 0 + 0, 128);
																					v151.OutlineColor = Color3.fromRGB(668 - (15 + 398), 1237 - (18 + 964), 255);
																					FlatIdent_4F2F2 = 1;
																				end
																				if (FlatIdent_4F2F2 == 1) then
																					v174 = 7 - 5;
																					break;
																				end
																			end
																		end
																		if (v174 == (2 + 0)) then
																			v151.OutlineTransparency = 0 + 0;
																			v151.FillTransparency = 850.3 - (20 + 830);
																			v174 = 3;
																		end
																		if (v174 == (0 + 0)) then
																			v151 = Instance.new("Highlight");
																			v151.Name = "GeneratorESP";
																			v174 = 127 - (116 + 10);
																		end
																		if (v174 == 3) then
																			v151.Parent = v136;
																			break;
																		end
																	end
																	break;
																end
															end
														end
														break;
													end
												end
												break;
											end
										end
									end
								end
								break;
							end
						end
					end
					if v19 then
						task.spawn(function()
							while v19 do
								local FlatIdent_70003 = 0;
								local v129;
								local v130;
								while true do
									if (FlatIdent_70003 == 0) then
										v129 = 0 + 0;
										v130 = nil;
										FlatIdent_70003 = 1;
									end
									if (FlatIdent_70003 == 1) then
										while true do
											if (v129 == (738 - (542 + 196))) then
												v130 = 0;
												while true do
													if (v130 == (0 - 0)) then
														v67();
														task.wait(1 + 0);
														break;
													end
												end
												break;
											end
										end
										break;
									end
								end
							end
						end);
					else
						v67();
					end
					break;
				end
			end
			break;
		end
	end
end});
v16:Paragraph({Title="🇬🇧",Desc="Hi, thank you for using our script, If you want to know about script updates or news, join our Discord channel!"});
v16:Paragraph({Title="🇷🇺",Desc="Привет, спасибо что пользуетесь Нашим скриптом, если хотите знать про обновление скрипта или новости то присоединяйтесь к Нашему Discord каналу!"});
v16:Button({Title="Наш Discord сервер!",Color=Color3.fromRGB(66 + 62, 0 + 0, 671 - 416),Callback=function()
	setclipboard("https://discord.gg/szeNZ5HqF");
end});
