Remove()
end))
end 
function Explode(onb,scale,col) local Torm = m coroutine.resume(coroutine.create(function() local e1 = Instance.new("Part") e1.Anchored = true e1.formFactor = "Custom" e1.CanCollide = false e1.Size = Vector3.new(1,1,1) e1.BrickColor = BrickColor.new(col) 
e1.Transparency = 0.6 e1.TopSurface = 0 e1.BottomSurface = 0 e1.Parent = Torm e1.CFrame = onb local e1m = Instance.new("SpecialMesh") 
e1m.MeshType = "Sphere" e1m.Parent = e1 local r1 = Instance.new("Part") r1.Anchored = true r1.formFactor = "Custom" r1.CanCollide = false r1.Size = Vector3.new(1,1,1) r1.BrickColor = BrickColor.new(col) r1.Transparency = 0.6 r1.TopSurface = 0 r1.BottomSurface = 0 r1.Parent = Torm r1.CFrame = e1.CFrame *CFrame.Angles(math.rad(180),0,0) local r1m = Instance.new("SpecialMesh") r1m.MeshType = "FileMesh" 
r1m.Scale = Vector3.new(3,3,3) r1m.Parent = r1 r1m.MeshId = RingMesh.MeshId local r2 = Instance.new("Part") r2.Anchored = true r2.formFactor = "Custom" r2.CanCollide = false r2.Size = Vector3.new(1,1,1) r2.BrickColor = BrickColor.new(col) r2.Transparency = 0.6 r2.TopSurface = 0 r2.BottomSurface = 0 r2.Parent = Torm r2.CFrame = e1.CFrame *CFrame.Angles(0,math.rad(180),0) local r2m = Instance.new("SpecialMesh") r2m.MeshType = "FileMesh" 
r2m.Parent = r2 r2m.Scale = Vector3.new(3,3,3) r2m.MeshId = RingMesh.MeshId local bla = Instance.new("Part") bla.Anchored = true 
bla.formFactor = "Custom" bla.CanCollide = false bla.Size = Vector3.new(1,1,1)  bla.BrickColor = BrickColor.new(col) bla.Transparency = 0.6 bla.TopSurface = 0 bla.BottomSurface = 0 bla.Parent = Torm bla.CFrame = onb local blam = Instance.new("SpecialMesh") 
blam.MeshType = "FileMesh" blam.Parent = bla blam.Scale = Vector3.new(5,5,5) blam.MeshId = BlastMesh.MeshId for i=1,30 do local pluscal = scale/38 e1m.Scale = e1m.Scale + Vector3.new(pluscal,pluscal,pluscal) 
r1m.Scale = r1m.Scale + Vector3.new(pluscal,pluscal,pluscal) r2m.Scale = r1m.Scale + Vector3.new(pluscal,pluscal,pluscal)
blam.Scale = blam.Scale + Vector3.new(pluscal,pluscal/2,pluscal) bla.CFrame = bla.CFrame * CFrame.Angles(0,math.rad(12),0) r1.CFrame = r1.CFrame * CFrame.Angles(math.rad(6),0,0) r2.CFrame = r2.CFrame * CFrame.Angles(0,math.rad(6),0) wait() end for i=1,30 do local pluscal = scale/38 e1m.Scale = e1m.Scale + Vector3.new(pluscal,pluscal,pluscal)  r1m.Scale = r1m.Scale + Vector3.new(pluscal,pluscal,pluscal) r2m.Scale = r1m.Scale + Vector3.new(pluscal,pluscal,pluscal)
blam.Scale = blam.Scale + Vector3.new(pluscal/3,pluscal/3,pluscal/3) bla.CFrame = bla.CFrame * CFrame.Angles(0,math.rad(12),0) r1.CFrame = r1.CFrame * CFrame.Angles(math.rad(6),0,0) r2.CFrame = r2.CFrame * CFrame.Angles(0,math.rad(6),0) bla.Transparency = bla.Transparency + 0.1 e1.Transparency = e1.Transparency + 0.1 r1.Transparency = r1.Transparency + 0.1 r2.Transparency = r2.Transparency + 0.1 wait() end e1:Remove() r1:Remove() r2:Remove() end)) end
function Hurtsplosion(pos,dmg,rndmg,siz,forc)
coroutine.resume(coroutine.create(function() local boomcol = {"Bright red","New Yeller","Neon orange"}
for i=1,3 do 
coroutine.resume(coroutine.create(function()
local plos = pa(m,"Block",1*s*siz,1.5*s*siz,0.7*s*siz,false,false,0.3,0,boomcol[i]) spm("Sphere",plos,1) plos.Anchored = true
plos.CFrame = cf(pos + v3(0,0,0)) * ca(rd(ra(-360,360)),rd(ra(-360,360)),rd(ra(-360,360)))
plos.Mesh.Scale = v3(0.1,0.1,0.1)
for i=0.3,1,0.03 do local plc = plos.CFrame
plos.Mesh.Scale = v3(i*6,i*6,i*6) plos.Transparency = i plos.CFrame = plc * ca(rd(3),rd(3),0)
wait()
end
plos:Remove()
end))
end 
end))
wait(0.1)
DmgHumanoidsNear(pos,dmg,rndmg,5.5*s*siz,forc)
end
function DmgHumanoidsNear(pos,dmg,rndmg,mag,forc) 
local function kidive(ob) 
for i,v in pairs(ob:children()) do 
if v:IsA("BasePart") and v.Parent.Parent:findFirstChild("Humanoid") == nil and v.Parent:findFirstChild("Humanoid") == nil and (v.Position - pos).magnitude < mag*1.3 and v.Anchored == false  and v:GetMass() < 150 then 
v:BreakJoints() v.Velocity = cf(pos,v.Position).lookVector*forc
end
if v:IsA("Humanoid") and v ~= hu and v.Parent:findFirstChild("Torso") then 
if (pos - v.Parent.Torso.Position).magnitude < mag then local tdmg = dmg*ra(1,rndmg) 
if v.Parent:findFirstChild("Hh") == nil then local hh= Instance.new("NumberValue",v.Parent) hh.Name = "Hh"
hh.Value = v.Health - tdmg else v.Parent.Hh.Value = v.Health - (tdmg*3.5) end 
v.Health = v.Parent.Hh.Value if v.Parent.Hh.Value < 1 then v.Parent:BreakJoints() end 
end 
end 
if v:IsA("Model") or v:IsA("Workspace") then kidive(v) end end end 
kidive(workspace) 
end 
function Fire(bullet,typez,siz,dmg,rndmg,forc)
if typez == 1 then
bullet.Anchored = true 
local bullethit = false
local tyms = 0
repeat
tyms = tyms + 2
local bhit,bpos = ray(bullet.Position,bullet.Position - (bullet.CFrame *cf(0,0,-1)).p) 
if bpos ~= nil and (bpos - bullet.Position).magnitude < 7  then bullethit = true else bullet.CFrame = bullet.CFrame *cf(0,0,-1*s) *ca(rd(-0.0025),rd(0),0) end 
if tyms%32 == 0 then wait() end 
until bullethit or bullet.Position.y < -300 or tyms > 800 
bullet.CFrame = bullet.CFrame *cf(0,0,8) bullet:Remove()
if bullet.Position.y < -300 then
else
Hurtsplosion(bullet.Position,dmg,rndmg,siz,forc)
end
elseif typez == 2 then
bullet.Anchored = true 
local bullethit = false
local tyms = 0
local ming = 0.001
repeat 
if tyms > 70 and (ming == 0.001 or ming == -2.5) then ming = -2.5
local bpos = (bullet.CFrame *cf(0,0,-300)).p if (bpos - v3(Palm.Position.x,bpos.y,Palm.Position.z)).magnitude < 25*s then ming = 0 end 
end
tyms = tyms + 2
local bhit,bpos = ray(bullet.Position,bullet.Position - (bullet.CFrame *cf(0,0,-1)).p) 
if bpos ~= nil and (bpos - bullet.Position).magnitude < 7  then bullethit = true else bullet.CFrame = bullet.CFrame *cf(0,0,-0.5) *ca(rd(ming),rd(0),0) end
if tyms%16 == 0 then wait() end 
until bullethit or bullet.Position.y < -300 or tyms > 500 
bullet.CFrame = bullet.CFrame *cf(0,0,8) bullet:Remove()
if bullet.Position.y < -300 then
else
Hurtsplosion(bullet.Position,dmg,rndmg,siz,forc)
end
elseif typez == 3 then 
end
end 
function ShortifiedAnim(theanim)
if theanim == "Beam" then
local crom = pa(m,"Block",0,0,0,true,true,0.5,0,LaserCol3) local cromm = it("SpecialMesh",crom) cromm.MeshType = "FileMesh" cromm.MeshId = asset .. Decs.Crown
cromm.Scale = v3(15*s,5*s,15*s) crom.Anchored = true 
dias = {} loldiv = 360/8 for x=0,360,loldiv do 
local dia = pa(m,"Block",0,0,0,false,false,0,0,LaserCol2) dia.Anchored = true local diam = it("SpecialMesh",dia) diam.MeshType = "FileMesh" diam.MeshId = DiamondMesh.MeshId
diam.Scale = v3(3*s,9*s,3*s) table.insert(dias,dia)
end Button = true coroutine.resume(coroutine.create(function() local tardz = 0 repeat wait() tardz = tardz+ 15
crom.CFrame = Palm.CFrame *ca(rd(-90),0,0) *cf(0,5.5*s,2*s) *ca(0,rd(tardz),0) 
for rofl=1,#dias do dias[rofl].CFrame = crom.CFrame *ca(0,rd(rofl*loldiv),0) *cf(0,-19*s,0) *ca(rd(25),0,0) *cf(0,32*s,0) end 
 until not Button for x2=0.5,1,0.05 do wait() crom.Transparency = x2 end   end))
coroutine.resume(coroutine.create(function() for xk=1,0.5,-0.02 do wait() for i=1,#dias do dias[i].Transparency =xk end end end))
wait(1) local beamoffset = v3(0,0,0)
local b1 = pa(m,"Ball",10*s,10*s,10*s,false,false,0.1,0,LaserCol) b1.Anchored = true 
local b2 = pa(m,"Block",10*s,1,10*s,false,false,0.1,0,LaserCol) b2.Anchored = true  local b2m = it("CylinderMesh",b2)
local b3 = pa(m,"Ball",10*s,10*s,10*s,false,false,0.1,0,LaserCol) b3.Anchored = true 
local bpos = nil local bhit = nil local ts = 0
 repeat beamoffset = v3(ra(-2*s,2*s),ra(-2*s,2*s),ra(-2*s,2*s)) ts = ts + 1
bhit,bpos = ray(Palm.Position,Palm.Position - (Palm.CFrame *cf(0,0,1)).p) 
if bhit == nil or (Palm.Position - bpos).magnitude > 1500 then break end 
b1.CFrame = Palm.CFrame *cf(0,3*s,-11*s) 
b3.CFrame = cf(bpos) local lenz = (b1.Position - b3.Position).magnitude 
b2.CFrame = cf(b1.Position,b3.Position) *ca(rd(90),0,0) *cf(0,-lenz/2,0)  b2m.Scale = v3(1,lenz,1)
b1.CFrame = b1.CFrame + beamoffset b2.CFrame = b2.CFrame + beamoffset b3.CFrame = b3.CFrame + beamoffset 
if ts%10 == 0 then DmgHumanoidsNear(b3.Position,3,10,(14*s)+2,100) Explode(b3.CFrame*cf(0,b3.Size.y/3,0),25*s,LaserCol2) end
wait()  until not Button or ts > 600
  coroutine.resume(coroutine.create(function() for xk=0.1,1.1,0.08 do wait() b1.Transparency = xk  b2.Transparency = xk  b3.Transparency = xk  end b1:Remove() b2:Remove() b3:Remove() end))
 coroutine.resume(coroutine.create(function() for xk=0.5,1.1,0.02 do wait() for i=1,#dias do dias[i].Transparency =xk end end end))
wait(1)  clearit(dias) crom:Remove()
end
end 
PalmLev = it("BodyPosition",Palm) 
PalmFace = it("BodyGyro",Palm) PalmFace.maxTorque = v3(0,0,0)
coroutine.resume(coroutine.create(function()
PalmLev.position = (t.CFrame *cf(handoffset)).p
local yspi = 0
while true do yspi = yspi + 8
if Anim.a == "Gun" or Anim.a == "Ride" or Anim.a == "Pound" then 
Facing = "Mouse" bgx = -90 bgy = 90 bgz = 0 
elseif Anim.a == "Fu" or Anim.a == "Fist" or Anim.a == "GroundGrip" then 
Facing = "Mouse" bgx = -90 bgy = 0 bgz = 0 
elseif Anim.a == "Splat" or Anim.a == "Beam" then
Facing = "Mouse" bgx = 0 bgy = 0 bgz = 0 
elseif Anim.a == "None" then 
Facing = "Owner" bgx = -90 bgy = 0 bgz = 0 Posing = "Follow"
elseif Anim.a == "Shower" then
Facing = "None" bgx = 0 bgy = 0 bgz = 0 Posing = "TopOwner"
end 
if Posing == "Follow" then 
PalmLev.maxForce = v3(1/0,1/0,1/0) PalmLev.position = (t.CFrame *cf(handoffset) *cf(0,0,0)).p 
elseif Posing == "TopOwner" then
PalmLev.maxForce = v3(1/0,1/0,1/0) PalmLev.position = (t.CFrame *cf(0,12*s,0)).p 
end 
if Facing == "Owner" then 
PalmFace.maxTorque = v3(1/0,1/0,1/0) PalmFace.cframe = cf(Palm.Position,he.Position) *ca(rd(bgx),rd(bgy),rd(bgz))
elseif Facing == "Mouse" and mou ~= nil and Equip then 
if Anim.a == "Gun" or Anim.a == "Beam" or Anim.a == "Ride" or Anim.a == "GroundGrip" or Anim.a == "Fu" or Anim.a == "Pound" or Anim.a == "Splat" or Anim.a == "Fist" then 
if Anim.b == "None" or Anim.a == "Beam" or Anim.a == "Ride" then 
PalmFace.cframe = cf(Palm.Position,mou.Hit.p) *ca(rd(bgx),rd(bgy),rd(bgz)) wait(0.05)
end end end
wait(0.05)
end 
end))
function FireFinger(lasercol,ffingz,targ,typez,siz,dmg,rndmg,forc) coroutine.resume(coroutine.create(function() 
local laser = pa(m,"Block",fingwide*1.3,fingwide*1.3,fingwide*2.5,true,false,0,0,lasercol) spm("Sphere",laser,1+(siz/5.5)) laser.Name = "Projectile"
local lw = weld(laser,ffingz,laser,0,ffingz.Size.y/0.8 +(siz/2.5),0,rd(90),0,0)
for i=1,0.4,-0.05 do laser.Transparency = i wait() end 
BlastWave(ffingz.CFrame*cf(0,ffingz.Size.y*1.3,0)*ca(0,0,0),ffingz.Size.x*1.6,1.8,LaserCol2)
lw:Remove() laser.CFrame = cf(laser.Position,targ)
Fire(laser,typez,siz,dmg,rndmg,forc) 
end))
end
GrabWeld = it("Weld",m)
Palm.Touched:connect(function(touch)
if Anim.a == "Ride" and GrabWeld.Part1 == nil and touch.Parent:findFirstChild("Torso") and touch.Parent:findFirstChild("Humanoid") then
local tor = touch.Parent.Torso touch.Parent.Humanoid.PlatformStand = true 
GrabWeld.Part0 = Palm GrabWeld.Part1 = tor GrabWeld.C0 = cf(-3*s,4.5*s,-Palm.Size.x/2) GrabWeld.C1 = ca(0,rd(90),rd(-90)) *ca(0,rd(0),0)
end
end)
re(bp,"Hand")
hb = it("HopperBin",bp) hb.Name = "Hand"
hb.Selected:connect(function(mouse) mou = mouse Equip = true
mouse.KeyDown:connect(function(k)  k = k:lower()
if Anim.a == "Ride" and k == "f" then FireFinger(LaserCol,pPinkie3,mouse.Hit.p,1,2.25,1,18,30)  end
if Anim.b ~= "None" or Anim.Welding ~= 0 then  return end 
if Anim.a == "None" then
if k == "f" then 
Anim.a = "Gun" HandSign("Gun",0.7)
elseif k == "p" then
Anim.a = "Fu" HandSign("f",1)
elseif k == "g" then
Anim.a = "Fist" HandSign("fist",1)
elseif k == "c" then
Anim.a = "Splat" HandSign("wide",1)
elseif k == "r" then
Anim.a = "Ride" HandSign("ride",1) Posing = "None"
elseif k == "v" then
Anim.a = "Shower" HandSign("grab2",1) PalmFace.cframe = cf(0,0,0) *ca(0,0,0)
elseif k == "b" then
Anim.a = "Pound" HandSign("fist",1)
elseif k == "x" then
Anim.a = "GroundGrip" HandSign("grab2",1)
elseif k == "z" then
Anim.a = "Beam" HandSign("wide2",1) 
end 
else
if k == "f" and Anim.a == "Gun" then 
Anim.a = "None" HandSign("five",0.8)
elseif k == "p" and Anim.a == "Fu" then
Anim.a = "None" HandSign("five",0.8)
elseif k == "g" and Anim.a == "Fist" then
Anim.a = "None" HandSign("five",0.8)
elseif k == "c" and Anim.a == "Splat" then
Anim.a = "None" HandSign("five",0.8)
elseif k == "r" and Anim.a == "Ride" then
Anim.a = "None" HandSign("five",0.8) GrabWeld.Part0 = nil Anim.b = "None" Posing = "Follow"  Facing = "Owner"
if GrabWeld.Part1 ~= nil and GrabWeld.Part1.Parent:findFirstChild("Humanoid") ~= nil then GrabWeld.Part1.Parent.Humanoid.PlatformStand = false end GrabWeld.Part1 = nil
elseif k == "v" and Anim.a == "Shower" then
Anim.a = "None" HandSign("five",0.8) Posing = "Follow" Facing = "Owner"
elseif k == "b" and Anim.a == "Pound" then
Anim.a = "None" HandSign("five",0.8)
elseif k == "x" and Anim.a == "GroundGrip" then 
Anim.a = "None" HandSign("five",0.8)
elseif k == "z" and Anim.a == "Beam" then 
Anim.a = "None" HandSign("five",0.8)
end
end
end)
mouse.Button1Down:connect(function()
if Anim.a == "None" or Anim.b ~= "None" then return end 
if Anim.a == "Gun" then
Anim.b = "Gun" FireFinger(LaserCol,pPoint3,mouse.Hit.p,1,2.25,1,10,60) FireFinger(LaserCol,pMid3,mouse.Hit.p,1,2.25) wait(1) Anim.b = "None"
elseif Anim.a == "Fu" then
Anim.b = "Fu" FireFinger(LaserCol,pMid3,mouse.Hit.p,1,3.65,2,14,95) wait(0.25) Anim.b = "None"
elseif Anim.a == "Fist" then 
local bhit,bpos = ray(Palm.Position,Palm.Position - (Palm.CFrame *cf(0,-1,0)).p) 
if bhit == nil or (Palm.Position - bpos).magnitude > 500 then return end 
Anim.b = "Fist" Posing = "None" PalmFace.cframe = cf(Palm.Position,bpos) *ca(rd(-90),0,0)
PalmLev.position = (Palm.CFrame *cf(0,-15*s,0)).p
wait(0.45)
PalmLev.position = bpos + ((Palm.CFrame *cf(0,1*s,0)).p - Palm.Position)
local tz = 0 repeat wait()  BlastWave(Palm.CFrame*ca(rd(180),0,0),8*s,3.5,HCol) tz = tz + wait() until (PalmLev.position - Palm.Position).magnitude < 8*s or tz > 1
Explode(Palm.CFrame *cf(0,6*s,0) *ca(rd(180),0,0),15*s,ts(bhit.BrickColor))
DmgHumanoidsNear((Palm.CFrame *cf(0,8,0)).p,3,10,(12*s)+2,105)
if not bhit.Anchored then PalmLev.position = (Palm.CFrame *cf(0,12*s,0)).p wait(0.5) end 
wait(1) Posing = "Follow" Anim.b = "None"
elseif Anim.a == "Splat" then
if mouse.Target == nil and (Palm.Position - mouse.Hit.p).magnitude > 500 then return end local bpos = mouse.Hit.p
Anim.b = "Splat" Posing = "None" 
local ya,yb,yc = PalmFace.cframe:toEulerAnglesXYZ() PalmFace.cframe = cf(0,0,0) *ca(0,yb,0) *ca(rd(-90),0,0) PalmLev.position = bpos + v3(0,10*s,0)
local tz = 0 repeat wait() tz = tz + wait() until (PalmLev.position - Palm.Position).magnitude < 5*s or tz > 1.3 
for i=-90,0,5 do 
PalmLev.position = PalmLev.position + v3(0,2*s,0) PalmFace.cframe = cf(0,0,0) *ca(0,yb,0) *ca(rd(i),0,0)
wait()
end  wait(0.2)
for i=0,-100,-10 do 
local lewd = i
if lewd < -50 then lewd = -95 end 
PalmLev.position = PalmLev.position - v3(0,4.7*s,0) PalmFace.cframe = cf(0,0,0) *ca(0,yb,0) *ca(rd(lewd),0,0)
wait()
end wait(0.2)
local cr = pa(m,"Block",16*s,0,16*s,false,false,1,0,"") cr.Anchored = true cr.CFrame = cf(bpos) *ca(0,rd(ra(-360,360)),0)
local de = it("Decal",cr) de.Face = "Top" de.Texture = asset .. Decs.Crack Serv.d:AddItem(cr,16)
DmgHumanoidsNear((Palm.CFrame *cf(0,0,-1)).p,3,20,(15*s)+2,110)
ShockWave(Palm.CFrame *ca(rd(90),0,0),25*s,LaserCol)
wait(1) Posing = "Follow" Anim.b = "None"
elseif Anim.a == "Ride" and Button == false then
Posing = "None" Anim.b = "Ride"
Button = true
repeat PalmLev.position = (Palm.CFrame *cf(0,10,0)).p wait() until Button == false
 Anim.b = "None"
elseif Anim.a == "Shower" and Button == false then
Anim.b = "Shower" Button = true 
repeat
local targz = Palm.Position + v3(0,20*s,0)
if ra(1,12) == 1 then FireFinger(LaserCol,pPinkie3,targz,2,4,1,18,55) end
if ra(1,13) == 1 then FireFinger(LaserCol,pRing3,targz,2,4,1,18,60) end
if ra(1,12) == 1 then FireFinger(LaserCol,pMid3,targz,2,4,1,18,65) end
if ra(1,13) == 1 then FireFinger(LaserCol,pPoint3,targz,2,4,1,18,70) end
if ra(1,12) == 1 then FireFinger(LaserCol,pThumb3,targz,2,4,1,18,80) end
PalmFace.cframe = PalmFace.cframe *ca(0,rd(10),0)
wait()
until Button == false
Anim.b = "None" 
elseif Anim.a == "Pound" and Anim.b == "None" then Posing = "None" Anim.b = "Pound"
local bhit,bpos = ray(Palm.Position,Palm.Position - (Palm.CFrame *cf(0,-1,0)).p) 
if bhit == nil or (Palm.Position - bpos).magnitude > 500 then return end 
PalmLev.position = bpos + v3(0,15*s,0) 
local ya,yb,yc = PalmFace.cframe:toEulerAnglesXYZ() PalmFace.cframe = ca(ya,yb,yc) 
 local tz = 0 repeat wait() tz = tz + wait() until (PalmLev.position - Palm.Position).magnitude < 5*s or tz > 1.3  wait(0.1)
for i=-90,-10,10 do
PalmFace.cframe = ca(ya,yb,yc) *ca(0,0,rd(i+90)) PalmLev.position = PalmLev.position + v3(0,2.5*s,0)
wait() end wait(0.25) local realcf = cf(v3(he.Position.x,0,he.Position.z),v3(Palm.Position.x,0,Palm.Position.z))
for i=-10,-90,-10 do
PalmFace.cframe =  ca(ya,yb,yc) *ca(0,0,rd(i+90)) PalmLev.position = PalmLev.position - v3(0,4*s,0)
wait() end PalmFace.cframe = realcf *ca(rd(-90),rd(90),0) wait(0.25)
local cr = pa(m,"Block",22*s,0,22*s,false,false,1,0,"") cr.Anchored = true cr.CFrame = cf(bpos) *ca(0,rd(ra(-360,360)),0)
local de = it("Decal",cr) de.Face = "Top" de.Texture = asset .. Decs.Crack Serv.d:AddItem(cr,16)
Dustplosion(Palm.CFrame *cf(2*s,0,0) *ca(rd(90),0,rd(90)),30*s,{"Dark green","Bright green","Brown"},3)
ShockWave(Palm.CFrame *cf(2*s,0,0) *ca(rd(90),0,rd(90)),20*s,ts(bhit.BrickColor))
DmgHumanoidsNear((Palm.CFrame *cf(0,1,0)).p,1,20,(15*s)+2,90) wait(0.2)
local palmcf = cf(bpos) local earthsplos = ra(5,8) palmcf = Palm.CFrame *ca(0,rd(90),0) *ca(rd(-90),0,rd(0))
for i=1,earthsplos do Earthsplosion(palmcf *cf(0,-2*s,((i*7)+7)*s),10,1,20,75) wait(0.1) end 
Earthsplosion(palmcf *cf(0,-2*s,(((earthsplos+1)*7)+7)*s),16,2,25,75)
      wait(1) Posing = "Follow" wait(0.25) Anim.b = "None" 
elseif Anim.a == "GroundGrip" then Posing = "None" Anim.b = "GroundGrip"
local bhit,bpos = ray(Palm.Position,Palm.Position - (Palm.CFrame *cf(0,-1,0)).p) 
if bhit == nil or (Palm.Position - bpos).magnitude > 500 then return end 
PalmLev.position = bpos + v3(0,27*s,0) ColFings(false)
local tz = 0 repeat wait() tz = tz + wait() until (PalmLev.position - Palm.Position).magnitude < 8*s or tz > 1.3  wait(0.1)
local thepos = (Palm.CFrame *cf(0,-0.1*s,0)).p - Palm.Position
PalmFace.cframe = cf(Palm.Position,bpos + thepos) *ca(rd(-90),0,0)
for i=27,1,-3 do PalmLev.position = bpos + v3(0,i*s,0) wait(0.07) end HandSign("grab3",0.4) wait(0.55)
local ro = pa(m,"Ball",0,0,0,false,false,0,0,"Earth green") ro.Name = "Rock" local row = it("SpecialMesh",ro) row.MeshType = "FileMesh" row.MeshId = asset .. Decs.Rock
local rowe = weld(ro,Palm,ro,0,Palm.Size.y,-Palm.Size.z*1.2,0,0,0) row.Scale = v3(9*s,10*s,9*s)
coroutine.resume(coroutine.create(function() for xz=1,70,7 do PalmLev.position = bpos + v3(0,xz*s,0) wait(0.06) end end))
wait(0.25) Dustplosion(cf(bpos),30*s,{"Dark green","Bright green","Brown"},3) local lolra = ra(-360,360)
Earthsplosion(cf(bpos),25,1,20,125,"sand") for yyy=0,360,60 do  coroutine.resume(coroutine.create(function()
for zzz=1,4 do 
Earthsplosion(cf(bpos) *ca(0,rd(yyy+lolra),0) *cf(0,0,zzz*15*s),10,1,20,75) wait(0.14)
end wait(0.25) Earthsplosion(cf(bpos) *ca(0,rd(yyy+lolra),0) *cf(0,0,5*18*s),25,1,20,120)  end)) end 
wait(0.3) HandSign("grab2",0.5) wait(0.75) Serv.d:AddItem(ro,20) rowe:Remove() ro.CanCollide = true local rocf = ro.CFrame ro.Size=v3(14*s,14*s,14*s) ro.CFrame = rocf wait(0.75) ColFings(true) Posing = "Follow" Anim.b = "None" 
elseif Anim.a == "Beam" and not Button and Anim.b == "None" then Anim.b = "Beam" 
ShortifiedAnim("Beam") wait(0.5) Anim.b = "None"
end
end)
mouse.Button1Up:connect(function()
Button = false
end)
mouse.Move:connect(function() 
end)
end)
hb.Deselected:connect(function(mouse)
Equip = false
end)
game.Workspace.YOURNAMEHERE.Humanoid.MaxHealth = math.huge --Put your name where it says YOURNAMEHERE.


