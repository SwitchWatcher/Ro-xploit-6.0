eld34 = Instance.new("Weld") 
sashaweld34.Parent = minigun34 
sashaweld34.Part0 = minigun34 
sashaweld34.Part1 = minigun28 
sashaweld34.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,1.2,-0.35) 
local sashaweld35 = Instance.new("Weld") 
sashaweld35.Parent = minigun35 
sashaweld35.Part0 = minigun35 
sashaweld35.Part1 = minigun28 
sashaweld35.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.8,0) 
local sashaweld36 = Instance.new("Weld") 
sashaweld36.Parent = minigun36 
sashaweld36.Part0 = minigun36 
sashaweld36.Part1 = minigun28 
sashaweld36.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,1.5,0) 
local sashaweld37 = Instance.new("Weld") 
sashaweld37.Parent = minigun37 
sashaweld37.Part0 = minigun37 
sashaweld37.Part1 = minigun28 
sashaweld37.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,1.7,0) 
local sashaweld38 = Instance.new("Weld") 
sashaweld38.Parent = minigun38 
sashaweld38.Part0 = minigun38 
sashaweld38.Part1 = minigun28 
sashaweld38.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,0) * CFrame.new(0,2.5,0) 

if script.Parent.className ~= "HopperBin" then 
Tool = Instance.new("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = "Heavy" 
script.Parent = Tool 
end 
Bin = Tool

function unequipweld() 
model1.Parent = nil 
model2.Parent = nil 
model3.Parent = nil 
end 

function equipanim() 
if mode == "Fists" then 
for i = 0 , 1 , 0.2 do 
wait(0) 
LW.C0 = CFrame.new(-1.5+0.3*i,0.5,-0.3*i) * CFrame.fromEulerAnglesXYZ(1.7*i,0,0.3*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.3*i,0.5,-0.3*i) * CFrame.fromEulerAnglesXYZ(1.7*i,0,-0.3*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
elseif mode == "Minigun" then 
for i = 0 , 1 , 0.2 do 
wait(0) 
LW.C0 = CFrame.new(-1.5+1.5*i,0.5,-1.4*i) * CFrame.fromEulerAnglesXYZ(1.7*i,0,0.9*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.2*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
end 
-- 9650882

function equipweld() 
if mode == "Fists" then 
model1.Parent = workspace 
rightfistweld.Parent = rightfist 
leftfistweld.Parent = leftfist 
elseif mode == "Minigun" then 
model2.Parent = workspace 
sashaweld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) * CFrame.new(0,1,0) 
end 
end 

function OT(hit) 
if hit.Parent == nil then return end 
local hum = hit.Parent:findFirstChild("Humanoid") 
if hum ~= nil and hum ~= Character.Humanoid then 
hum:TakeDamage(damage) 
end 

end 

function ss(parent,pitch) 

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "rbxasset://sounds\\swordslash.wav" 
SlashSound.Parent = workspace 
SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function startup(parent,pitch) 

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://roblox.com/asset/?id=10209788" 
SlashSound.Parent = workspace 
SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function winddown(parent,pitch) 

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://roblox.com/asset/?id=10209786" 
SlashSound.Parent = workspace 
SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 

function shoot(parent,pitch) 

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://roblox.com/asset/?id=10209798" 
SlashSound.Parent = workspace 
SlashSound.Volume = .2 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 

function Punch() 
attack = true 
wait() 
local either = math.random(1,2) 
if either == 1 then 
ss(LeftArm,0.8) 
con1=leftfist.Touched:connect(function(hit) Damagefunc1(hit,10,10) end)
for i = 0 , 1 , 0.2 do 
wait() 
LW.C0 = CFrame.new(-1.2+0.4*i,0.5,-0.3-0.5*i) * CFrame.fromEulerAnglesXYZ(1.7,0,0.3+0.2*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
con1:disconnect() 
for i = 0 , 1 , 0.2 do 
wait() 
LW.C0 = CFrame.new(-1.2+0.4-0.4*i,0.5,-0.3-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1.7,0,0.3+0.2-0.2*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
elseif either == 2 then 
ss(RightArm,0.8) 
con2=rightfist.Touched:connect(function(hit) Damagefunc1(hit,10,10) end)
for i = 0 , 1 , 0.2 do 
wait() 
RW.C0 = CFrame.new(1.2-0.4*i,0.5,-0.3-0.5*i) * CFrame.fromEulerAnglesXYZ(1.7,0,-0.3-0.2*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
con2:disconnect() 
for i = 0 , 1 , 0.2 do 
wait() 
RW.C0 = CFrame.new(1.2-0.4+0.4*i,0.5,-0.3-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1.7,0,-0.3-0.2+0.2*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
attack = false 
end 

function minigunshoop() 
attack = true 
if readytoshoot == false then 
startup(minigun28,1) 
Character.Humanoid.WalkSpeed = 10 
for i = 0 , 1 , 0.05 do 
wait(0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.2+0.37*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
sashaweld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90)+1.1*i,0,0) * CFrame.new(0,1,0) 
sashaweld28.C0 = CFrame.fromEulerAnglesXYZ(0,math.rad(360)*i,0) * CFrame.new(0,0.2,0) 
end 
wait(0.5) 
end 
while hold == true do 
wait(0) 
boomeffect() 
bulletshoot() 
--Ammo() 
shoot(minigun28,0.9) 
sashaweld28.C0 = sashaweld28.C0 * CFrame.fromEulerAnglesXYZ(0,0.6,0) 
end 
if readytoshoot == false then
winddown(minigun28,1) 
Character.Humanoid.WalkSpeed = 16 
for i = 0 , 1 , 0.05 do 
wait(0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.2+0.37-0.37*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5+1.5,0.5,-1.4) * CFrame.fromEulerAnglesXYZ(1.7,0,0.9) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
sashaweld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90)+1.1-1.1*i,0,0) * CFrame.new(0,1,0) 
sashaweld28.C0 = CFrame.fromEulerAnglesXYZ(0,math.rad(360)*i,0) * CFrame.new(0,0.2,0) 
end 
attack = false 
end 
end 

function Taunt() 
for i = 0 , 1 , 0.1 do 
wait() 
LW.C0 = CFrame.new(-1.2-0.3*i,0.5,-0.3+0.3*i) * CFrame.fromEulerAnglesXYZ(1.7-1.7*i,0,0.3-0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.2+0.3*i,0.5,-0.3+0.3*i) * CFrame.fromEulerAnglesXYZ(1.7-1.7*i,0,-0.3+0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.1) 
for i = 1 , 2 do 
wait(0) 
ss(LeftArm,0.8) 
for i = 0 , 1 , 0.2 do 
wait() 
LW.C0 = CFrame.new(-1.2-0.3+0.3*i,0.5+0.3*i,-0.3*i) * CFrame.fromEulerAnglesXYZ(1.6*i,1.57*i,0.3) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.5+1*i,0,0) 
end 
wait(0.2) 
for i = 0 , 1 , 0.1 do 
wait() 
LW.C0 = CFrame.new(-1.2-0.3*i,0.5+0.3-0.3*i,-0.3+0.3*i) * CFrame.fromEulerAnglesXYZ(1.6-1.6*i,1.57-1.57*i,0.3-0.6*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.5+1-0.5*i,0,0) 
end 
ss(LeftArm,0.8) 
for i = 0 , 1 , 0.2 do 
wait() 
RW.C0 = CFrame.new(1.2+0.3-0.3*i,0.5+0.3*i,-0.3*i) * CFrame.fromEulerAnglesXYZ(1.6*i,-1.57*i,-0.3) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.5+1*i,0,0) 
end 
wait(0.2) 
for i = 0 , 1 , 0.2 do 
wait() 
RW.C0 = CFrame.new(1.2+0.3*i,0.5+0.3-0.3*i,-0.3+0.3*i) * CFrame.fromEulerAnglesXYZ(1.6-1.6*i,-1.57+1.57*i,-0.3+0.6*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.5+1-0.5*i,0,0) 
end 
end 
equipanim() 
end 

function readyshoot() 
attack = true 
readytoshoot = false 
startup(minigun28,1) 
Character.Humanoid.WalkSpeed = 10 
for i = 0 , 1 , 0.05 do 
wait(0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.2+0.37*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
sashaweld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90)+1.1*i,0,0) * CFrame.new(0,1,0) 
sashaweld28.C0 = CFrame.fromEulerAnglesXYZ(0,math.rad(360)*i,0) * CFrame.new(0,0.2,0) 
end 
attack = false 
while readytoshoot == true do 
wait(0) 
attack = false 
sashaweld28.C0 = sashaweld28.C0 * CFrame.fromEulerAnglesXYZ(0,0.6,0) 
end 
attack = true 
readytoshoot = false 
winddown(minigun28,1) 
Character.Humanoid.WalkSpeed = 16 
for i = 0 , 1 , 0.05 do 
wait(0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.2+0.37-0.37*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5+1.5,0.5,-1.4) * CFrame.fromEulerAnglesXYZ(1.7,0,0.9) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
sashaweld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90)+1.1-1.1*i,0,0) * CFrame.new(0,1,0) 
sashaweld28.C0 = CFrame.fromEulerAnglesXYZ(0,math.rad(360)*i,0) * CFrame.new(0,0.2,0) 
end 
readytoshoot = false 
attack = false 
end 

function changeequipleft() 
if Number > 1 then 
Number = Number - 1 
mode = Modes[Number] 
unequipweld() 
equipweld() 
equipanim() 
end 
end 

function changeequipright() 
if Number < #Modes then 
Number = Number + 1 
mode = Modes[Number] 
unequipweld() 
equipweld() 
equipanim() 
end 
end 

function boomeffect() 
local mesh = Instance.new("SpecialMesh") 
mesh.MeshType = "Sphere" 
mesh.Scale = Vector3.new(1,1,1)
local shell = Instance.new("Part") 
mesh.Parent = shell 
shell.Anchored = true 
shell.formFactor = 1 
shell.Size = Vector3.new(1,2,1) 
shell.CFrame = minigun37.CFrame * CFrame.new(0,-2,0) * CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) 
shell.Parent = game.workspace 
shell.Transparency = 0.2 
shell.BrickColor = BrickColor.new("Bright yellow") 
shell.CanCollide = false 
coroutine.resume(coroutine.create(function(shel) 
wait() 
shel.Parent = nil 
end),shell) 
end 

function bulletshoot() 
local freakingbullet = Instance.new("Part") 
freakingbullet.formFactor = 1 
freakingbullet.Parent = workspace 
freakingbullet.CanCollide = false 
freakingbullet.BrickColor = BrickColor.new("New Yeller") 
freakingbullet.Name = "Bullet" 
freakingbullet.Size = Vector3.new(1,3,1) 
freakingbullet.CFrame = Torso.CFrame 
--freakingbullet.CFrame = minigun38.CFrame * CFrame.new(0,-0.5,0) 
freakingbullet.CFrame = minigun27.CFrame * CFrame.new(0,-1.1,-0.25) 
freakingbullet.Velocity = minigun38.CFrame.lookVector * 300 
--freakingbullet.Velocity = freakingbullet.CFrame.lookVector * 300 
local freakingbulmsh = Instance.new("CylinderMesh") 
freakingbulmsh.Parent = freakingbullet 
freakingbulmsh.Scale = Vector3.new(1.1,1.5,0.15) 
local force = Instance.new("BodyForce") 
force.Parent = freakingbullet 
force.force = Vector3.new(0,450,0) 
coroutine.resume(coroutine.create(function() 
while freakingbullet.Parent ~= nil do --I use this function instead of the touch function :3
wait() 
local c = game.Workspace:GetChildren();
for i = 1, #c do
local hum = c[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c[i]:findFirstChild("Torso");
if head ~= nil then
local targ = head.Position - freakingbullet.Position;
local mag = targ.magnitude;
if mag <= 6 and c[i].Name ~= Player.Name then
hum:TakeDamage(5)
v=Instance.new("BodyVelocity")
v.P=1000
v.maxForce=Vector3.new(math.huge,0,math.huge)
v.velocity=Torso.CFrame.lookVector*25+Torso.Velocity/1.05
v.Parent=hum.Parent.Torso
Blood=Instance.new("Part")
Blood.Name="Blood"
Blood.TopSurface="Smooth"
Blood.BottomSurface="Smooth"
Blood.formFactor="Plate"
Blood.BrickColor=BrickColor:Red()
Blood.Size=Vector3.new(1,.4,1)
Blood.Velocity=Vector3.new(math.random(-4,4),math.random(5,25),math.random(-4,4))
Blood.CFrame=head.CFrame 
Blood.Parent=workspace 
coroutine.resume(coroutine.create(function(vel,blod) 
wait(0.3) 
vel.Parent = nil 
wait(2) 
blod.Parent = nil 
end),v,Blood) 
game:GetService("Debris"):AddItem(v,.1)
freakingbullet.Parent = nil 
end
end
end
end
end 
end)) 
coroutine.resume(coroutine.create(function() 
wait(1) 
freakingbullet.Parent = nil 
end)) 
end 

function Ammo() 
local shellz = Instance.new("Part")
local shellmsh = Instance.new("CylinderMesh")
shellmsh.Scale = Vector3.new(0.25,0.5,0.25)
shellmsh.Parent = shellz
shellz.Position = minigun11.Position + Vector3.new(0,2,0) 
shellz.Parent = game.Workspace
shellz.Size = Vector3.new(1,1,1)
shellz.CFrame = minigun11.CFrame + Vector3.new(0,0,0) 
shellz.BrickColor = BrickColor.new("Bright yellow")
shellz.Anchored = false
shellz.CanCollide = false 
shellz.BottomSurface = "Smooth" 
shellz.TopSurface = "Smooth" 
shellz.Velocity = Vector3.new(math.random(5,30),math.random(5,30),math.random(-20,-5)) 
game:GetService("Debris"):addItem(shellz,2) 
end 

Damagefunc1=function(hit,Damage,Knockback)
if attackdebounce == false then 
attackdebounce = true 
coroutine.resume(coroutine.create(function() 
wait(0.1) 
attackdebounce = false 
end)) 
if hit.Parent==nil then
return
end
CPlayer=Bin 
h=hit.Parent:FindFirstChild("Humanoid")
if h~=nil and hit.Parent~=Character and hit.Parent:FindFirstChild("Torso")~=nil then
Damage=Damage
--[[ if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
return
end]]
c=Instance.new("ObjectValue")
c.Name="creator"
c.Value=game.Players.LocalPlayer
c.Parent=h
game:GetService("Debris"):AddItem(c,.5)
-- print(c.Value)
if math.random(1,10)==1 then
CRIT=true
Damage=Damage*2
Knockback=Knockback*2
r=Instance.new("BodyAngularVelocity")
r.P=3000
r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
r.Parent=hit.Parent.Torso
s=Instance.new("Sound")
s.SoundId="http://www.roblox.com/asset/?id=2801263"
s.Volume=1
s.Pitch=2
s.Parent=hit
s.PlayOnRemove=true
s.Parent=nil

end
Damage=Damage+math.random(0,10) 
BloodRandom = math.random(1,5) 
if CRIT == true then 
BloodRandom = BloodRandom * 5 
end 
for i = 0,BloodRandom do 
Blood=Instance.new("Part")
Blood.Name="Blood"
Blood.TopSurface="Smooth"
Blood.BottomSurface="Smooth"
Blood.formFactor="Plate"
Blood.BrickColor=BrickColor:Red()
Blood.Size=Vector3.new(1,.4,1)
Blood.Velocity=Vector3.new(math.random(-2,2),math.random(5,10),math.random(-2,2))
Blood.CFrame=hit.CFrame * CFrame.new(math.random(-1,1),math.random(-1,1),math.random(-1,1)) 
Blood.Parent=workspace 
coroutine.resume(coroutine.create(function(blod) 
wait(2) 
blod.Parent = nil 
end),Blood) 
end 
h:TakeDamage(Damage)
-- showDamage(hit.Parent,Damage,.5)
vp=Instance.new("BodyVelocity")
vp.P=500
vp.maxForce=Vector3.new(math.huge,0,math.huge)
-- vp.velocity=Character.Torso.CFrame.lookVector*Knockback
vp.velocity=Torso.CFrame.lookVector*Knockback+Torso.Velocity/1.05
if Knockback>0 then
vp.Parent=hit.Parent.Torso
end
game:GetService("Debris"):AddItem(vp,.25)
--[[ r=Instance.new("BodyAngularVelocity")
r.P=3000
r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
r.Parent=hit.Parent.Torso]]
game:GetService("Debris"):AddItem(r,.5)
c=Instance.new("ObjectValue")
c.Name="creator"
c.Value=Player
c.Parent=h
game:GetService("Debris"):AddItem(c,.5)
CRIT=false
hitDeb=true
AttackPos=6
end
end 
end

showDamage=function(Char,Dealt,du)
m=Instance.new("Model")
m.Name=tostring(Dealt)
h=Instance.new("Humanoid")
h.Health=0
h.MaxHealth=0
h.Parent=m
c=Instance.new("Part")
c.Transparency=0
c.CanCollide=false 
if CRIT==true then
c.BrickColor=BrickColor.new("New Yeller")
else 
c.BrickColor=BrickColor.new("Bright red")
end
c.Name="Head"
c.TopSurface=0
c.BottomSurface=0
c.formFactor="Plate"
c.Size=Vector3.new(1,.4,1)
ms=Instance.new("CylinderMesh")
ms.Scale=Vector3.new(.8,.8,.8)
if CRIT==true then
ms.Scale=Vector3.new(1.25,1.5,1.25)
end
ms.Parent=c
c.Reflectance=0
Instance.new("BodyGyro").Parent=c
c.Parent=m
c.CFrame=CFrame.new(Char["Head"].CFrame.p+Vector3.new(0,1.5,0))
f=Instance.new("BodyPosition")
f.P=2000
f.D=100
f.maxForce=Vector3.new(math.huge,math.huge,math.huge)
f.position=c.Position+Vector3.new(0,3,0)
f.Parent=c
game:GetService("Debris"):AddItem(m,.5+du)
c.CanCollide=false
m.Parent=workspace
c.CanCollide=false
end

hold = false 

function ob1d(mouse) 
hold = true 
if attack == true then return end 
if mode == "Fists" then 
Punch() 
elseif mode == "Minigun" then 
getPos=function(Pos,TorsoPos)
return Vector3.new(Pos.x,TorsoPos.y,Pos.z)
end 
coroutine.resume(coroutine.create(function() 
while hold == true do 
wait() 
g.cframe=CFrame.new(Torso.Position,getPos(mouse.Hit.p,Torso.Position))
offset=(Torso.Position.y-mouse.Hit.p.y)/60
mag=(Torso.Position-mouse.Hit.p).magnitude/80
offset=offset/mag 
necko=CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(offset,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.2+0.37-offset,0,0) 
LW.C0 = CFrame.new(-1.5+1.5,0.5,-1.4) * CFrame.fromEulerAnglesXYZ(1.7,-offset,0.9) 
end 
Torso.Neck.C0=necko
end)) 
minigunshoop() 
end 
end 

function ob1u(mouse) 
hold = false 
end 

buttonhold = false 

function key(key) 
if key == "z" then 
if mode == "Fists" then 
Taunt() 
elseif mode == "Minigun" then 
readyshoot() 
end 
end 
if attack == true then return end 
if readytoshoot == true then return end 
if key == "q" then 
changeequipleft() 
end 
if key == "e" then 
changeequipright() 
end 
end 

function key2(key) 
if key == "z" then 
readytoshoot = false 
end 
end 

function s(mouse) 
mouse.Button1Down:connect(function() ob1d(mouse) end) 
mouse.Button1Up:connect(function() ob1u(mouse) end) 
mouse.KeyDown:connect(key) 
mouse.KeyUp:connect(key2) 
g=Instance.new("BodyGyro")
g.P=18000
g.D=600
g.maxTorque=Vector3.new(80000,80000000,80000)*50000000000000000000000000
g.cframe=Torso.CFrame
equipweld() 
player = Player 
ch = Character 
equipped = true 
RSH = ch.Torso["Right Shoulder"] 
LSH = ch.Torso["Left Shoulder"] 
-- 
RSH.Parent = nil 
LSH.Parent = nil 
-- 
RW.Part0 = ch.Torso 
RW.C0 = CFrame.new(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) 
RW.Part1 = ch["Right Arm"] 
RW.Parent = ch.Torso 
_G.R = RW 
-- 
LW.Part0 = ch.Torso 
LW.C0 = CFrame.new(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1 = CFrame.new(0, 0.5, 0) 
LW.Part1 = ch["Left Arm"] 
LW.Parent = ch.Torso 
_G.L = LW 
--
equipanim() 
end 

function ds(mouse) 
equipped = false 
unequipweld() 
wait(0.1) 
RW.Parent = nil 
LW.Parent = nil 
RSH.Parent = player.Character.Torso 
LSH.Parent = player.Character.Torso 
end 

Bin.Selected:connect(s) 
Bin.Deselected:connect(ds) 

while true do 
wait() 
if equipped == true then 
rightfistweld.Parent = rightfist 
leftfistweld.Parent = leftfist 
model1.Parent = workspace 
if mode == "Fists" then 
elseif mode == "Minigun" then 
model2.Parent = workspace 
sashaweld1.Parent = minigun1 
sashaweld2.Parent = minigun2 
sashaweld3.Parent = minigun3 
sashaweld4.Parent = minigun4 
sashaweld5.Parent = minigun5 
sashaweld6.Parent = minigun6 
sashaweld7.Parent = minigun7 
sashaweld8.Parent = minigun8 
sashaweld9.Parent = minigun9 
sashaweld10.Parent = minigun10 
sashaweld11.Parent = minigun11 
sashaweld12.Parent = minigun12 
sashaweld13.Parent = minigun13 
sashaweld14.Parent = minigun14 
sashaweld15.Parent = minigun15 
sashaweld16.Parent = minigun16 
sashaweld17.Parent = minigun17 
sashaweld18.Parent = minigun18 
sashaweld19.Parent = minigun19 
sashaweld20.Parent = minigun20 
sashaweld21.Parent = minigun21 
sashaweld22.Parent = minigun22 
sashaweld23.Parent = minigun23 
sashaweld24.Parent = minigun24 
sashaweld25.Parent = minigun25 
sashaweld26.Parent = minigun26 
sashaweld27.Parent = minigun27 
sashaweld28.Parent = minigun28 
sashaweld29.Parent = minigun29 
sashaweld30.Parent = minigun30 
sashaweld31.Parent = minigun31 
sashaweld32.Parent = minigun32 
sashaweld33.Parent = minigun33 
sashaweld34.Parent = minigun34 
sashaweld35.Parent = minigun35 
sashaweld36.Parent = minigun36 
sashaweld37.Parent = minigun37 
sashaweld38.Parent = minigun38 
end 
end 
end 
