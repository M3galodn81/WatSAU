SMODS.Joker{
    key = 'concvssion',
    loc_txt = {
        
    },
    atlas = 'watsau_jokers', 
    pos = {x = 1, y = 1}, 
    rarity = 4, 
    cost = 20, 
    unlocked = true, 
    discovered = true, 
    blueprint_compat = true, 
    eternal_compat = false, 
    perishable_compat = false, 
    
    config = { 
        extra = {
            base = 10
        }
    },
    loc_vars = function(self,info_queue,center)
        return {vars = {center.ability.extra.base}}
    end,

    -- 
    calculate = function(self,card,context)
        if context.joker_main then
        
            local add_mult = 0
            local add_chips = 0

            local mult_modi = 0
            local chip_mod = 0

            if Talisman then
                add_mult = to_big(mult) % card.ability.extra.base
                add_chips = to_big(hand_chips) % card.ability.extra.base

                mult_modi = (add_mult > to_big(0)) and (card.ability.extra.base - add_mult) or 0
                chip_modi = (add_chips > to_big(0)) and (card.ability.extra.base - add_chips) or 0

            else
                add_mult = mult % card.ability.extra.base
                add_chips = hand_chips % card.ability.extra.base

                mult_modi = (add_mult > 0) and (card.ability.extra.base - add_mult) or 0
                chip_modi = (add_chips > 0) and (card.ability.extra.base - add_chips) or 0
            end

            return {
                mult_mod = mult_modi,
                chip_mod = chip_modi,

                card = card,
                message = 'Concvssion',
                colour = G.C.BLUE,
            }

        end

    end
}