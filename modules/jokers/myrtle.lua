SMODS.Joker{
    key = 'myrtle',
    loc_txt = {
        name = 'Myrtle',
        text = {
            'Earn {C:money}10${}',
            'at end of round'
        }
    },
    atlas = 'watsau_jokers',                       --atlas' key
    pos = {x = 3, y = 0},                   --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    rarity = 2,                             --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 5,                               --cost
    unlocked = true,                        --where it is unlocked or not: if true, 
    discovered = false,                     --whether or not it starts discovered
    blueprint_compat = false,               --can it be blueprinted/brainstormed/other
    eternal_compat = true,                  --can it be eternal
    perishable_compat = true,               --can it be perishable
    
    config = { 
        extra = {
        }
    },

    loc_vars = function(self,info_queue,center)
    end,

    calculate = function(self,card,context)
        if context.joker_main then
            return {
                card = card,
            }
        end
    end,

    calc_dollar_bonus = function(self,card) --for gain money at end of the round
        return 10
    end,
}
