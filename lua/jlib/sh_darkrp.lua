if not DarkRP then return end

local meta = FindMetaTable("Player")

function meta:GetMoney()
    return self:getDarkRPVar("money")
end

function meta:GetSalary()
    return self:getDarkRPVar("salary")
end

function meta:GetJob()
    return self:getDarkRPVar("job")
end

function meta:GetGunLicense()
    return self:getDarkRPVar("HasGunlicense")
end

function meta:GetArrested()
    return self:getDarkRPVar("Arrested")
end

function meta:GetWanted()
    return self:getDarkRPVar("wanted")
end

function meta:GetWantedReason()
    return self:getDarkRPVar("wantedReason")
end