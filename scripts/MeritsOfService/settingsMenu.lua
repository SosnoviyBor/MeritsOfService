local I = require('openmw.interfaces')

I.Settings.registerPage {
    key = 'MeritsOfService',
    l10n = 'MeritsOfService_settings',
    name = 'page_name',
    description = 'page_description',
}

I.Settings.registerGroup {
    key = 'SettingsShelfControl_buyable',
    page = 'ShelfControl',
    l10n = 'ShelfControl_settings',
    name = 'buyable_groupName',
    description = 'buyable_groupDescription',
    permanentStorage = true,
    order = 1,
    settings = {
        {
            key = 'supress',
            name = 'supressBuyable_name',
            renderer = 'checkbox',
            default = true,
        },
        {
            key = 'minDisposition',
            name = 'buyableMinimumDisposition_name',
            description = 'buyableMinimumDisposition_description',
            renderer = 'number',
            integer = true,
            default = 101,
            min = 1,
            max = 101,
        },
    }
}