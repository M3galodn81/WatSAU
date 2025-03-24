SMODS.Joker{
    key = 'concvssion',
    loc_txt = {
        
    },
    atlas = 'watsau_jokers', 
    pos = {x = 7, y = 0}, 
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

    calculate = function(self,card,context)
        if context.joker_main then
            local add_mult = mult % card.ability.extra.base
            local add_chips = hand_chips % card.ability.extra.base

            local mult_mod = 0
            local chip_mod = 0

            if add_mult > 0 then
                mult_mod = card.ability.extra.base - add_mult
            else
                mult_mod = 0
            end

            if add_chips > 0 then
                chip_mod = card.ability.extra.base - add_chips
            else
                chip_mod = 0
            end

            return {
                mult_mod = mult_mod,
                chip_mod = chip_mod
            }

        end

        if context.final_scoring_step and context.cardarea == G.play then
            
        end

    end
}