local ss = game:GetService("ServerStorage")
local mainscript = ss:FindFirstChild("WeaponScript")

local function createtool(plr, dmg, rng, kb, name)
    local tool = Insance.new("Tool", plr.Backpack)
    local dval = Instance.new("IntValue", tool)
    local rval = Instance.new("IntValue", tool)
    local kval = Instance.new("IntValue", tool)
    local sc = mainscript:Clone()
    tool.Name = name
    dval.Name = damageValue
    rval.Name = rangeValue
    kval.Name = knockbackValue
    dval.Value = dmg
    rval.Value = rng
    kval.Value = kb
    sc.Parent = tool
end

local attributes = {
    ["Sword"] = {
        ["damage"] = 35,
        ["range"] = 15,
        ["knockback"] = 75
    },
    ["Bat"] = {
        ["damage"] = 22.5,
        ["range"] = 18,
        ["knockback"] = 100
    },
    ["Hammer"] = {
        ["damage"] = 25,
        ["range"] = 12.5,
        ["knockback"] = 50
    },
    ["Clown Hammer"] = {
        ["damage"] = 20,
        ["range"] = 20,
        ["knockback"] = 200
    },
}

for i,v in pairs(attributes) do
    local dmg = attributes[i].damage
    local rng = attributes[i].range
    local kb = attributes[i].knockback
    local name = attributes[i]
    createtool(plr, dmg, rng, kb, name)
end
