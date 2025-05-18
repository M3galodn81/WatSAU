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

            if Talisman then
                print(mult)
                print(card.ability.extra.base)
                print(mult % card.ability.extra.base)
                print("FOR THE LOVE OF JIMBO PLS WORK")
                add_mult = mult % card.ability.extra.base
                add_chips = hand_chips % card.ability.extra.base
                print("Talisman")
            else
                add_mult = mult % card.ability.extra.base
                add_chips = hand_chips % card.ability.extra.base
            end

            local mult_modi = 0
            local chip_mod = 0

            if add_mult > 0 then
                mult_modi = card.ability.extra.base - add_mult
            else
                mult_modi = 0
            end

            if add_chips> 0 then
                chip_modi = card.ability.extra.base - add_chips
            else
                chip_modi = 0
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