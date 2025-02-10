 Part(main,CFrame.new(1.85,.35,-1.1)*CFrame.Angles(0,math.pi/2,0),CFrame.new(),Vector3.new(1.25,.7,.7),pipe,piperef,0,Mesh("SpecialMesh",Vector3.new(1,1,1),"Cylinder"))
Part(p1,CFrame.new(.5,0,-.025),CFrame.new(),Vector3.new(1.5,1,1),pipe2,pipe2ref,0,Mesh("SpecialMesh",Vector3.new(.7,.85,.85),"Cylinder"),"DiamondPlate")
Part(p1,CFrame.new(-.625,0,0),CFrame.new(),Vector3.new(.7,.7,.7),pipe,piperef,0,Mesh("SpecialMesh",Vector3.new(1,1,1),"Sphere"))
local p1 = Part(p1,CFrame.new(-.625,0,0)*CFrame.Angles(0,0,-1)*CFrame.new(-.95,0,0),CFrame.new(),Vector3.new(1.9,.7,.7),pipe,piperef,0,Mesh("SpecialMesh",Vector3.new(1,1,1),"Cylinder"))
Part(p1,CFrame.new(-.95,0,0),CFrame.new(),Vector3.new(.7,.7,.7),pipe,piperef,0,Mesh("SpecialMesh",Vector3.new(1,1,1),"Sphere"))
local p1 = Part(p1,CFrame.new(-.95,0,0)*CFrame.Angles(0,0,1)*CFrame.new(-1.25,0,0),CFrame.new(),Vector3.new(2.5,.7,.7),pipe,piperef,0,Mesh("SpecialMesh",Vector3.new(1,1,1),"Cylinder"))
local p = Part(p1,CFrame.new(-.3,0,-.01),CFrame.new(),Vector3.new(1.5,1,1),pipe2,pipe2ref,0,Mesh("SpecialMesh",Vector3.new(1,.8,.8),"Cylinder"),"DiamondPlate")
Part(p,CFrame.new(.6,0,0),CFrame.new(),Vector3.new(.15,.9,.9),pipe3,pipe3ref,0,Mesh("SpecialMesh",Vector3.new(1,1,1),"Cylinder"))
Part(p,CFrame.new(-.6,0,0),CFrame.new(),Vector3.new(.15,.9,.9),pipe3,pipe3ref,0,Mesh("SpecialMesh",Vector3.new(1,1,1),"Cylinder"))
Part(p,CFrame.new(0,0,-.65),CFrame.new(),Vector3.new(1.3,.3,.5),pipe3,pipe3ref,0)
Part(p1,CFrame.new(-1.25,0,0),CFrame.new(),Vector3.new(.15,.65,.65),pipe3,pipe3ref,0,Mesh("SpecialMesh",Vector3.new(1,1,1),"Cylinder"))
local p = Part(p1,CFrame.new(-1.35,0,0)*CFrame.Angles(math.pi/2,0,math.pi/2),CFrame.new(),Vector3.new(1,1,1),pipe3,pipe3ref,0,Mesh("SpecialMesh",Vector3.new(.5,2,.5),"FileMesh","rbxassetid://16659502"))
local firer = Instance.new("Fire",p)
local lightr = Instance.new("PointLight",p)
 
cancollide = false
local s = Part(main,CFrame.new(1.05,3,-2.7)*CFrame.Angles(-.5,0,0)*CFrame.new(0,0,.75),CFrame.new(),Vector3.new(.3,.3,1.5),body,bodyref,0)
local s = Part(s,CFrame.new(0,.15,.75)*CFrame.Angles(.55,0,0)*CFrame.new(0,-.15,1.5),CFrame.new(),Vector3.new(.299,.3,3),body,bodyref,0)
local s = Part(s,CFrame.new(0,.15,1.5)*CFrame.Angles(1.05,0,0)*CFrame.new(0,-.15,1),CFrame.new(),Vector3.new(.3,.3,2),body,bodyref,0)
Part(s,CFrame.new(0,0,.75),CFrame.new(),Vector3.new(.4,.4,.4),pipe3,pipe3ref,0)
 
local s = Part(main,CFrame.new(-1.05,3,-2.7)*CFrame.Angles(-.5,0,0)*CFrame.new(0,0,.75),CFrame.new(),Vector3.new(.3,.3,1.5),body,bodyref,0)
local s = Part(s,CFrame.new(0,.15,.75)*CFrame.Angles(.55,0,0)*CFrame.new(0,-.15,1.5),CFrame.new(),Vector3.new(.299,.3,3),body,bodyref,0)
local s = Part(s,CFrame.new(0,.15,1.5)*CFrame.Angles(1.05,0,0)*CFrame.new(0,-.15,1),CFrame.new(),Vector3.new(.3,.3,2),body,bodyref,0)
Part(s,CFrame.new(0,0,.75),CFrame.new(),Vector3.new(.4,.4,.4),pipe3,pipe3ref,0)
cancollide = true
 
local hp = Instance.new("Part",m)
hp.Anchored = true
hp.TopSurface,hp.BottomSurface =0,0
hp.BrickColor = BrickColor.new("Dark red")
hp.FormFactor = "Custom"
hp.CanCollide = false
hp.Size = Vector3.new(8,1.5,.5)
 
local hptop = hp:Clone()
hptop.Parent = m
hptop.BrickColor = BrickColor.new("Dark green")
 
firer.Size = .01
firer.Heat = 1000
firel.Size = .01
firel.Heat = 1000
 
local hm = Instance.new("Sound",sg)
hm.SoundId = "rbxassetid://131864673"
hm.Pitch = .8
 
--[[coroutine.wrap(function()
    wait(.2)
    while wait(.6) do
        ps.Pitch = -ps.Pitch
        ps2.Pitch = -ps2.Pitch
    end
end)()]]
 
local bvel = Instance.new("BodyVelocity",main)
bvel.maxForce = Vector3.new()
bvel.velocity = Vector3.new()
bvel.P = 5000
 
local bgyro = Instance.new("BodyGyro",main)
bgyro.maxTorque = Vector3.new()
bgyro.cframe = main.CFrame
bgyro.D = 800
 
do
    local vecs = {}
    for i,v in pairs(Enum.NormalId:GetEnumItems()) do
        table.insert(vecs,Vector3.FromNormalId(v))
    end
    function getSide(h,r)
        
        local ob = h.CFrame:pointToObjectSpace(r)
        if h:IsA("Part") and h.Shape == Enum.PartType.Ball then
            return (r-h.Position).unit
        elseif h:IsA("Part") and h.Shape == Enum.PartType.Cylinder then
            if isClose(math.abs(ob.y),h.Size.Y/2) then -- top
                return h.CFrame:vectorToWorldSpace((ob*Vector3.new(0,1,0)).unit)
            else
                return h.CFrame:vectorToWorldSpace(CFrame.new(Vector3.new(),ob*Vector3.new(1,0,1)).lookVector)
            end
        elseif h:IsA("WedgePart") then
            vecs = {Vector3.new(0,-1,0),Vector3.new(1,0,0),Vector3.new(-1,0,0),Vector3.new(0,0,1)}
        end
        for i,v in pairs(vecs) do
            if (ob*v/(h.Size/2)*v):isClose(v) then
                return h.CFrame:vectorToWorldSpace(v)
            end
        end
        if h:IsA("WedgePart") then
            return h.CFrame:vectorToWorldSpace(Vector3.new(0,h.Size.Z,h.Size.Y).unit)
        end
    end
end
 
local function Raycast(ray,ign)
    local ign = ign or {m,char}
    local h,p = workspace:FindPartOnRayWithIgnoreList(ray,ign)
    if h and not h.CanCollide then
        table.insert(ign,h)
        return Raycast(ray,ign)
    else
        return h,p
    end
end
 
local cam = workspace.CurrentCamera
local vehicleOn = true
local lastVehicleOn = false
local acc = 0
local maxSpeed = 180
local spd = 0
local jump = false
 
local kd = {}
local function isDown(k)
    return kd[k:byte()] and 1 or 0
end
mouse.KeyDown:connect(function(k)
    kd[k:byte()] = true
    if k == "f" then
        vehicleOn = not vehicleOn
    elseif k == "r" then
    --    hval.Value = 0
    end
end)
mouse.KeyUp:connect(function(k)
    kd[k:byte()] = false
end)
 
mouse.Button1Down:connect(function()
    b1d = true
end)
mouse.Button1Up:connect(function()
    b1d = false
end)
mouse.Button2Down:connect(function()
    b2d = true
end)
mouse.Button2Up:connect(function()
    b2d = false
end)
 
 
hum.Changed:connect(function()
    if hum.Jump then
        jump = true
        hum.Jump = false
        hum.Sit = true
    end
end)
 
local fire = {}
 
mouse.TargetFilter = m
 
local t,delta = tick(),0
local smokers = {}
 
local guntimer = 0
local scon;
local lastjump = 0
scon = step:connect(function()
 
    local now = tick()
    delta,t = now-t,now
 
    if hval.Value <= 0 then
        game:service'Debris':AddItem(m,5)
        coroutine.wrap(function()
            bvel:Destroy()
            local parts = {}
            local function a(b)
                for i,v in pairs(b:GetChildren()) do
                    if v:IsA("BasePart") then
                        table.insert(parts,v)
                    end
                    a(v)
                end
            end
            a(m)
            bvel:Destroy()
            bgyro:Destroy()
            local aTouched = false
            for i,v in pairs(parts) do
                v.Touched:connect(function()
                    if aTouched then return end
                    aTouched = true
                    local exp = Instance.new("Explosion",workspace)
                    exp.Position = v.Position
                    exp.BlastRadius = 0
                    exp.BlastPressure = .5
                    m:BreakJoints()
                    char:BreakJoints()
                    for i,x in pairs(m:GetChildren()) do
                        if x:IsA("BasePart") and v ~= x then
                            local diff = (x.Position-v.Position)
                            x.Velocity = x.Velocity + diff.unit * diff.magnitude/0.25/v:GetMass()
                        end
                    end
                    script.Disabled = true
                end)
            end
            wait(5)
            script.Disabled = true
        end)()
        scon:disconnect()
        return
    else
        hp.Transparency = hval.Value == 100 and math.min(1,hp.Transparency+.05) or math.max(0,hp.Transparency-.05)
        hptop.Transparency = hp.Transparency
        hp.CFrame = CFrame.new(head.Position+Vector3.new(0,9,0))*CFrame.Angles(0,(tick()/2)%(math.pi*2),0)
        hptop.Size = Vector3.new(hval.Value/100*(hp.Size.X+.05),hp.Size.Y+.1,hp.Size.Z+.1)
        hptop.CFrame = hp.CFrame * CFrame.new(-hp.Size.X/2-.025+hptop.Size.X/2,0,0)
    end
 
    if b1d and vehicleOn then
        guntimer = guntimer + delta
        if guntimer > .1 then
            t1s:Play()
            t1s.Pitch = 1.5 + (math.random()-.5)*.1
            guntimer = guntimer - .1
            local b = Instance.new("Part",m)
            b.Anchored = true
            b.FormFactor = "Custom"
            b.TopSurface,b.BottomSurface = 0,0
            b.CanCollide = false
            b.BrickColor = BrickColor.new("Bright yellow")
            b.Size = Vector3.new(.2,.2,.8)
            local sm = Instance.new("SpecialMesh",b)
            sm.MeshId = "rbxassetid://2697549"
            sm.Scale = Vector3.new(.5,.5,.25)
            local orig = t1.CFrame*CFrame.new(.5,0,0)*CFrame.Angles(0,-math.pi/2,0)
            local vel = (mouse.Hit.p-orig.p).unit*250 + main.Velocity*delta
            b.CFrame = orig
            coroutine.wrap(function()
                local t = tick()
                while true do
                    step:wait()
                    local n = tick()
                    local d,t = n-t,n
                    local ocf = b.CFrame
                    local h,r = Raycast(Ray.new(ocf.p,vel*d),{char,m})
                    if h then
                        b:Destroy()
                        local hit = false
                        local hp = h.Parent:FindFirstChild("hp") or h.Parent.Parent:FindFirstChild("hp")
                        if hp and hp:IsA("NumberValue") then
                            hp.Value = hp.Value - 3
                            hit = "rbxassetid://142082170"
                        end
                        local hp = h.Parent:FindFirstChild("Humanoid") or h.Parent.Parent:FindFirstChild("Humanoid")
                        if hp and hp:IsA("Humanoid") then
                            hp.Health = hp.Health - 50
                            hit = "rbxassetid://133758570"
                        end
                        if hit then
                            hm:Play()
                            local sp = Instance.new("Part",m)
                            sp.FormFactor = "Custom"
                            sp.Size = Vector3.new()
                            sp.Transparency = 1
                            sp.Anchored = true
                            sp.CanCollide = false
                            sp.CFrame = CFrame.new(r)
                            local s = Instance.new("Sound",sp)
                            s.SoundId = hit
                            s.Volume = 1
                            s.Pitch = 1.1+math.random()*.2
                            wait()
                            s:Play()
                            game:service'Debris':AddItem(sp,5)
                        end
                        break
                    end
                    b.CFrame = CFrame.new(ocf.p+vel*d,ocf.p+vel*d*2)
                    sm.Scale = Vector3.new(.5-vel.magnitude*d/100,.5-vel.magnitude*d/100,vel.magnitude*d/3)
                    vel = vel - Vector3.new(0,4*d,0)
                    if ocf.Y < -100 then
                        b:Destroy()
                        break
                    end
                end
            end)()
        end
    else
        guntimer = 0
    end
 
    local mcfr = main.CFrame
    local mpos = mcfr.p
 
    local raydir = Vector3.new(0,-100,0)--mcfr:vectorToWorldSpace(Vector3.new(0,-100,0))
 
    local dhit,dray = Raycast(Ray.new(mpos,raydir),{char,m})
    local diff = dray-mpos
 
    local rays = {
        tip = Ray.new((mcfr*CFrame.new(0,0,-11.5)).p,raydir),
        Ray.new((mcfr*CFrame.new(7,0,-11)).p,raydir),
        Ray.new((mcfr*CFrame.new(-7,0,-11)).p,raydir),
        Ray.new((mcfr*CFrame.new(1,0,-10.5)).p,raydir),
        Ray.new((mcfr*CFrame.new(-1,0,-10.5)).p,raydir),
        Ray.new((mcfr*CFrame.new(2.5,0,-6)).p,raydir),
        Ray.new((mcfr*CFrame.new(-2.5,0,-6)).p,raydir),
        rtip = Ray.new((mcfr*CFrame.new(10.5,0,-3)).p,raydir),
        ltip = Ray.new((mcfr*CFrame.new(-10.5,0,-3)).p,raydir),
        rprop = Ray.new((mcfr*CFrame.new(6.5,0,-3)).p,raydir),
        lprop = Ray.new((mcfr*CFrame.new(-6.5,0,-3)).p,raydir),
        Ray.new((mcfr*CFrame.new(2.5,0,-3)).p,raydir),
        Ray.new((mcfr*CFrame.new(-2.5,0,-3)).p,raydir),
        Ray.new((mcfr*CFrame.new(6.5,0,-1)).p,raydir),
        Ray.new((mcfr*CFrame.new(-6.5,0,-1)).p,raydir),
        Ray.new((mcfr*CFrame.new(2.5,0,4)).p,raydir),
        Ray.new((mcfr*CFrame.new(-2.5,0,4)).p,raydir),
        Ray.new((mcfr*CFrame.new(2.5,0,2)).p,raydir),
        Ray.new((mcfr*CFrame.new(-2.5,0,2)).p,raydir),
    }
    for i,v in pairs(rays) do
        local h,r = Raycast(v,{char,m})
        local df = r-v.Origin
        if df.Y > diff.Y then
            diff = df
        end
        rays[i] = {r=r,d=df,h=h}
    end
    
    local moving = false
    local movdir = Vector3.new()
    local hoverHeight = 7 + math.sin(now)/2
    local vel = Vector3.new(0,(hoverHeight+diff.Y)*3,0)
    if isDown'w'+isDown's'+isDown'd'+isDown'a' > 0 then
        moving = true
        movdir = Vector3.new(isDown'd'-isDown'a',0,isDown's'-isDown'w')
        if movdir.magnitude < .001 then
            moving = false
        else
            movdir = movdir.unit
        end
    end
    bgyro.maxTorque = Vector3.new(1,1,1)*1e5
 
    if vehicleOn then
        if not lastVehicleOn or not lastDown then
            lastDown = tick()
        end
        if not lastVehicleOn then
            local ray = rays.rprop
            for a,ray in pairs({rays.rprop,rays.lprop}) do
                if ray.h and -ray.d.Y < 5 then
                    local x = a==1 and 1 or -1
                    local am = 0
                    for i=math.pi/4*x,x*(-math.pi-math.pi/4),x*-math.pi/8 do
                        local p = Instance.new("Part",m)
                        p.Anchored = true
                        p.Transparency = 1
                        p.CanCollide = false
                        p.FormFactor = "Custom"
                        p.Size = Vector3.new()
                        local smoke = Instance.new("Smoke",p)
                        smoke.Color = Color3.new(.5,.5,.5)--Color3.new(lerp(.5,ray.h.Color.r,.8),lerp(.5,ray.h.Color.g,.8),lerp(.5,ray.h.Color.b,.8))
                        smoke.Size = .1
                        smoke.Opacity = .04
                        smoke.RiseVelocity = 10
                        p.CFrame = CFrame.new(ray.r,ray.r+mcfr.lookVector*Vector3.new(1,0,1))*CFrame.Angles(math.pi/2,0,i+.2*x)*CFrame.new(0,2.5,0)
                        local add = am/13
                        if add > .5 then
                            add = 1-add
                        end 
                        am = am + 1
                        game.Debris:AddItem(p,.75+add*14)
                    end
                end
            end
        end
        local ovel = main.CFrame:vectorToObjectSpace(main.Velocity)
        
        local xrot = math.max(-1,math.min(1,ovel.Z/maxSpeed*2))*.25
        local zrot = math.max(-1,math.min(1,-ovel.X/maxSpeed*2))*.25
        local xadd,zadd = 0,0
        if rays.tip.h and dhit and (-rays.tip.d.Y < hoverHeight+10 or -diff.Y < hoverHeight+10) then
            local ydiff = rays.tip.r.Y-dray.Y
            --print(ydiff)
            xadd = math.max(-.75,math.min(.75,math.asin(ydiff/11.5)))
            xrot = xrot*math.cos(xadd) + xadd
            --print("x",movdir,xadd)
            movdir = CFrame.Angles(xadd,0,0)*movdir
            --print("x2",movdir)
        end
 
        if rays.lprop.h and rays.rprop.h and rays.lprop.h == rays.rprop.h and (-rays.lprop.d.Y < hoverHeight+10 or -rays.rprop.d.Y < hoverHeight+10) then
            local xdiff = rays.rprop.r.Y-rays.lprop.r.Y
            zadd = math.max(-.75,math.min(.75,math.asin(xdiff/22)))
            zrot = zrot*math.cos(zadd) + zadd
            --print("z",movdir,zadd)
            movdir = CFrame.Angles(0,0,zadd)*movdir
            --print("z2",movdir)
        end
        --[[
        if movdir.magnitude > .001 then
            local p = Instance.new("Part",m)
            p.Anchored = true
            p.FormFactor = "Custom"
            p.CanCollide = false
            p.FrontSurface = "Hinge"
            p.Size = Vector3.new(1,1,3)
            p.CFrame = CFrame.new(head.Position+Vector3.new(0,5,0),head.Position+Vector3.new(0,5,0)+CFrame.new(cam.CoordinateFrame.p,cam.CoordinateFrame.p+cam.CoordinateFrame.lookVector*Vector3.new(1,0,1)):vectorToWorldSpace(movdir))
            game.Debris:AddItem(p,.1)
        end
        ]]
        local windup = math.min(1,(tick()-lastDown))
 
        if windup < .25 then
            moving = false
        elseif windup < 1 then
            bgyro.maxTorque = Vector3.new(1,1,1)*50000
        end
        local ldir = windup >= .25 and cam.CoordinateFrame.lookVector*Vector3.new(1,0,1) or main.CFrame.lookVector*Vector3.new(1,0,1)
        bgyro.cframe = CFrame.new(main.CFrame.p,main.CFrame.p+ldir)*CFrame.Angles(xrot,0,zrot)
        proplw.C1 = proplw.C1 * CFrame.Angles(0,windup*-(.8+main.Velocity.magnitude/maxSpeed*.75)*(moving and 1.5 or 1)+math.random()*.05,0)
        proprw.C1 = proprw.C1 * CFrame.Angles(0,windup*(.8+main.Velocity.magnitude/maxSpeed*.75)*(moving and 1.5 or 1)+math.random()*.05,0)
 
        local odir = main.CFrame:vectorToObjectSpace(bgyro.cframe.lookVector)
        firer.Enabled = ovel.Z < -1 or odir.X < -.1
        firel.Enabled = ovel.Z < -1 or odir.X > .1
        bvel.maxForce = Vector3.new(70000,-diff.Y < hoverHeight+1+math.max(0,-main.Velocity.Y*delta*40) and 400000 or 40000,70000)
 
        windup = windup + main.Velocity.magnitude/maxSpeed*.35*(moving and 1.5 or 1)
        ps.Volume = windup*.07
        ps2.Volume = ps.Volume
        ps.Pitch = ps.Pitch
        ps2.Pitch = ps2.Pitch
    else
        if lastVehicleOn or not lastUp then
            lastUp = tick()
        end
        firel.Enabled,firer.Enabled = false,false
        bvel.maxForce = Vector3.new(40000,-diff.Y > 1 and 1e5 or 0,40000)
        vel = Vector3.new(0,-100-((tick()-lastUp)*9.81*10)^2,0)
        bgyro.cframe = clerp(bgyro.cframe,CFrame.new(mpos,mpos+mcfr.lookVector*Vector3.new(1,0,1)),.2)
 
        local windup = 1-math.min(1,(tick()-lastUp)/5)
        vel = Vector3.new(0,(1-windup)*-25,0)
        proplw.C1 = proplw.C1 * CFrame.Angles(0,-.8*windup,0)
        proprw.C1 = proprw.C1 * CFrame.Angles(0,.8*windup,0)
        ps.Volume = windup*.07
        ps2.Volume = ps.Volume
        ps.Pitch = ps.Pitch
        ps2.Pitch = ps2.Pitch
 
        moving = false
 
        if tick()-lastUp > 2 then
            hval.Value = math.min(100,hval.Value + .1)
        end
    end  
 
    if moving then
        local od = movdir
        movdir = CFrame.new(cam.CoordinateFrame.p,cam.CoordinateFrame.p+cam.CoordinateFrame.lookVector*Vector3.new(1,0,1)):vectorToWorldSpace(movdir*Vector3.new(1,.25,1))
        
        if movdir.magnitude < 0.001 or tostring(movdir):lower():find("nan") then
            moving = false
            --print(od)
        else
            movdir = movdir.unit
            acc = acc + delta*70
            spd = math.min(maxSpeed,spd + acc)
            vel = vel + movdir*spd
        end
    end
    if not moving then
        spd = 0
        acc = 0
    end
 
    bvel.velocity = vel
    if jump  then
        if vehicleOn and -diff.Y < hoverHeight + 1 and tick()-lastjump > 2 then
            tor.Velocity = tor.Velocity + Vector3.new(0,110,0)
            lastjump = tick()
        end
        jump = false
    end
    lightr.Range = 5+math.sin(tick()*50)
    lightl.Range = 5+math.cos(tick()*50)
 
    lightr.Color = firer.Color
    lightl.Color = firel.Color
 
    lightr.Enabled = firer.Enabled
    lightl.Enabled = firel.Enabled
    lastVehicleOn = vehicleOn
end)
 
char.AncestryChanged:connect(function()
    m:Destroy()
    scon:disconnect()
end)
 
end
return _G.mantisReload()
 
