-- (Discord - Impossible Glass Bridge Obby)
local DiscordLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/VenyxScript/Discord/main/UI/main"))()

local Window = DiscordLib:Window("Discord - Impossible Glass Bridge Obby (Squid Game)")

local server1 = Window:Server("Script", "")

local channel1 = server1:Channel("Bridge")

channel1:Seperator()

channel1:Button("Show Correct Path", function()
for i,v in pairs(game:GetService("Workspace")["Glass Bridge"].GlassPane:GetChildren()) do
    if v:GetChildren()[1]:FindFirstChild("TouchInterest") == nil and v:GetChildren()[1].Transparency ~= 1 then
        v:GetChildren()[1].Color = Color3.fromRGB(0,255,0)
        v:GetChildren()[2].Color = Color3.fromRGB(255,0,0)
    else
        v:GetChildren()[2].Color = Color3.fromRGB(0,255,0)
        v:GetChildren()[1].Color = Color3.fromRGB(255,0,0)
    end
end
DiscordLib:Notification("Discord", "Correct Bridge Is Green, Incorrect Is Red!", "Alright!")
end)

channel1:Seperator()
