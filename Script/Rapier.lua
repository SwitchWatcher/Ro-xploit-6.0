Player = game:GetService("Players").LocalPlayer

Character = Player.Character 

PlayerGui = Player.PlayerGui 

Backpack = Player.Backpack 

Torso = Character.Torso 

Head = Character.Head 

Humanoid = Character.Humanoid

LeftArm = Character["Left Arm"] 

LeftLeg = Character["Left Leg"] 

RightArm = Character["Right Arm"] 

RightLeg = Character["Right Leg"] 

LS = Torso["Left Shoulder"] 

LH = Torso["Left Hip"] 

RS = Torso["Right Shoulder"] 

RH = Torso["Right Hip"] 

Neck = Torso.Neck

it=Instance.new

vt=Vector3.new

cf=CFrame.new

euler=CFrame.fromEulerAnglesXYZ

angles=CFrame.Angles

necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)

necko2=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)

LHC0=cf(-1,-1,0,-0,-0,-1,0,1,0,1,0,0)

RHC0=cf(1,-1,0,0,0,1,0,1,0,-1,-0,-0)

attack = false 

attacktype = 1 

damage = 50

oridamage = 500

attackdebounce = false 

ssdebounce=false

MMouse=nil

combo=0

magic=true

RootPart=Character.HumanoidRootPart

RootJoint=RootPart.RootJoint

RootCF=euler(-1.57,0,3.14)

--player 

player = nil 

--save shoulders 

RSH, LSH = nil, nil 

--welds 

RW, LW = Instance.new("Weld"), Instance.new("Weld") 

RW.Name="Right Shoulder" LW.Name="Left Shoulder"

 

 

if Character:findFirstChild("Rapier",true) ~= nil then 

Character:findFirstChild("Rapier",true).Parent = nil 

end 

if Character:findFirstChild("Block",true) ~= nil then 

Character:findFirstChild("Block",true).Parent = nil 

end 

 

 

function part(formfactor,parent,reflectance,transparency,brickcolor,name,size)

local fp = it("Part")

fp.formFactor = formfactor 

fp.Parent = parent

fp.Reflectance = reflectance

fp.Transparency = transparency

fp.CanCollide = false 

fp.Locked=true

fp.BrickColor = brickcolor

fp.Name = name

fp.Size = size

fp.Position = Torso.Position 

fp.BottomSurface="Smooth"

fp.TopSurface="Smooth"

fp:BreakJoints()

return fp 

end 

 

function mesh(Mesh,part,meshtype,meshid,offset,scale)

local mesh = it(Mesh) 

mesh.Parent = part

if Mesh=="SpecialMesh" then

mesh.MeshType = meshtype

mesh.MeshId = meshid

end

mesh.Offset=offset

mesh.Scale=scale

return mesh

end

 

function weld(parent,part0,part1,c0)

local weld = it("Weld") 

weld.Parent = parent

weld.Part0 = part0 

weld.Part1 = part1 

weld.C0 = c0

return weld

end

 

local modelzorz = Instance.new("Model") 

modelzorz.Parent = Character 

modelzorz.Name = "Rapier" 

 

local prt1=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part1",vt(1,1,1))

local prt2=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part2",vt(1,1,1))

local prt3=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part3",vt(1,1,1))

local prt4=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part4",vt(1,1,1))

local prt5=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part5",vt(1,1,1))

local prt6=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part6",vt(1,1,1))

local prt7=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part7",vt(1,1,1))

local prt8=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part8",vt(1,1,1))

local prt9=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part9",vt(1,1,1))

local prt10=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part10",vt(1,1,1))

local prt11=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part11",vt(1,1,1))

local prt12=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part12",vt(1,1,1))

local prt13=part(3,modelzorz,0,1,BrickColor.new("Black"),"Part13",vt(0.5,4,0.5))

 

local msh1=mesh("CylinderMesh",prt1,"","",vt(0,0,0),vt(0.2,1,0.2))

local msh2=mesh("SpecialMesh",prt2,"FileMesh","http://www.roblox.com/asset/?id=1778999",vt(0,0,0),vt(0.2,0.5,0.2))

local msh3=mesh("SpecialMesh",prt3,"Sphere","",vt(0,0,0),vt(0.1,0.6,0.1))

local msh4=mesh("BlockMesh",prt4,"","",vt(0,0,0),vt(0.3,0.2,0.05))

local msh5=mesh("BlockMesh",prt5,"","",vt(0,0,0),vt(0.05,0.2,0.3))

local msh6=mesh("SpecialMesh",prt6,"Sphere","",vt(0,0,0),vt(0.4,0.4,0.4))

local msh7=mesh("CylinderMesh",prt7,"","",vt(0,0,0),vt(0.1,0.5,0.1))

local msh8=mesh("CylinderMesh",prt8,"","",vt(0,0,0),vt(0.4,0.5,0.4))

local msh9=mesh("CylinderMesh",prt9,"","",vt(0,0,0),vt(0.3,0.05,0.3))

local msh10=mesh("BlockMesh",prt10,"","",vt(0,0,0),vt(0.2,0.1,0.2))

local msh11=mesh("SpecialMesh",prt11,"FileMesh","http://www.roblox.com/asset/?id=1778999",vt(0,0,0),vt(0.2,1,0.2))

local msh12=mesh("SpecialMesh",prt12,"FileMesh","http://www.roblox.com/asset/?id=1778999",vt(0,0,0),vt(0.2,3,0.2))

local msh13=mesh("BlockMesh",prt13,"","",vt(0,0,0),vt(1,1,1))

 

local wld1=weld(prt1,prt1,Torso,euler(-2,0,0)*cf(1,0.5,1.5))

local wld2=weld(prt2,prt2,prt1,cf(0,0.3,0))

local wld3=weld(prt3,prt3,prt2,cf(0,0.3,0))

local wld4=weld(prt4,prt4,prt2,cf(0,0.3,0))

local wld5=weld(prt5,prt5,prt2,cf(0,0.3,0))

local wld6=weld(prt6,prt6,prt1,cf(0,-0.5,0))

local wld7=weld(prt7,prt7,prt6,cf(0,-0.25,0))

local wld8=weld(prt8,prt8,prt7,cf(0,0,0))

local wld9=weld(prt9,prt9,prt7,cf(0,-0.3,0))

local wld10=weld(prt10,prt10,prt9,cf(0,-0.05,0))

local wld11=weld(prt11,prt11,prt10,cf(0,-0.5,0))

local wld12=weld(prt12,prt12,prt11,cf(0,-1.5,0))

local wld13=weld(prt13,prt13,prt12,cf(0,0,0))

 

numb=0

for i=1,4 do

local prt13=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part13",vt(1,1,1))

local prt14=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part14",vt(1,1,1))

local prt15=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part15",vt(1,1,1))

local prt16=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part16",vt(1,1,1))

 

local msh13=mesh("SpecialMesh",prt13,"Wedge","",vt(0,0,0),vt(0.05,0.5,0.5))

local msh14=mesh("SpecialMesh",prt14,"Wedge","",vt(0,0,0),vt(0.051,0.5,0.3))

local msh15=mesh("BlockMesh",prt15,"","",vt(0,0,0),vt(0.052,0.3,0.2))

local msh16=mesh("SpecialMesh",prt16,"Wedge","",vt(0,0,0),vt(0.051,0.5,0.5))

 

local wld13=weld(prt13,prt13,prt6,euler(0,0,3.14)*cf(0,0.2,0.3)*euler(0,numb,0))

local wld14=weld(prt14,prt14,prt13,euler(-0.3,0,3.14)*cf(0,0.4,0.2))

local wld15=weld(prt15,prt15,prt14,euler(-0.2,0,0)*cf(0,-0.3,-0.1))

local wld16=weld(prt16,prt16,prt15,euler(0.5,0,0)*cf(0,-0.3,0))

 

numb=numb+1.57

end

 

numb=0

color="Bright red"

for i=1,6 do

if i==1 then color="White" elseif i==2 then color="Bright blue" elseif i==3 then color="Bright green" elseif i==4 then color="Black" elseif i==5 then color="Bright red" elseif i==6 then color="Bright yellow" end

local prt17=part(3,modelzorz,0,0,BrickColor.new(color),"Part17",vt(1,1,1))

 

local msh17=mesh("BlockMesh",prt17,"","",vt(0,0,0),vt(0.1,0.2,0.1))

 

local wld17=weld(prt17,prt17,prt7,cf(0.15,0.13,0)*euler(0,numb,0))

 

numb=numb+1.046

end

 

if (script.Parent.className ~= "HopperBin") then 

Tool = Instance.new("HopperBin") 

Tool.Parent = Backpack 

Tool.Name = "Rapier" 

script.Parent = Tool 

end 

Bin = Tool

 

local bg = it("BodyGyro") 

bg.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 

bg.P = 20e+003 

bg.Parent = nil 

        bp=it("BodyPosition")

        bp.P=2000

        bp.D=100

        bp.maxForce=Vector3.new(math.huge,math.huge,math.huge)

 

so = function(id,par,vol,pit) 

coroutine.resume(coroutine.create(function()

local sou = Instance.new("Sound",par or workspace)

sou.Volume=vol

sou.Pitch=pit or 1

sou.SoundId=id

wait() 

sou:play() 

wait(6) 

sou:Remove() 

end))

end

 

function unequipweld() 

wld1.Part1=Torso

wld1.C0=euler(-2,0,0)*cf(1,0.5,1.5)

end 

 

function equipweld() 

wld1.Part1=LeftArm

wld1.C0=euler(1.57,0,0)*cf(0,1,0)

end 

 

function hideanim() 

equipped=false

wait(0.1) 

Torso.Neck.C0=necko

RootJoint.C0=RootCF

unequipweld() 

end 

 

function equipanim() 

equipped=true

wait(0.1) 

equipweld() 

Torso.Neck.C0=necko*euler(0,0,1)

RootJoint.C0=RootCF*euler(0,0,-1)

RW.C0=cf(1.5, 0.5, 0) * euler(0,0,0.3)

RW.C1=cf(0, 0.5, 0) * euler(0,0,0)

LW.C0=cf(-1.5, 0.5, 0) * euler(0.5,-1.57,0)

LW.C1=cf(0, 0.5, 0) * euler(0.2,0,0)

end 

 

function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants

return game.Workspace:FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 

end 

 

function oneslash()

attack=true

for i=0,1,0.1 do

wait()

LW.C0=cf(-1.5+0.5*i, 0.5, -0.5*i) * euler(0.5+1.5*i,-1.57+0.2*i,0)

LW.C1=cf(0, 0.5, 0) * euler(0.2-0.8*i,0,0)

end

so("http://roblox.com/asset/?id=10209640",prt12,1,1) 

local LastPoint = prt12.CFrame * CFrame.new(0,prt12.Size.Y*2.5,0)

con1=prt13.Touched:connect(function(hit) Damagefunc1(hit,10,10) end) 

for i=0,1,0.2 do

wait()

Torso.Neck.C0=necko*euler(0,0,1-2*i)

RootJoint.C0=RootCF*euler(0,0,-1+2*i)

wld1.C0=euler(1.57+1*i,0,0)*cf(0,1,0)

LW.C0=cf(-1-0.5*i, 0.5, -0.5+0.5*i) * euler(2-0.5*i,-1.37,0)

LW.C1=cf(0, 0.5, 0) * euler(0.2-0.8+1.6*i,0,0)

local Point = prt12.CFrame * CFrame.new(0,prt12.Size.Y*2.5,0)

local Point2 = prt12.CFrame

effect("White",0.5,0.1,LastPoint,Point)

LastPoint = Point

end

con1:disconnect()

attack=false

end

 

function twoslash()

attack=true

for i=0,1,0.1 do

wait()

RootJoint.C0=RootCF*euler(0,0,1+3.14*i)

wld1.C0=euler(1.57+1-1*i,0,0)*cf(0,1,0)

LW.C0=cf(-1.5+0.5*i, 0.5, -0.5*i) * euler(1.5+0.07*i,-1.37-0.2*i,0)

LW.C1=cf(0, 0.5, 0) * euler(1-2*i,0,0)

end

so("http://roblox.com/asset/?id=10209640",prt12,1,1.1) 

local LastPoint = prt12.CFrame * CFrame.new(0,prt12.Size.Y*2.5,0)

con1=prt13.Touched:connect(function(hit) Damagefunc1(hit,10,10) end) 

for i=0,1,0.2 do

wait()

RootJoint.C0=RootCF*euler(0,0,1+3.14+3.14*i)

wld1.C0=euler(1.57+1*i,0,0)*cf(0,1,0)

LW.C0=cf(-1.5+0.5-0.5*i, 0.5, -0.5+0.5*i) * euler(1.57,-1.57,0)

LW.C1=cf(0, 0.5, 0) * euler(-1+2*i,0,0)

local Point = prt12.CFrame * CFrame.new(0,prt12.Size.Y*2.5,0)

effect("White",0.5,0.1,LastPoint,Point)

LastPoint = Point

end

con1:disconnect()

attack=false

end

 

function threeslash()

attack=true

for i=0,1,0.1 do

wait()

RootJoint.C0=RootCF*euler(0,0,1-1*i)

Torso.Neck.C0=necko*euler(0,0,-1+1*i)

wld1.C0=euler(1.57+1-1*i,0,0)*cf(0,1,0)

LW.C0=cf(-1.5, 0.5, 0) * euler(1.57+3.64*i,-1.57+1*i,0)

LW.C1=cf(0, 0.5, 0) * euler(1,0,0)

end

so("http://roblox.com/asset/?id=10209640",prt12,1,1) 

local LastPoint = prt12.CFrame * CFrame.new(0,prt12.Size.Y*2.5,0)

con1=prt13.Touched:connect(function(hit) Damagefunc1(hit,10,10) end) 

for i=0,1,0.2 do

wait()

RootJoint.C0=RootCF*euler(0,0,-1*i)

Torso.Neck.C0=necko*euler(0,0,1*i)

LW.C0=cf(-1.5+0.5*i, 0.5, -0.5*i) * euler(5.21-0.3*i,-0.57,0)

LW.C1=cf(0, 0.5, 0) * euler(1+4*i,0,0)

local Point = prt12.CFrame * CFrame.new(0,prt12.Size.Y*2.5,0)

effect("White",0.5,0.1,LastPoint,Point)

LastPoint = Point

end

con1:disconnect()

attack=false

end

 

function fourslash()

attack=true

so("rbxasset://sounds\\swordlunge.wav",prt12,1,1.5) 

local LastPoint = prt12.CFrame * CFrame.new(0,prt12.Size.Y*2.5,0)

con1=prt13.Touched:connect(function(hit) Damagefunc1(hit,15,10) end) 

for i=0,1,0.2 do

wait()

RootJoint.C0=RootCF*euler(0,0,-1-0.57*i)

Torso.Neck.C0=necko*euler(0,0,1+0.57*i)

wld1.C0=euler(1.57+1*i,0,0)*cf(0,1,0)

LW.C0=cf(-1.5+0.5-0.5*i, 0.5, -0.5+0.5*i) * euler(4.91+1.57*i,-0.57+0.57*i,0)

LW.C1=cf(0, 0.5, 0) * euler(5,-1.57*i,0)

local Point = prt12.CFrame * CFrame.new(0,prt12.Size.Y*2.5,0)

effect("White",0.5,0.1,LastPoint,Point)

LastPoint = Point

end

for i=0,1,0.2 do

wait()

local Point = prt12.CFrame * CFrame.new(0,prt12.Size.Y*2.5,0)

effect("White",0.5,0.1,LastPoint,Point)

LastPoint = Point

end

con1:disconnect()

attack=false

end

 

function FlameBarrage()

attack=true

magic=true

for i=0,1,0.1 do

wait()

Torso.Neck.C0=necko*euler(0.5*i,0,1-1*i)

wld1.C0=euler(1.57+0.2*i,0,0)*cf(0,1,0)

RW.C0=cf(1.5-1*i, 0.5, -0.5*i) * euler(1*i,0,0.3-1*i)

RW.C1=cf(0, 0.5, 0) * euler(0,0,0)

LW.C0=cf(-1.5, 0.5, 0) * euler(0.5+0.5*i,-1.57,0)

LW.C1=cf(0, 0.5, 0) * euler(0.2-0.4*i,0,0)

end

for i=0,1,0.1 do

wait()

RW.C0=cf(1.5-1, 0.5, -0.5) * euler(1-0.4*i,0,0.3-1)

RW.C1=cf(0, 0.5, 0) * euler(0,0,0)

wld7.C0=wld7.C0*euler(0,-0.2,0)

so("http://roblox.com/asset/?id=28445431",prt7,1,20) 

end

coroutine.resume(coroutine.create(function()

for i=1,10 do

so("http://roblox.com/asset/?id=131382140",prt12,1,10) 

wait(0)

end

end))

reffect=prt12:Clone()

reffect.Parent=modelzorz

reffect.Transparency=1

reffect.Mesh.Scale=vt(0.3,3,0.3)

reffect.BrickColor=BrickColor.new("Bright red")

local efwld=weld(reffect,reffect,prt12,cf(0,-0.4,0))

coroutine.resume(coroutine.create(function(Part)

for i=0,1,0.1 do

wait()

Part.Transparency=Part.Transparency-0.05

end

while magic==true do

wait()

MagicBlock(BrickColor.new("Bright red"),prt12.CFrame*cf((math.random()/4)-(math.random()/4),math.random(-2,1)+math.random(),(math.random()/4)-(math.random()/4)),.5,.5,.5,.05,.05,.05)

end

for i=0,1,0.1 do

wait()

Part.Transparency=Part.Transparency+0.1

end

Part.Parent=nil

end),reffect)

for i=0,1,0.05 do

wait()

Torso.Neck.C0=necko*euler(0.5-0.5*i,0,1*i)

RW.C0=cf(1.5-1+0.5*i, 0.5, -0.5+0.3*i) * euler(0.6,0,-0.7)

RW.C1=cf(0, 0.5, 0) * euler(-0.4*i,0,0)

LW.C0=cf(-1.5, 0.5, 0) * euler(1+0.2*i,-1.57,0)

LW.C1=cf(0, 0.5, 0) * euler(-0.2-0.2*i,0,0)

end

so("http://roblox.com/asset/?id=10209640",prt12,1,1) 

local LastPoint = prt12.CFrame * CFrame.new(0,prt12.Size.Y*2.5,0)

con1=prt13.Touched:connect(function(hit) Damagefunc1(hit,10,10) end) 

for i=1,3 do

so("http://roblox.com/asset/?id=130865054",Torso,1,1.5) 

end

for i=0,0.2,0.1 do

wait()

RootJoint.C0=RootCF*euler(0,0,-1+7.28*i)

Torso.Neck.C0=necko*euler(0,0,1-1*i)

RW.C0=cf(1.5-0.5, 0.5, -0.5+0.3-0.3*i) * euler(0.6,0,-0.7-0.5*i)

RW.C1=cf(0, 0.5, 0) * euler(-0.4,0,0)

LW.C0=cf(-1.5, 0.5, 0) * euler(1.2+0.37*i,-1.57,0)

LW.C1=cf(0, 0.5, 0) * euler(-0.4+2.4*i,0,0)

local Point = prt12.CFrame * CFrame.new(0,prt12.Size.Y*2.5,0)

effect("Bright red",0.5,0.3,LastPoint,Point)

LastPoint = Point

end 

local exprt=part(3,modelzorz,0,1,BrickColor.new("Bright red"),"Explosion Part",vt(1,1,1))

exprt.Anchored=true

exprt.CFrame=RootPart.CFrame*cf(0,0,-7)

so("http://www.roblox.com/asset/?id=2101148",exprt,1,0.6)

game:GetService("Debris"):AddItem(exprt,1)

MagicCircle(BrickColor.new("Bright red"),exprt.CFrame,3,3,3,3,3,3)

for i=1,4 do

MagicRing(BrickColor.new("Bright red"),exprt.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)),3,3,0.1,1,1,0.05)

end

local c = game.Workspace:GetChildren()

for i = 1, #c do

local hum = c[i]:findFirstChild("Humanoid")

if hum ~= nil and hum.Health ~= 0 then

local head = c[i]:findFirstChild("Head")

if head ~= nil then

local targ = head.Position - exprt.Position

local mag = targ.magnitude

if mag <= 10 and c[i].Name ~= Player.Name then 

attackdebounce=false

Damagefunc1(head,15,50)

end

end

end

end

for i=0.2,1,0.1 do

wait()

RootJoint.C0=RootCF*euler(0,0,-1+7.28*i)

Torso.Neck.C0=necko*euler(0,0,1-1*i)

RW.C0=cf(1.5-0.5, 0.5, -0.5+0.3-0.3*i) * euler(0.6,0,-0.7-0.5*i)

RW.C1=cf(0, 0.5, 0) * euler(-0.4,0,0)

LW.C0=cf(-1.5, 0.5, 0) * euler(1.2+0.37*i,-1.57,0)

LW.C1=cf(0, 0.5, 0) * euler(-0.4+2.4*i,0,0)

local Point = prt12.CFrame * CFrame.new(0,prt12.Size.Y*2.5,0)

effect("Bright red",0.5,0.3,LastPoint,Point)

LastPoint = Point

end

con1:disconnect()

for i=0,1,0.1 do

wait()

RootJoint.C0=RootCF*euler(0,0,1*i)

Torso.Neck.C0=necko*euler(0,0,-1*i)

wld1.C0=euler(1.77-1.2*i,0,0)*cf(0,1,0)

RW.C0=cf(1.5-0.5, 0.5, -0.5) * euler(0.6,0,-1.2)

RW.C1=cf(0, 0.5, 0) * euler(-0.4,0,0)

LW.C0=cf(-1.5, 0.5, 0) * euler(1.57,-1.57,0)

LW.C1=cf(0, 0.5, 0) * euler(2-0.43*i,0,0)

end

so("rbxasset://sounds\\swordlunge.wav",prt12,1,1.2) 

local LastPoint = prt12.CFrame * CFrame.new(0,prt12.Size.Y*2.5,0)

con1=prt13.Touched:connect(function(hit) Damagefunc1(hit,20,30) end) 

for i=0,1,0.2 do

wait()

RootJoint.C0=RootCF*euler(0,0,1-2.57*i)

Torso.Neck.C0=necko*euler(0,0,-1+2.57*i)

wld1.C0=euler(0.57+2.57*i,0,0)*cf(0,1,0)

RW.C0=cf(1.5-0.5+0.5*i, 0.5, -0.5+0.5*i) * euler(0.6,0,-1.2+2.4*i)

RW.C1=cf(0, 0.5, 0) * euler(-0.4,0,0)

LW.C0=cf(-1.5, 0.5, 0) * euler(1.57,-1.57,0)

LW.C1=cf(0, 0.5, 0) * euler(1.57,0,0)

local Point = prt12.CFrame * CFrame.new(0,prt12.Size.Y*2.5,0)

effect("Bright red",0.5,0.3,LastPoint,Point)

LastPoint = Point

end

con1:disconnect()

numb=-7

for i=1,3 do

local exprt=part(3,modelzorz,0,1,BrickColor.new("Bright red"),"Explosion Part",vt(1,1,1))

exprt.Anchored=true

exprt.CFrame=RootPart.CFrame*cf(0,0,numb)

so("http://www.roblox.com/asset/?id=2101148",exprt,1,1)

game:GetService("Debris"):AddItem(exprt,1)

MagicCircle(BrickColor.new("Bright red"),exprt.CFrame,3,3,3,3,3,3)

coroutine.resume(coroutine.create(function(Part)

for i=1,4 do

MagicBlock(BrickColor.new("Bright red"),Part.CFrame,3,3,3,2,2,2)

wait(0.1)

end

end),exprt)

local c = game.Workspace:GetChildren()

for i = 1, #c do

local hum = c[i]:findFirstChild("Humanoid")

if hum ~= nil and hum.Health ~= 0 then

local head = c[i]:findFirstChild("Head")

if head ~= nil then

local targ = head.Position - exprt.Position

local mag = targ.magnitude

if mag <= 10 and c[i].Name ~= Player.Name then 

attackdebounce=false

Damagefunc1(head,5,30)

end

end

end

end

numb=numb-5

wait(0.2)

end

wait(1)

Torso.Neck.C0=necko*euler(0,0,1)

RootJoint.C0=RootCF*euler(0,0,-1)

magic=false

attack=false

end

 

function IcePrison()

attack=true

magic=true

for i=0,1,0.1 do

wait()

Torso.Neck.C0=necko*euler(0,0,1-1*i)

RootJoint.C0=RootCF*euler(0,0,-1+1*i)

wld1.C0=euler(1.57,0,0)*cf(0,1,0)

RW.C0=cf(1.5-0.5*i, 0.5, -0.5*i) * euler(1.9*i,0,0.3-0.8*i)

RW.C1=cf(0, 0.5, 0) * euler(0,0,0)

LW.C0=cf(-1.5+0.5*i, 0.5, -0.5*i) * euler(0.5+1.07*i,-1.57+1.57*i,0.7*i)

LW.C1=cf(0, 0.5, 0) * euler(0.2-0.2*i,0,0)

end

for i=0,1,0.1 do

wait()

RW.C0=cf(1.5-0.5, 0.5, -0.5) * euler(1.9,0,-0.5-0.2*i)

RW.C1=cf(0, 0.5, 0) * euler(0,0,0)

wld7.C0=wld7.C0*euler(0,0.2,0)

so("http://roblox.com/asset/?id=28445431",prt7,1,20) 

end

reffect=prt12:Clone()

reffect.Parent=modelzorz

reffect.Transparency=1

reffect.Mesh.Scale=vt(0.3,3,0.3)

reffect.BrickColor=BrickColor.new("Bright blue")

local efwld=weld(reffect,reffect,prt12,cf(0,-0.4,0))

coroutine.resume(coroutine.create(function(Part)

for i=0,1,0.1 do

wait()

Part.Transparency=Part.Transparency-0.05

end

while magic==true do

wait()

MagicBlock(BrickColor.new("Bright blue"),prt12.CFrame*cf((math.random()/4)-(math.random()/4),math.random(-2,1)+math.random(),(math.random()/4)-(math.random()/4)),.5,.5,.5,.05,.05,.05)

end

for i=0,1,0.1 do

wait()

Part.Transparency=Part.Transparency+0.1

end

Part.Parent=nil

end),reffect)

for i=1,3 do

so("http://roblox.com/asset/?id=25605551",prt12,1,1) 

end

wait(0.5)

for i=0,1,0.1 do

wait()

wld1.C0=euler(1.57+1*i,0,0)*cf(0,1,0)

RW.C0=cf(1.5-0.5, 0.5, -0.5) * euler(1.9-0.6*i,0,-0.7)

RW.C1=cf(0, 0.5, 0) * euler(0,0,0)

LW.C0=cf(-1.5+0.5, 0.5, -0.5) * euler(1.57-0.57*i,0,0.7-0.2*i)

LW.C1=cf(0, 0.5, 0) * euler(0,1.57*i,0)

end

local LastPoint = prt12.CFrame * CFrame.new(0,prt12.Size.Y*2.5,0)

con1=prt13.Touched:connect(function(hit) Damagefunc1(hit,10,10) end) 

for i=1,3 do

so("http://roblox.com/asset/?id=10209640",prt12,1,1) 

for i=0,1,0.2 do

wait()

RootJoint.C0=RootCF*euler(0,0,6.32*i)

local Point = prt12.CFrame * CFrame.new(0,prt12.Size.Y*2.5,0)

effect("Bright blue",0.5,0.3,LastPoint,Point)

LastPoint = Point

end

end

so("http://roblox.com/asset/?id=10209640",prt12,1,1) 

for i=0,1,0.2 do

wait()

RootJoint.C0=RootCF*euler(0,0,3.14*i)

local Point = prt12.CFrame * CFrame.new(0,prt12.Size.Y*2.5,0)

effect("Bright blue",0.5,0.3,LastPoint,Point)

LastPoint = Point

end

con1:disconnect()

for i=0,1,0.1 do

wait()

wld1.C0=euler(2.57-1*i,3.14*i,0)*cf(0,1,0)

RootJoint.C0=RootCF*euler(0,0,3.14+3.14*i)

RW.C0=cf(1.5-0.5, 0.5, -0.5) * euler(1.3+1.2*i,0,-0.7)

RW.C1=cf(0, 0.5, 0) * euler(0,0,0)

LW.C0=cf(-1.5+0.5, 0.5, -0.5) * euler(1+1.5*i,0,0.5+0.2*i)

LW.C1=cf(0, 0.5, 0) * euler(0,1.57-1.57*i,0)

end

local LastPoint = prt12.CFrame * CFrame.new(0,prt12.Size.Y*2.5,0)

so("http://roblox.com/asset/?id=10209640",prt12,1,1.1) 

bg.Parent=Torso

bg.cframe=Torso.CFrame

local bp = Instance.new("BodyPosition")

bp.maxForce = Vector3.new(math.huge,math.huge,math.huge)

bp.P = 10000

local CF = Torso.CFrame

bp.position = CF.p

bp.Parent=Torso

for i=0,1,0.2 do

wait()

bp.position = CF.p - Vector3.new(0,1.5,0)

Torso["Left Hip"].C0=LHC0*cf(-0.7*i,1.2*i,0)

Torso["Right Hip"].C0=RHC0*cf(0,1.2*i,0)*euler(0,0,-0.5*i)

RW.C0=cf(1.5-0.5, 0.5, -0.5) * euler(2.5-1*i,0,-0.7)

RW.C1=cf(0, 0.5, 0) * euler(0,0,0)

LW.C0=cf(-1.5+0.5, 0.5, -0.5) * euler(2.5-1*i,0,0.7)

LW.C1=cf(0, 0.5, 0) * euler(0,0,0)

local Point = prt12.CFrame * CFrame.new(0,prt12.Size.Y*2.5,0)

effect("Bright blue",0.5,0.3,LastPoint,Point)

LastPoint = Point

end

numb=-3

numb2=0

for i=1,40 do

local exprt=part(3,modelzorz,0,1,BrickColor.new("Bright red"),"Explosion Part",vt(1,1,1))

exprt.Anchored=true

exprt.CFrame=RootPart.CFrame*cf(numb2,0,numb)

so("http://www.roblox.com/asset/?id=32656754",exprt,0.5,1) 

game:GetService("Debris"):AddItem(exprt,3)

for i=1,5 do

--Icicle(exprt.CFrame*euler(math.random(-2,1)+math.random(),0,math.random(-2,1)+math.random()),2,5,2)

MagicFreeze(BrickColor.new("Bright blue"),exprt.CFrame*cf(0,-3,0),0.5,0.5,0.5,0.1,0.3,0.1)

end

local c = game.Workspace:GetChildren()

for i = 1, #c do

local hum = c[i]:findFirstChild("Humanoid")

if hum ~= nil and hum.Health ~= 0 then

local head = c[i]:findFirstChild("Head")

if head ~= nil then

local targ = head.Position - exprt.Position

local mag = targ.magnitude

if mag <= 5 and c[i].Name ~= Player.Name then 

attackdebounce=false

freezeDamagefunc(head,0,0)

end

end

end

end

numb=numb-1

if numb2==1 then

wait(0)

numb2=0

end

numb2=numb2+1

end

wait(0.5)

bg.Parent=nil

bp.Parent=nil

Torso["Left Hip"].C0=LHC0

Torso["Right Hip"].C0=RHC0

Torso.Neck.C0=necko*euler(0,0,1)

RootJoint.C0=RootCF*euler(0,0,-1)

magic=false

attack=false

end

 

function AirDash()

attack=true

magic=true

for i=0,1,0.1 do

wait()

wld1.C0=euler(1.57-1.2*i,0,0)*cf(0,1,0.3*i)

Torso.Neck.C0=necko*euler(0,0,1+0.57*i)

RootJoint.C0=RootCF*euler(0,0,-1-0.57*i)

RW.C0=cf(1.5, 0.5, 0) * euler(0.7*i,0,0.3-0.9*i)

RW.C1=cf(0, 0.5, 0) * euler(0,0,0)

LW.C0=cf(-1.5+1*i, 0.5, -0.5*i) * euler(0.5+1.07*i,-1.57+3.16*i,0)

LW.C1=cf(0, 0.5, 0) * euler(0.2+0.8*i,0,0)

end

for i=0,1,0.1 do

wait()

wld7.C0=wld7.C0*euler(0,0.2,0)

so("http://roblox.com/asset/?id=28445431",prt7,1,20) 

end

so("http://roblox.com/asset/?id=10209640",prt12,1,0.7) 

local vel2 = Instance.new("BodyVelocity")

vel2.Parent = RootPart

vel2.maxForce = vt(4e+005,4e+005,4e+005)*1

vel2.velocity = Head.CFrame.lookVector*100

local LastPoint = prt12.CFrame * CFrame.new(0,prt12.Size.Y*2.5,0)

bg.Parent = Head

bg.cframe=Head.CFrame

jointhit=false

con1=prt13.Touched:connect(function(hit) 

coroutine.resume(coroutine.create(function()

        if hit.Parent==nil then

                return

        end

        h=hit.Parent:FindFirstChild("Humanoid")

        if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil and jointhit==false then

jointhit=true

        bp.position=RootPart.Position

--        bp.Parent=RootPart

bg.Parent=RootPart

bg.cframe=RootPart.CFrame

for i=0,1,0.1 do

wait()

RootJoint.C0=RootCF*cf(0,-5*i,5*i)*euler(1.57*i,0,-1.57)

end

for i=0,1,0.1 do

wait()

Torso.Neck.C0=necko*euler(0,0,1.57-1.57*i)

RW.C0=cf(1.5, 0.5, 0) * euler(0,0,0.6+0.97*i)

RW.C1=cf(0, 0.5, 0) * euler(0,0,0)

LW.C0=cf(-1.5, 0.5, 0) * euler(1.57,1.57,0)

LW.C1=cf(0, 0.5, 0) * euler(-1.57,0,0)

RootJoint.C0=RootCF*cf(0,-5-5*i,5+5*i)*euler(1.57+1.57*i,0,-1.57-3.14*i)

end

coroutine.resume(coroutine.create(function()

while attack==true do

wait()

Torso.Neck.C0=necko

wld1.C0=euler(1.57-1.2+2.77,0,0)*cf(0,1,0)

RW.C0=cf(1.5, 0.5, 0) * euler(0,0,1.57)

RW.C1=cf(0, 0.5, 0) * euler(0,0,0)

LW.C0=cf(-1.5, 0.5, 0) * euler(1.57,1.57,0)

LW.C1=cf(0, 0.5, 0) * euler(-1.57,0,0)

end

end))

vel2.Parent=nil

for i=0,1,0.1 do

wait()

RootJoint.C0=RootCF*cf(0,-10,10-3*i)*euler(3.14+1.57*i,0,-1.57-3.14-1.57*i)

end

for i=0,1,0.15 do

wait()

RootJoint.C0=RootCF*cf(0,-10,7-3*i)*euler(3.14+1.57+1.57*i,0,-1.57-3.14-1.57+1.57*i)

end

for i=0,1,0.2 do

wait()

RootJoint.C0=RootCF*cf(0,-10,4-4*i)*euler(3.14+3.14,0,-1.57-3.14-1.57+1.57+1.57*i)

end

RootPart.CFrame=Torso.CFrame*euler(0,1,0)

RootJoint.C0=RootCF*euler(0,0,-1)

bg.Parent=nil

bp.Parent=nil

wait(0.5)

attack=false

wait()

Torso.Neck.C0=necko*euler(0,0,1)

end

end))

Damagefunc1(hit,10,10) 

end) 

numb=-1

for i=0,1,0.2 do

wait()

so("http://roblox.com/asset/?id=10209640",prt12,1,numb) 

numb=numb+0.2

wld1.C0=euler(1.57-1.2+2.77*i,0,0)*cf(0,1,0.3-0.3*i)

Torso.Neck.C0=necko*euler(0,0,1.57)

RW.C0=cf(1.5, 0.5, 0) * euler(0.7-0.7*i,0,-0.6+1.2*i)

RW.C1=cf(0, 0.5, 0) * euler(0,0,0)

LW.C0=cf(-1.5+1-1*i, 0.5, -0.5+0.5*i) * euler(1.57,1.57,0)

LW.C1=cf(0, 0.5, 0) * euler(1-2.57*i,0,0)

local Point = prt12.CFrame * CFrame.new(0,prt12.Size.Y*2.5,0)

local Point2 = prt12.CFrame

effect("White",0.5,0.1,LastPoint,Point)

LastPoint = Point

end

for i=0,1,0.1 do

wait()

local Point = prt12.CFrame * CFrame.new(0,prt12.Size.Y*2.5,0)

local Point2 = prt12.CFrame

effect("White",0.5,0.1,LastPoint,Point)

LastPoint = Point

end

con1:disconnect()

if jointhit==false then

vel2.Parent=nil

end

wait(1)

Torso.Neck.C0=necko*euler(0,0,1)

if jointhit==false then

bg.Parent=nil

RootJoint.C0=RootCF*euler(0,0,-1)

attack=false

end

magic=false

end

 

local LastPoint = prt12.CFrame * CFrame.new(0,-prt12.Size.Y*2.5,0)

local Point = prt12.CFrame * CFrame.new(0,prt12.Size.Y*2.5,0)

function effect(Color,Ref,Size,LP,P1,returnn)

local effectsmsh = Instance.new("BlockMesh")

effectsmsh.Scale = Vector3.new(0.4,1,0.4)

effectsmsh.Name = "Mesh"

local effectsg = Instance.new("Part")

effectsg.formFactor = 3

effectsg.CanCollide = false

effectsg.Name = "Eff"

effectsg.Locked = true

effectsg.Anchored = true

effectsg.Size = Vector3.new(0.2,1,0.2)

effectsg.Parent = workspace

effectsmsh.Parent = effectsg

effectsg.BrickColor = BrickColor.new(Color)

effectsg.Reflectance = Ref

local point1 = P1

local mg = (LP.p - point1.p).magnitude

effectsg.Size = Vector3.new(Size,mg,Size)

effectsg.CFrame = CFrame.new((LP.p+point1.p)/2,point1.p) * CFrame.Angles(math.rad(90),0,0)

if returnn then return effectsg end

coroutine.resume(coroutine.create(function()

if not returnn then

for i = 0 , 1 , 0.1 do

wait()

effectsg.Transparency = 1*i

effectsmsh.Scale = Vector3.new(Size-Size*i,1,Size-Size*i)

end

wait()

effectsg.Parent = nil

end

end))

end

 

function MagicBlock(brickcolor,cframe,x1,y1,z1,x3,y3,z3)

local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))

prt.Anchored=true

prt.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))

local msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))

coroutine.resume(coroutine.create(function(Part,Mesh) 

for i=0,1,0.1 do

wait()

Part.CFrame=Part.CFrame

Part.Transparency=i

Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)

end

Part.Parent=nil

end),prt,msh)

end

 

function MagicCircle(brickcolor,cframe,x1,y1,z1,x3,y3,z3)

local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))

prt.Anchored=true

prt.CFrame=cframe

local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))

coroutine.resume(coroutine.create(function(Part,Mesh) 

for i=0,1,0.1 do

wait()

Part.CFrame=Part.CFrame

Part.Transparency=i

Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)

end

Part.Parent=nil

end),prt,msh)

end

 

function MagicRing(brickcolor,cframe,x1,y1,z1,x3,y3,z3)

local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))

prt.Anchored=true

prt.CFrame=cframe

local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(x1,y1,z1))

coroutine.resume(coroutine.create(function(Part,Mesh) 

for i=0,1,0.03 do

wait()

Part.CFrame=Part.CFrame

Part.Transparency=i

Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)

end

Part.Parent=nil

end),prt,msh)

end

 

function MagicFreeze(brickcolor,cframe,x1,y1,z1,x3,y3,z3)

local prt=part(3,workspace,0.4,0.3,brickcolor,"Effect",vt(0.5,0.5,0.5))

prt.Anchored=true

prt.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))

local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=1778999",vt(0,0,0),vt(x1,y1,z1))

coroutine.resume(coroutine.create(function(Part,Mesh) 

for i=0,1,0.1 do

Part.CFrame=Part.CFrame*cf(0,0.3,0)

Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)

end

wait(5)

Part.Parent=nil

end),prt,msh)

end

 

Damagefunc1=function(hit,Damage,Knockback)

        if hit.Parent==nil then

                return

        end

        CPlayer=Bin 

        h=hit.Parent:FindFirstChild("Humanoid")

        if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then

        if attackdebounce == false then 

        attackdebounce = true 

        coroutine.resume(coroutine.create(function() 

        wait(0.2) 

        attackdebounce = false 

        end)) 

        Damage=Damage*10

--[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then

                        return

                end]]

--                        hs(hit,1.2) 

                        c=Instance.new("ObjectValue")

                        c.Name="creator"

                        c.Value=game.Players.LocalPlayer

                        c.Parent=h

                        game:GetService("Debris"):AddItem(c,.5)

                Damage=Damage+math.random(0,10)

--                h:TakeDamage(Damage)

                blocked=false

                block=hit.Parent:findFirstChild("Block")

                if block~=nil then

                print("herp")

                if block.Value>0 then

                blocked=true

                block.Value=block.Value-1

                print(block.Value)

                end

                end

                if blocked==false then

--                h:TakeDamage(Damage)

                h.Health=h.Health-Damage

                showDamage(hit.Parent,Damage,.5)

                else

                h:TakeDamage(1)

                showDamage(hit.Parent,1,.5)

                end

                vp=Instance.new("BodyVelocity")

                vp.P=500

                vp.maxForce=Vector3.new(math.huge,0,math.huge)

--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback

                vp.velocity=RootPart.CFrame.lookVector*Knockback+RootPart.Velocity/1.05

                if Knockback>0 then

                        vp.Parent=hit.Parent.Torso

                end

                game:GetService("Debris"):AddItem(vp,.25)

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

 

freezeDamagefunc=function(hit,Damage,Knockback)

        if hit.Parent==nil then

                return

        end

        CPlayer=Bin 

        h=hit.Parent:FindFirstChild("Humanoid")

        if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then

        if attackdebounce == false then 

        attackdebounce = true 

        coroutine.resume(coroutine.create(function() 

        wait(0.2) 

        attackdebounce = false 

        end)) 

        Damage=Damage*10

--[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then

                        return

                end]]

--                        hs(hit,1.2) 

                        c=Instance.new("ObjectValue")

                        c.Name="creator"

                        c.Value=game.Players.LocalPlayer

                        c.Parent=h

                        game:GetService("Debris"):AddItem(c,.5)

                Damage=Damage+math.random(0,5)

--                h:TakeDamage(Damage)

                blocked=false

                block=hit.Parent:findFirstChild("Block")

                if block~=nil then

                print("herp")

                if block.Value>0 then

                blocked=true

                block.Value=block.Value-1

                print(block.Value)

                end

                end

                if blocked==false then

--                h:TakeDamage(Damage)

                h.Health=h.Health-Damage

                showDamage(hit.Parent,Damage,.5)

                else

                h:TakeDamage(1)

                showDamage(hit.Parent,1,.5)

                end

                if math.random(1,1)==1 then

                BodPos=Instance.new("BodyPosition")

                BodPos.P=50000

                BodPos.D=1000

                BodPos.maxForce=Vector3.new(math.huge,math.huge,math.huge)

                BodPos.position=hit.Parent.Torso.Position

                BodPos.Parent=hit.Parent.Torso

                BodGy = it("BodyGyro") 

                BodGy.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 

                BodGy.P = 20e+003 

                BodGy.Parent=hit.Parent.Torso

                BodGy.cframe = hit.Parent.Torso.CFrame

                showDamage(hit.Parent,Damage,.5)

                so("http://www.roblox.com/asset/?id=41763367",hit,1,2) 

--[[                for i=1,10 do

                local freezepart=part(3,hit.Parent,0.5,0.5,BrickColor.new("Bright blue"),"Ice Part",vt(math.random(2,3)+math.random(),math.random(2,3)+math.random(),math.random(2,3)+math.random()))

                freezepart.Anchored=true

                freezepart.CFrame=hit.Parent.Torso.CFrame*cf(math.random(-1,0)+math.random(),-2.5,math.random(-1,0)+math.random())*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))

                coroutine.resume(coroutine.create(function(Part) 

                wait(5)

                Part.Anchored=false

                Part.Velocity=vt(math.random(-20,20),math.random(20,30),math.random(-20,20))

                wait(5)

                Part.Parent=nil

                end),freezepart)

                end]]

                coroutine.resume(coroutine.create(function(BodyPos,BodyGy,Hitted) 

                wait(5)

                BodyPos.Parent=nil

                BodyGy.Parent=nil

                end),BodPos,BodGy,hit)

                end

                vp=Instance.new("BodyVelocity")

                vp.P=500

                vp.maxForce=Vector3.new(math.huge,0,math.huge)

--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback

                vp.velocity=Torso.CFrame.lookVector*Knockback+Torso.Velocity/1.05

                if Knockback>0 then

                        vp.Parent=hit.Parent.Torso

                end

                game:GetService("Debris"):AddItem(vp,.25)

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

        c.BrickColor=BrickColor:Red()

        if CRIT==true then

                c.BrickColor=BrickColor.new("Really red")

        end

        c.Name="Head"

        c.TopSurface=0

        c.BottomSurface=0

        c.formFactor="Plate"

        c.Size=Vector3.new(1,.4,1)

        ms=Instance.new("CylinderMesh")

        ms.Scale=Vector3.new(.8,.8,.8)

        if CRIT==true then

                ms.Scale=Vector3.new(1,1.25,1)

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

 

function ob1d(mouse) 

if attack == true then return end 

hold=true

if combo==0 then

combo=1

oneslash()

elseif combo==1 then

combo=2

twoslash()

elseif combo==2 then

combo=3

threeslash()

elseif combo==3 then

combo=4

fourslash()

end

coroutine.resume(coroutine.create(function() 

wait(0.5)

if attack==false then

combo=0

Torso.Neck.C0=necko*euler(0,0,1)

RootJoint.C0=RootCF*euler(0,0,-1)

wld1.C0=euler(1.57,0,0)*cf(0,1,0)

RW.C0=cf(1.5, 0.5, 0) * euler(0,0,0.3)

RW.C1=cf(0, 0.5, 0) * euler(0,0,0)

LW.C0=cf(-1.5, 0.5, 0) * euler(0.5,-1.57,0)

LW.C1=cf(0, 0.5, 0) * euler(0.2,0,0)

end

end))

end 

 

function ob1u(mouse) 

hold = false 

end 

 

buttonhold = false 

 

function key(key) 

if attack == true then return end 

--attack=true

if key=="z" then

FlameBarrage()

end

if key=="x" then

IcePrison()

end

if key=="c" then

AirDash()

end

if key=="f" then

--so("http://roblox.com/asset/?id=130839563",Torso,1,1) 

so("http://www.roblox.com/asset/?id=10209810",Torso,1,1) 

wait(5)

for i=0,1,0.1 do

wait()

so("http://www.roblox.com/asset/?id=10209810",Torso,1,2) 

end

end

combo=0

wld1.C0=euler(1.57,0,0)*cf(0,1,0)

RW.C0=cf(1.5, 0.5, 0) * euler(0,0,0.3)

RW.C1=cf(0, 0.5, 0) * euler(0,0,0)

LW.C0=cf(-1.5, 0.5, 0) * euler(0.5,-1.57,0)

LW.C1=cf(0, 0.5, 0) * euler(0.2,0,0)

Humanoid.WalkSpeed=16

end

 

function key2(key) 

end 

 

function s(mouse) 

mouse.Button1Down:connect(function() ob1d(mouse) end) 

mouse.Button1Up:connect(function() ob1u(mouse) end) 

mouse.KeyDown:connect(key) 

mouse.KeyUp:connect(key2) 

unsheathed = true 

player = Player 

ch = Character 

MMouse = mouse 

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

--_G.R = RW 

-- 

LW.Part0 = ch.Torso 

LW.C0 = CFrame.new(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 

LW.C1 = CFrame.new(0, 0.5, 0) 

LW.Part1 = ch["Left Arm"] 

LW.Parent = ch.Torso 

--_G.L = LW 

--

equipanim() 

end 

 

function ds(mouse) 

hideanim() 

wait(0) 

RW.Parent = nil 

LW.Parent = nil 

RSH.Parent = player.Character.Torso 

LSH.Parent = player.Character.Torso 

end 

 

Bin.Selected:connect(s) 

Bin.Deselected:connect(ds) 

print("Spell Rapier loaded.")

-- mediafire

--[[ 

Copyrighted (C) Fenrier 2013

]]
