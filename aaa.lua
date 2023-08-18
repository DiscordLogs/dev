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
    local tool = Insance.new("Tool", plr.Backpack)
    local dmg = attributes[i].damage
    local rng = attributes[i].range
    local kb = attributes[i].knockback
    tool.Name = attributes[i]
end


