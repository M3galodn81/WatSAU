SMODS.Enhancement{
    key = "burnt",
    loc_txt = {
        name = "Burnt Card",
        text = {
            '{X:chips,C:white}X#1#{} Chips and {X:mult,C:white}X#2#{} Mult',
            'then destroys itself after',
            'this card is played',
            -- '{C:inactive,s:0.8}[Currently, this card is played #3# times]{}'
        }
    },
    atlas = "watsau_jokers",
    pos = { 
        x = 1, 
        y = 8
    },
    -- shader = "watsau_molten",
    config = {
        extra = {
            x_mult = 2,
            x_chips = 2, 
            played_count = 0,
        }
    },
    
    calculate =  function (self, card, context)
        if context.main_scoring and context.cardarea == G.play then
            if card.ability.extra.played_count == nil then
                card.ability.extra.played_count = 0
            end

            card.ability.extra.played_count = card.ability.extra.played_count + 1
            return {
                Xmult = card.ability.extra.x_mult,
                x_chips = card.ability.extra.x_chips,
                
            }
        end

        if card.ability.extra.played_count >= 1 and context.destroy_card and context.cardarea == G.play then
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
                card.ability.extra.played_count,
            }
        }
    end,

    in_shop = false,
    weight = 7,
}