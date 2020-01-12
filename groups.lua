Groups = {}

function AddGroup(groupName, ...)
    if ... == nil then return end
    Groups[groupName]= {}
    for k, v in pairs({...}) do
       table.insert(Groups[groupName], v)
       table.insert(v.groups,groupName)
    end
end

function IsPlayerInGroup(player,groupName)
    if PlayerData[player] == nil or groupName == nil then return end
    print(Groups[groupName])
    for k,v in pairs(Groups[groupName]) do
        if PlayerData[player].job == v then return true end
    end
    return false
end

AddEvent("OnPackageStart", function()
    AddGroup("Administration",Mayor,Cops)
    -- Add your custom groups here ...
    
    
    print("Groups created...")
end)








