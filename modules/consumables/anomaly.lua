
SMODS.ConsumableType{
    atlas = "watsau_anomaly",
    key = "Anomaly",
    primary_colour = HEX("753753"),
    secondary_colour = HEX("159159"),
    collection_rows = {6,6,6},
    shop_rate = 0,
    loc_txt = {

        collection = "Anomaly Event",
        name = "Anomaly",

        undiscovered = { -- description for undiscovered cards in the collection
            name = 'Unknown Event',
            text = { 'Find this event', 'during a run' },
        },
    },
}


-- Phigros
-- Destruction
SMODS.Consumable{
    key = "",
    set = "Anomaly",
    atlas = "watsau_anomaly",
    cost = 3,
    unlocked = true,
    discovered = false,

    keep_on_use = function (self, card)
        return false
    end

    use = function (self, card, area, copier)
        -- x10 base chips on 3,2,Aces
        -- Makes the showdown blind to be Mazarine's End 
        return
    end
}

-- Rebirth
SMODS.Consumable{
    key = "",
    set = "Anomaly",
    atlas = "watsau_anomaly",
    cost = 3,
    unlocked = true,
    discovered = false,

    keep_on_use = function (self, card)
        return false
    end

    use = function (self, card, area, copier)
        -- Gain Geopelia Joker , buff Mr Bones
        -- Makes blind requirement X4 
        -- Makes the showdown blind to be Distored Fate
        return
    end
}

-- Arcaea

-- Light
SMODS.Consumable{
    key = "",
    set = "Anomaly",
    atlas = "watsau_anomaly",
    cost = 3,
    unlocked = true,
    discovered = false,

    keep_on_use = function (self, card)
        return false
    end

    use = function (self, card, area, copier)
        -- Gain Hikari Joker
        -- Makes every diamond card have glass edition
        return
    end
}

-- Conflict
SMODS.Consumable{
    key = "",
    set = "Anomaly",
    atlas = "watsau_anomaly",
    cost = 3,
    unlocked = true,
    discovered = false,

    keep_on_use = function (self, card)
        return false
    end

    use = function (self, card, area, copier)
        -- Gain Tairitsu Joker
        -- Makes every spade card have glass edition
        return
    end
}