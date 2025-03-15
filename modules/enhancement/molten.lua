SMODS.Enhancement{
    key = "molten",
    loc_txt = {
        name = "Molten Card",
        text = {
            '{X:chips,C:white}X4{} Chips and {X:mult,C:white}X4{} Mult',
            'then destroys itself',
            'after this card',
            'is played 4 times'
        }
    },
    atlas = "watsau_jokers",
    pos = { 
        x = 4, 
        y = 8
    },
    shader = "watsau_molten",
    config = {
        extra = {
            x_mult = 4,
            x_chips = 4, 
        }
    },
    
    calculate =  function (self, card, context)
        if context.main_scoring and context.cardarea == G.play then
            return {
                Xmult = card.ability.extra.x_mult,
                x_chips = card.ability.extra.x_chips,
            }
        end

        if context.destroy_card and context.cardarea == G.play then
            return{
                remove = true
            }
        end

    end,
    loc_vars = function (self, info_queue, card)
        return {
            vars = {
                card.ability.extra.x_mult,
                card.ability.extra.x_chips,
            }
        }
    end,

    in_shop = false,
    weight = 7,
}