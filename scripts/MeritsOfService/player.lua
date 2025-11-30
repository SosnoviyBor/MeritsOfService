local self = require("openmw.self")

require("scripts.MeritsOfService.utils.consts")

local completedQuests = {
    -- factionKey = {
    --     questId_1 = true,
    --     questId_2 = true,
    -- },
}

local function onQuestUpdate(questId, stage)
    -- check if quest is completed
    -- check quest's name
end

local function onSave()
    return completedQuests
end

local function onLoad(saveData)
    completedQuests = saveData
end

return {
    engineHandlers = {
        onQuestUpdate = onQuestUpdate,
        onSave = onSave,
        onLoad = onLoad,
    },
}