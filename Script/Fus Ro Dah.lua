local p = game.Players.LocalPlayer 
script.Name = "FusScript"
local go = true --for normal shouts
local skygo = true --for sky-related shouts
local z = Instance.new("Sound", p.Character.Head)
z.SoundId = "rbxassetid://149576324"
z.Looped = false
z.Volume = 2
p.Chatted:connect(function(message)
local msg = string.lower(message)
if string.find(msg, "fus ro dah") and go == true then
go = false
z:Play()
wait(1)
fus = Instance.new("Part")
local light = Instance.new("PointLight")
light.Color = Color3.new(0,251,255)
light.Range = 16
light.Parent = fus
fus.formFactor = "Custom"
fus.Size = Vector3.new(1, 1, 4)
fus.TopSurface = "Smooth"
fus.BottomSurface = "Smooth"
fus.Anchored = false
fus.CanCollide = false
fus.BrickColor = BrickColor.new("Bright blue")
fus.Material = "Neon"
fus.Transparency = 0.6
fus.Reflectance = 0.5
fus.CFrame = p.Character.Head.CFrame * CFrame.new(0, 0, -4)
fus.Velocity = (p.Character.Head.Position - fus.Position).unit * -150
local f = Instance.new("Fire")
f.Name = "FusFire"
f.Size = fus:GetMass()
f.Heat = 0
f.Color = Color3.new(1, 1, 1)
f.SecondaryColor = Color3.new(1, 1, 1)
f.Parent = fus
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Sphere"
mesh.Parent = fus
local bp = Instance.new("BodyPosition")
bp.position = p.Character.Head.Position
bp.maxForce = Vector3.new(0, math.huge, 0)
bp.Parent = fus
fus.Parent = workspace
fus.Touched:connect(fused)
coroutine.resume(coroutine.create(function() 
wait(0.5)
for i = 1, 20 do
wait(0.01)
local cf = fus.CFrame
fus.Size = fus.Size + Vector3.new(1, 1, -1)
f.Size = fus:GetMass()/2
fus.CFrame = cf
end
wait(3)
for i = 1, 40 do
fus.Transparency = fus.Transparency + 0.1
f.Size = f.Size - (fus:GetMass()/40)
wait(0.1)
end
wait()
fus.Transparency = 1
f:remove()
fus:remove()
go = true
end))
game:GetService("Debris"):AddItem(fus, 15)
elseif string.find(msg, "wuld nah kest") then
local speed = p.Character.Humanoid.WalkSpeed --Speed prior to sprinting
local cf = p.Character.Torso.CFrame * CFrame.new(0, 0, -50)
local pos = cf.p
p.Character.Humanoid.WalkSpeed = 200
p.Character.Humanoid:MoveTo(pos, workspace.Base)
wait(0.275)
p.Character.Humanoid.WalkSpeed = speed
p.Character.Humanoid:MoveTo(p.Character.Torso.Position, p.Character.Torso)
elseif string.find(msg, "liz slen nus") and go == true then
--local succ, ret = pcall(function()
go = false
fus = Instance.new("Part")
fus.formFactor = "Custom"
fus.Size = Vector3.new(3, 3, 6)
fus.TopSurface = "Smooth"
fus.BottomSurface = "Smooth"
fus.Anchored = false
fus.CanCollide = false
fus.BrickColor = BrickColor.new("White")
fus.Transparency = 0.5
fus.Reflectance = 0.6
fus.CFrame = p.Character.Head.CFrame * CFrame.new(0, 0, -6)
fus.Velocity = (p.Character.Head.Position - fus.Position).unit * -150
local s = Instance.new("Sparkles")
s.Name = "LizSparkle"
s.SparkleColor = Color3.new(1, 1, 1)
s.Parent = fus
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Sphere"
mesh.Parent = fus
local bp = Instance.new("BodyPosition")
bp.position = p.Character.Head.Position
bp.maxForce = Vector3.new(0, math.huge, 0)
bp.Parent = fus
fus.Parent = workspace
fus.Touched:connect(lized)
--[end)
if ret then
local m = Instance.new("Part", p.PlayerGui)
m.Text = "ERROR: " ..ret
game:GetService("Debris"):AddItem(m, 15)
end
coroutine.resume(coroutine.create(function()
wait(3)
for i = 1, 40 do
fus.Transparency = fus.Transparency + 0.1
wait(0.1)
end
wait()
fus.Transparency = 1
fus:remove()
go = true
end))
game:GetService("Debris"):AddItem(fus, 15)
elseif string.find(msg, "yol toor shul") and go == true then
go = false
fus = Instance.new("Part")
fus.formFactor = "Custom"
fus.Size = Vector3.new(3, 3, 6)
fus.TopSurface = "Smooth"
fus.BottomSurface = "Smooth"
fus.Anchored = false
fus.CanCollide = false
fus.BrickColor = BrickColor.new("Bright orange")
fus.Transparency = 0.5
fus.Reflectance = 0.6
fus.CFrame = p.Character.Head.CFrame * CFrame.new(0, 0, -6)
fus.Velocity = (p.Character.Head.Position - fus.Position).unit * -150
local f = Instance.new("Fire")
f.Name = "FusFire"
f.Size = fus:GetMass()/3
f.Heat = 0
f.Parent = fus
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Sphere"
mesh.Parent = fus
local bp = Instance.new("BodyPosition")
bp.position = p.Character.Head.Position
bp.maxForce = Vector3.new(0, math.huge, 0)
bp.Parent = fus
fus.Parent = workspace
fus.Touched:connect(yoled)
coroutine.resume(coroutine.create(function() 
wait(0.5)
for i = 1, 20 do
wait(0.01)
local cf = fus.CFrame
fus.Size = fus.Size + Vector3.new(1, 1, -1)
f.Size = fus:GetMass()/2
fus.CFrame = cf
end
wait(3)
for i = 1, 40 do
fus.Transparency = fus.Transparency + 0.1
f.Size = f.Size - (fus:GetMass()/3)/40
wait(0.1)
end
wait()
fus.Transparency = 1
f:remove()
fus:remove()
go = true
end))
game:GetService("Debris"):AddItem(fus, 15)
elseif string.find(msg, "feim zii gron") then
p.Character.Humanoid.WalkSpeed = 30
for a, b in pairs(p.Character:children()) do
if b.Name == "Head" then
if b:findFirstChild("face") ~= nil then
coroutine.resume(coroutine.create(function()
for i = 1, 110 do
b.face.Transparency = b.face.Transparency + 0.01
wait(0.01)
end
b.face.Transparency = 1
end))
end
end
if b.className == "Part" then
coroutine.resume(coroutine.create(function()
for i = 1, 110 do
b.Transparency = b.Transparency + 0.01
wait(0.01)
end
b.Transparency = 1
end))
elseif b.className == "Hat" then
coroutine.resume(coroutine.create(function()
for i = 1, 110 do
b.Handle.Transparency = b.Handle.Transparency + 0.01
wait(0.01)
end
b.Handle.Transparency = 1
end))
end
end
wait(15)
p.Character.Humanoid.WalkSpeed = 16
for a, b in pairs(p.Character:children()) do
if b.Name == "Head" then
if b:findFirstChild("face") ~= nil then
coroutine.resume(coroutine.create(function()
for i = 1, 110 do
b.face.Transparency = b.face.Transparency - 0.01
wait(0.01)
end
b.face.Transparency = 0
end))
end
end
if b.className == "Part" then
coroutine.resume(coroutine.create(function()
for i = 1, 110 do
b.Transparency = b.Trans0arency - 0.01
wait(0.01)
end
b.Transparency = 0
end))
elseif b.className == "Hat" then
coroutine.resume(coroutine.create(function()
for i = 1, 110 do
b.Handle.Transparency = b.Handle.Transparency - 0.01
wait(0.01)
end
b.Handle.Transparency = 0
end))
end
end
elseif string.find(msg, "strun bah qo") and skygo == true then
skygo = false
local clouds = {}
function lightning(cl)
local lights = {}
for i = 1, 15 do
local l = Instance.new("Part")
l.Name = "FusLightning"
table.insert(lights, l)
game:GetService("Debris"):AddItem(l, 15)
l.formFactor = "Custom"
l.Size = Vector3.new(1, math.random(50, 75), 1)
l.BrickColor = BrickColor.new("Institutional white")
l.Transparency = 0.45
l.Reflectance = 0.5
l.Anchored = true
l.CanCollide = false
local xnum = 6
local znum = 6
if i == 1 then
l.CFrame = cl.CFrame * CFrame.Angles(math.random(-(math.pi/xnum), math.pi/xnum), 0, math.random(-(math.pi/znum), math.pi/znum)) * CFrame.new(0, -1 * (l.Size.Y/2), 0)
elseif i > 1 then
local llight = lights[i - 1]
l.CFrame = llight.CFrame * CFrame.Angles(math.random(-(math.pi/xnum), math.pi/xnum), 0, math.random(-(math.pi/znum), math.pi/znum)) * CFrame.new(0, -1 * (l.Size.Y/2), 0)
end
l.Parent = workspace
l.Touched:connect(function(part) struned(part, l) end)
coroutine.resume(coroutine.create(function()
repeat
l.Transparency = l.Transparency + 0.02
wait()
until l.Transparency >= 1
l:remove()
end))
end
end
for i = 1, 100 do
game.Lighting.Brightness = game.Lighting.Brightness - 0.01
wait(0.05)
end
game.Lighting.Brightness = 0
local cloud = Instance.new("Part")
cloud.Name = "StrunCloud"
cloud.Size = Vector3.new(1, 1, 1)
cloud.Anchored = true
cloud.CanCollide = false
cloud.BrickColor = BrickColor.new("Black")
cloud.Transparency = 1
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "FileMesh"
mesh.Scale = Vector3.new(math.random(100, 150), math.random(50, 100), math.random(100, 150))
mesh.MeshId = "www.roblox.com/asset/?id=1095708"
mesh.Parent = cloud
for i = 1, (math.random(4, 8)) do
local newc = cloud:clone()
newc.Parent = workspace
game:GetService("Debris"):AddItem(newc, 300)
table.insert(clouds, newc)
newc.CFrame = CFrame.new(p.Character.Torso.Position + Vector3.new(math.random(-250, 250), math.random(150, 200), math.random(-250, 250)))
coroutine.resume(coroutine.create(function()
repeat
newc.Transparency = newc.Transparency - 0.01
wait()
until newc.Transparency <= 0.2
newc.Transparency = 0.2
end))
end
for i = 1, (math.random(7, 15)) do
if skygo == true then break end
local s = Instance.new("Sound")
game:GetService("Debris"):AddItem(s, 5)
s.Name = "Lighting"
s.SoundId = "rbxasset://sounds/HalloweenLightning.wav"
s.Pitch = (math.random(10, 15) * 0.1)
s.PlayOnRemove = true
s.Looped = false
s.Parent = workspace
wait(0.5)
s:play()
for i = 1, #clouds do
lightning(clouds[i])
end
game.Lighting.Brightness = 1
wait(0.001)
game.Lighting.Brightness = 0
s:remove()
wait(math.random(3, 6))
end
wait(2)
for i = 1, #clouds do
coroutine.resume(coroutine.create(function()
repeat
clouds[i].Transparency = clouds[i].Transparency + 0.01
wait(0.05)
until clouds[i].Transparency >= 1
clouds[i]:remove()
end))
end
for i = 1, 110 do
game.Lighting.Brightness = game.Lighting.Brightness + 0.01
wait(0.01)
end
skygo = true
game.Lighting.Brightness = 1
elseif string.find(msg, "fo krah diin") and go == true then
go = false
for i = 1, 50 do
fus = Instance.new("Part")
fus.formFactor = "Custom"
fus.Size = Vector3.new(0.5, 0.5, 0.5)
fus.TopSurface = "Smooth"
fus.BottomSurface = "Smooth"
fus.Anchored = false
fus.CanCollide = false
fus.BrickColor = BrickColor.new("Institutional white")
fus.Transparency = 0.6
fus.Reflectance = 0.5
fus.CFrame = p.Character.Head.CFrame * CFrame.new(math.random(-15, 15)*0.1, math.random(-15, 15)*0.1, -4)
fus.Velocity = (p.Character.Head.Position - fus.Position).unit * -150
local f = Instance.new("Fire")
f.Name = "FusFire"
f.Size = fus:GetMass()
f.Heat = 0
f.Color = Color3.new(1, 1, 1)
f.SecondaryColor = Color3.new(1, 1, 1)
f.Parent = fus
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Sphere"
mesh.Parent = fus
local bp = Instance.new("BodyPosition")
bp.position = fus.Position
bp.maxForce = Vector3.new(0, math.huge, 0)
bp.Parent = fus
fus.Parent = workspace
fus.Touched:connect(function(part) foed(part, fus) end)
game:Ge4Service("Debris"):AddItem(fus, 15)
end
go = true
elseif string.find(msg, "laas yah nir") then
for i = 1, 30 do
for a, b in pairs(game.Players:children()) do
if b.Character ~= nil then
if (p.Character.Torso.Position - b.Character.Torso.Position).magnitude <= 100 and b ~= p then
if b.Character.Torso:findFirstChild("LaasFire") == nil then
local f = Instance.new("Fire", b.Character.Torso)
f.Name = "LaasFire"
f.Size = b.Character.Torso:GetMass()*2
f.Color = Color3.new(0, 0, 0)
f.SecondaryColor = Color3.new(1, 1, 1)
end
elseif (p.Character.Torso.Position - b.Character.Torso.Position).magnitude > 100 then
if b.Character.Torso:findFirstChild("LaasFire") ~= nil then
b.Character.Torso.LaasFire:remove()
end
end
end
end
wait(1)
end
for a, b in pairs(game.Players:children()) do
if b.Character.Torso:findFirstChild("LaasFire") ~= nil then
b.Character.Torso.LaasFire:remove()
end
end
elseif string.find(msg, "zun haal viik") and go == true then
go = false
fus = Instance.new("Part")
fus.formFactor = "Custom"
fus.Size = Vector3.new(1, 1, 4)
fus.TopSurface = "Smooth"
fus.BottomSurface = "Smooth"
fus.Anchored = false
fus.CanCollide = false
fus.BrickColor = BrickColor.new("Lime green")
fus.Transparency = 0.6
fus.Reflectance = 0.5
fus.CFrame = p.Character.Head.CFrame * CFrame.new(0, 0, -4)
fus.Velocity = (p.Character.Head.Position - fus.Position).unit * -200
local f = Instance.new("Fire")
f.Name = "FusFire"
f.Size = fus:GetMass()
f.Heat = 0
f.Color = Color3.new(1, 1, 1)
f.SecondaryColor = Color3.new(1, 1, 1)
f.Parent = fus
local mesh = In3tance.new("SpecialMesh")
mesh.MeshType = "Sphere"
mesh.Parent = fus
local bp = Instance.new("BodyPosition")
bp.position = p.Character.Head.Position
bp.maxForce = Vector3.new(0, math.huge, 0)
bp.Parent = fus
fus.Paren4 = workspace
fus.Touched:connect(function(part) zuned(part, fus) end)
coroutine.resume(coroutine.create(function() 
wait(0.5)
for i = 1, 9 do
wait(0.01)
local cf = fus.CFrame
fus.Size = fus.Size + Vector3.new(1, 1, -1)
f.Size = fus:GetMass()/2
fus.CFrame = cf
end
wait(3)
for i = 1, 40 do
fus.Transparency = fus.Transparency + 0.1
f.Size = f.Size - (fus:GetMass()/40)
wait(0.1)
end
wait()
fus.Transparency = 1
f:remove()
fus:remove()
go = true
end))
game:GetService("Debris"):AddItem(fus, 15)
elseif string.find(msg, "krii lun aus") and go == true then
go = false
fus = Instance.new("Part")
fus.formFactor = "Custom"
fus.Size = Vector3.new(1, 1, 4)
fus.TopSurface = "Smooth"
fus.BottomSurface = "Smooth"
fus.Anchored = false
fus.CanCollide = false
fus.BrickColor = BrickColor.new("Bright purple")
fus.Transparency = 0.6
fus.Reflectance = 0.5
fus.CFrame = p.Character.Head.CFrame * CFrame.new(0, 0, -4)
fus.Velocity = (p.Character.Head.Position - fus.Position).unit * -150
local f = Instance.new("Fire")
f.Name = "FusFire"
f.Size = fus:GetMass()
f.Heat = 0
f.Color = Color3.new(0, 0, 0)
f.SecondaryColor = Color3.new(0, 0, 0)
f.Parent = fus
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Sphere"
mesh.Parent = fus
local bp = Instance.new("BodyPosition")
bp.position = p.Character.Head.Position
bp.maxForce = Vector3.new(0, math.huge, 0)
bp.Parent = fus
fus.Parent = workspace
fus.Touched:connect(function(part) kriied(part, fus) end)
coroutine.resume(coroutine.create(function() 
wait(0.5)
for i = 1, 19 do
wait(0.01)
local cf = fus.CFrame
fus.Size = fus.Size + Vector3.new(1, 1, -1)
f.Size = fus:GetMass()/2
fus.CFrame = cf
end
wait(3)
for i = 1, 40 do
fus.Transparency = fus.Transparency + 0.1
f.Size = f.Size - (fus:GetMass()/40)
wait(0.1)
end
wait()
fus.Transparency = 1
f:remove()
fus:remove()
go = true
end))
game:GetService("Debris"):AddItem(fus, 15)
elseif string.find(msg, "tiid klo ul") then
for a, b in pairs(game.Players:children()) do
if b.Character ~= nil and b ~= p then
for c, d in pairs(b.Character:children()) do
if d.className == "Part" then
if d.Anchored == false then
local cf = nil
if d.Name == "Torso" then
cf = d.CFrame
end
d.Anchored = true
coroutine.resume(coroutine.create(function()
wait(10)
if d ~= nil then
d.Anchored = false
d.CFrame = cf
end
end))
end
elseif d.className == "Hat" then
if d.Handle.Anchored == false then
d.Handle.Anchored = true
coroutine.resume(coroutine.create(function()
wait(10)
if d ~= nil then
if d.Handle ~= nil then
d.Handle.Anchored = false
end
end
end))
end
end
end
end
end
elseif string.find(msg, "faas ru maar") and go == true then
go = false
fus = Instance.new("Part")
fus.formFactor = "Custom"
fus.Size = Vector3.new(1, 1, 4)
fus.TopSurface = "Smooth"
fus.BottomSurface = "Smooth"
fus.Anchored = false
fus.CanCollide = false
fus.BrickColor = BrickColor.new("Really black")
fus.Transparency = 0.6
fus.Reflectance = 0.5
fus.CFrame = p.Character.Head.CFrame * CFrame.new(0, 0, -4)
fus.Velocity = (p.Character.Head.Position - fus.Position).unit * -150
local f = Instance.new("Fire")
f.Name = "FusFire"
f.Size = fus:GetMass()
f.Heat = 0
f.Color = Color3.new(0, 0, 0)
f.SecondaryColor = Color3.new(0, 0, 0)
f.Parent = fus
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Sphere"
mesh.Parent = fus
local bp = Instance.new("BodyPosition")
bp.position = p.Character.Head.Position
bp.maxForce = Vector3.new(0, math.huge, 0)
bp.Parent = fus
fus.Parent = workspace
fus.Touched:connect(function(part) faased(part) end)
coroutine.resume(coroutine.create(function() 
wait(0.5)
for i = 1, 19 do
wait(0.01)
local cf = fus.CFrame
fus.Size = fus.Size + Vector3.new(1, 1, -1)
f.Size = fus:GetMass()/2
fus.CFrame = cf
end
wait(3)
for i = 1, 40 do
fus.Transparency = fus.Transparency + 0.1
f.Size = f.Size - (fus:GetMass()/40)
wait(0.1)
end
wait()
fus.Transparency = 1
f:remove()
fus:remove()
go = true
end))
game:GetService("Debris"):AddItem(fus, 15)
elseif string.find(msg, "toor bah yol") and skygo == true then
skygo = false
local clouds = {}
function meteor(cloud)
local cf = CFrame.new(cloud.Position + Vector3.new(math.random(-10, 10), 20, math.random(-10, 10)))
local m = Instance.new("Part")
m.Name = "FusRock"
m.Shape = "Ball"
m.formFactor = "Symmetric"
m.Anchored = false
m.CanCollide = false
m.TopSurface = "Smooth"
m.BottomSurface = "Smooth"
local size = math.random(10, 20)
m.Size = Vector3.new(size, size, size)
m.BrickColor = BrickColor.new("Bright red")
m.Reflectance = 0.4
m.CFrame = cf
Instance.new("Fire", m).Size = m:GetMass()
m.Velocity = Vector3.new(0, -50, 0)
m.Parent = workspace
game:GetService("Debris"):AddItem(m, 30)
m.Touched:connect(function(part) toored(part, m) end)
end
for i = 1, 100 do
game.Lighting.Brightness = game.Lighting.Brightness - 0.01
wait(0.05)
end
game.Lighting.Brightness = 0
local cloud = Instance.new("Part")
cloud.Name = "ToorCloud"
cloud.Size = Vector3.new(1, 1, 1)
cloud.Anchored = true
cloud.CanCollide = false
cloud.BrickColor = BrickColor.new("Black")
cloud.Transparency = 1
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "FileMesh"
mesh.Scale = Vector3.new(math.random(100, 150), math.random(50, 100), math.random(100, 150))
mesh.MeshId = "www.roblox.com/asset/?id=1095708"
mesh.Parent = cloud
for i = 1, (math.random(4, 8)) do
local newc = cloud:clone()
newc.Parent = workspace
game:GetService("Debris"):AddItem(newc, 180)
table.insert(clouds, newc)
newc.CFrame = CFrame.new(p.Character.Torso.Position + Vector3.new(math.random(-250, 250), math.random(150, 200), math.random(-250, 250)))
coroutine.resume(coroutine.create(function()
repeat
newc.Transparency = newc.Transparency - 0.01
wait()
until newc.Transparency <= 0.2
newc.Transparency = 0.2
end))
end
for launch = 1, math.random(20, 30) do
if skygo == true then break end
wait(math.random(2, 4))
meteor(clouds[math.random(1, #clouds)])
end
wait(1)
for c = 1, #clouds do
coroutine.resume(coroutine.create(function()
repeat
clouds[c].Transparency = clouds[c].Transparency + 0.01
wait()
until clouds[c].Transparency >= 1
clouds[c].Transparency = 1
clouds[c]:remove()
end))
end
repeat
game.Lighting.Brightness = game.Lighting.Brightness + 0.01
wait(0.01)
until game.Lighting.Brightness >= 1
game.Lighting.Brightness = 1
skygo = true
elseif string.find(msg, "joor zah frul") and go == true then
go = false
fus = Instance.new("Part")
fus.formFactor = "Custom"
fus.Size = Vector3.new(1, 1, 4)
fus.TopSurface = "Smooth"
fus.BottomSurface = "Smooth"
fus.Anchored = false
fus.CanCollide = false
fus.BrickColor = BrickColor.new("Bright yellow")
fus.Transparency = 0.7
fus.Reflectance = 0.5
fus.CFrame = p.Character.Head.CFrame * CFrame.new(0, 0, -4)
fus.Velocity = (p.Character.Head.Position - fus.Position).unit * -150
local f = Instance.new("Sparkles")
f.Name = "FusSparkles"
f.SparkleColor = Color3.new(0, 0, 0)
f.Parent = fus
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Sphere"
mesh.Parent = fus
local bp = Instance.new("BodyPosition")
bp.position = p.Character.Head.Position
bp.maxForce = Vector3.new(0, math.huge, 0)
bp.Parent = fus
fus.Parent = workspace
fus.Touched:connect(function(part) joored(part, fus) end)
coroutine.resume(coroutine.create(function() 
wait(0.5)
for i = 1, 19 do
wait(0.01)
local cf = fus.CFrame
fus.Size = fus.Size + Vector3.new(1, 1, -1)
fus.CFrame = cf
end
wait(3)
for i = 1, 40 do
fus.Transparency = fus.Transparency + 0.1
wait(0.1)
end
wait()
fus.Transparency = 1
f:remove()
fus:remove()
go = true
end))
game:GetService("Debris"):AddItem(fus, 15)
elseif string.find(msg, "kaan drem ov") and go == true then
go = false
fus = Instance.new("Part")
fus.formFactor = "Custom"
fus.Size = Vector3.new(1, 1, 4)
fus.TopSurface = "Smooth"
fus.BottomSurface = "Smooth"
fus.Anchored = false
fus.CanCollide = false
fus.BrickColor = BrickColor.new("White")
fus.Transparency = 0.7
fus.Reflectance = 0.5
fus.CFrame = p.Character.Head.CFrame * CFrame.new(0, 0, -4)
fus.Velocity = (p.Character.Head.Position - fus.Position).unit * -150
local f = Instance.new("Sparkles")
f.Name = "FusSparkles"
f.SparkleColor = Color3.new(1, 1, 1)
f.Parent = fus
