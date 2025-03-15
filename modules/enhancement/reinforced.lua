SMODS.Enhancement{
    key = "reinforced",
    loc_txt = {
        name = "Reinforced",
        text = {
            '{C:mult}X4{} Mult',
            'when scored'
        }
    },
    atlas = "watsau_jokers",
    pos = { 
        x = 3, 
        y = 8
    },
    -- shader = "",
    config = {
        extra = {
            x_mult = 4,
        }
    },
    
    calculate =  function (self, card, context)
        if context.main_scoring and context.cardarea == G.play then
            return {
                Xmult = card.ability.extra.x_mult
            }
        end
    end,
    loc_vars = function (self, info_queue, card)
        return {
            vars = {
                card.ability.extra.x_mult,
            }
        }
    end,

    in_shop = true,
    weight = 7,
}