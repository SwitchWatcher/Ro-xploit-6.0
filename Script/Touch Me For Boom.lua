local Player = game.Players.LocalPlayer
local a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z
local debounce = false
function Generate(parents)
	if parents ~= nil then
		a=Instance.new("SurfaceGui",parents)
		a.Adornee = parents
		a.CanvasSize = Vector2.new(100,100)
		a.ToolPunchThroughDistance = 100
		b=Instance.new("TextButton",a)
		b.Text = "Touch Me For Robux"
		b.TextWrapped = true
		b.BorderColor3 = Color3.new(0,1,0)
		b.TextColor3 = Color3.new(0,1,0)
		b.BackgroundColor3 = Color3.new(0,0.25,0)
		b.Size = UDim2.new(1,-10,1,-10)
		b.Position = UDim2.new(0,5,0,5)
		parents.Touched:connect(function(otherPart) 
			if game.Players:FindFirstChild(otherPart.Parent.Name) ~= nil then
				if debounce == false then
					debounce = true
					c = Instance.new("ForceField",parents.Parent) 
					e = Instance.new("Sound",parents)
					e.SoundId = "rbxassetid://159490394"
					e:Play()
					d = Instance.new("Explosion",workspace) 
					d.Position = parents.Position
					d.BlastPressure = 4000000
					d.BlastRadius = 40000000
					d.ExplosionType = 2
					d.DestroyJointRadiusPercent = 1
					wait()
					c:Remove()
					debounce = false
				end
			end
		end)
	end
end

if Player ~= nil then
	if Player.Character ~= nil then
		if Player.Character:FindFirstChild("Torso") then
			Generate(Player.Character:FindFirstChild("Torso"))
		end
	end
end
