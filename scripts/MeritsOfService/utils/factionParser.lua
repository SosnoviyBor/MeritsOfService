local core = require("openmw.core")

local factions = {}

local function populateFactions()
    for _, record in ipairs(core.factions.records) do
        -- if factions[record.name] then
        --     print("Duplicate faction record! " .. record.name)
        -- end

        local attrs = {}
        for _, attr in ipairs(record.attributes) do
            table.insert(attrs, attr)
        end

        local skills = {}
        for _, skill in ipairs(record.skills) do
            table.insert(skills, skill)
        end

        if next(attrs) or next(skills) then
            factions[record.name] = {
                attributes = attrs,
                skills = skills
            }
        end
    end
end

populateFactions()
return factions
