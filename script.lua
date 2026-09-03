local R=loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local W=R:CreateWindow({Name="CANDY HUB",LoadingTitle="CANDY HUB Loading...",LoadingSubtitle="by RIP_frog2253",ConfigurationSaving={Enabled=true,FolderName="CandyHubConfig",FileName="Configuration"},Discord={Enabled=true,Invite="CKnrq3Jt3K",RememberJoins=true},KeySystem=true,KeySettings={Title="CANDY HUB | Key System",Subtitle="กรอก Key เพื่อเข้าใช้งาน",Note="Discord: https://discord.gg/CKnrq3Jt3K",FileName="CandyHubKey",SaveKey=true,GrabKeyFromSite=false,Key={"CANDYDOODMAR55"}}})
local P,RS,LP=game:GetService("Players"),game:GetService("RunService"),game:GetService("Players").LocalPlayer
local SE,SV,JE,JV,IJE,Fly,FS,NE=false,16,false,50,false,false,50,false
local AP,AH,SR,PLH,HD=false,false,"Common",false,0.1
local PESP,RESP=false,false

local PT=W:CreateTab("Players",4483362458)
PT:CreateToggle({Name="เปิดใช้งาน วิ่งเร็ว",CurrentValue=false,Callback=function(v) SE=v if not v and LP.Character and LP.Character:FindFirstChild("Humanoid") then LP.Character.Humanoid.WalkSpeed=16 end end})
PT:CreateSlider({Name="ปรับความเร็ว (16-500)",Range={16,500},Increment=1,CurrentValue=16,Callback=function(v) SV=v end})
PT:CreateDivider()
PT:CreateToggle({Name="เปิดใช้งาน กระโดดสูง",CurrentValue=false,Callback=function(v) JE=v if not v and LP.Character and LP.Character:FindFirstChild("Humanoid") then LP.Character.Humanoid.JumpPower=50 end end})
PT:CreateSlider({Name="ปรับความสูงกระโดด (50-500)",Range={50,500},Increment=1,CurrentValue=50,Callback=function(v) JV=v end})
PT:CreateDivider()
PT:CreateToggle({Name="กระโดดไม่จำกัด (Infinity Jump)",CurrentValue=false,Callback=function(v) IJE=v end})
game:GetService("UserInputService").JumpRequest:Connect(function() if IJE and LP.Character and LP.Character:FindFirstChild("Humanoid") then LP.Character.Humanoid:ChangeState("Jumping") end end)
PT:CreateToggle({Name="บิน (Fly)",CurrentValue=false,Callback=function(v) Fly=v local C=LP.Character if C and C:FindFirstChild("HumanoidRootPart") then local R=C.HumanoidRootPart if Fly then local BV=Instance.new("BodyVelocity") BV.Name="CandyFly" BV.MaxForce=Vector3.new(1e9,1e9,1e9) BV.Velocity=Vector3.zero BV.Parent=R task.spawn(function() while Fly and task.wait() do BV.Velocity=workspace.CurrentCamera.CFrame.LookVector*FS end BV:Destroy() end) else if R:FindFirstChild("CandyFly") then R.CandyFly:Destroy() end end end end})
PT:CreateToggle({Name="เดินทะลุสิ่งกีดขวาง (Noclip)",CurrentValue=false,Callback=function(v) NE=v end})

RS.Stepped:Connect(function()
   if SE and LP.Character and LP.Character:FindFirstChild("Humanoid") then LP.Character.Humanoid.WalkSpeed=SV end
   if JE and LP.Character and LP.Character:FindFirstChild("Humanoid") then LP.Character.Humanoid.JumpPower=JV end
   if NE and LP.Character then for _,p in pairs(LP.Character:GetDescendants()) do if p:IsA("BasePart") then p.CanCollide=false end end end
end)

local TT=W:CreateTab("Trees",4483362458)
TT:CreateToggle({Name="ปลูกต้นไม้อัตโนมัติ (Auto Plant)",CurrentValue=false,Callback=function(v) AP=v task.spawn(function() while AP do task.wait(1) end end) end})
TT:CreateDropdown({Name="เลือกระดับต้นไม้ที่จะเก็บ",Options={"Common","Rare","Epic","Legendary","Mythic"},CurrentOption="Common",Callback=function(o) SR=o end})
TT:CreateToggle({Name="เก็บต้นไม้อัตโนมัติ (Auto Harvest)",CurrentValue=false,Callback=function(v) AH=v task.spawn(function() while AH do task.wait(HD) end end) end})
TT:CreateDivider()
TT:CreateToggle({Name="เก็บต้นไม้ก่อนฟ้าผ่า",CurrentValue=false,Callback=function(v) PLH=v end})
TT:CreateSlider({Name="หน่วงเวลาการเก็บ (Delay 0.1-1s)",Range={0.1,1},Increment=0.1,CurrentValue=0.1,Callback=function(v) HD=v end})

local ET=W:CreateTab("ESP",4483362458)
ET:CreateToggle({Name="มองทะลุคน (Player ESP)",CurrentValue=false,Callback=function(v) PESP=v for _,p in pairs(P:GetPlayers()) do if p~=LP and p.Character then if PESP then if not p.Character:FindFirstChild("Highlight") then local h=Instance.new("Highlight") h.FillColor=Color3.fromRGB(255,0,0) h.Parent=p.Character end else if p.Character:FindFirstChild("Highlight") then p.Character.Highlight:Destroy() end end end end end})
ET:CreateToggle({Name="มองผลไม้ระดับ Mythic / Legend ขึ้นไป",CurrentValue=false,Callback=function(v) RESP=v end})

local CDT=W:CreateTab("CDM",4483362458)
CDT:CreateSection("Profile & Credits")
CDT:CreateLabel("Owner: by.RIP_frog2253")
CDT:CreateLabel("UI Profile: CDM")
CDT:CreateButton({Name="คัดลอกลิ้งค์ Discord",Callback=function() setclipboard("https://discord.gg/CKnrq3Jt3K") R:Notify({Title="CANDY HUB",Content="คัดลอกลิงก์เรียบร้อย!",Duration=3}) end})
CDT:CreateLabel("สร้างเมื่อวันที่: 3 กันยายน 2026")

local OT=W:CreateTab("Official",4483362458)
OT:CreateSection("Official Information")
OT:CreateParagraph({Title="CANDY HUB Official",Content="Developer: RIP_frog2253\nDiscord: https://discord.gg/CKnrq3Jt3K\nRelease Date: 3 September 2026"})
OT:CreateButton({Name="Join Discord Community",Callback=function() setclipboard("https://discord.gg/CKnrq3Jt3K") end})

R:Notify({Title="CANDY HUB Loaded!",Content="Welcome by RIP_frog2253",Duration=5})
