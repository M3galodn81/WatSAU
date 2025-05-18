SMODS.Joker{
    key = 'geopelia',
    atlas = 'watsau_jokers',                    
    pos = {x = 3, y = 1},                   
    rarity = "watsau_stellar",                       
    cost = 40,                              
    unlocked = true,                        
    discovered = false,                     
    blueprint_compat = false,              
    eternal_compat = true,                 
    perishable_compat = false,               
    
    config = { 
        extra = {
            boss_active = false,
            is_debuffed = false,
            x_mult = 8,

        }
    },

    loc_vars = function(self,info_queue,center)
        info_queue[#info_queue+1] = {set = "Other" , key = "tooltip_df" }
        return {vars = {center.ability.extra.x_mult}} 
    end,

    calculate = function(self,card,context)
        if context.individual and context.cardarea == G.play then
            -- if boss is Distorted Fate
            if G.GAME.blind.name == 'bl_watsau_final_distorted_fate' then
                card.ability.extra.boss_active = true
            end

            if card.ability.extra.boss_active then
                --event 
                
                --make all editions of everything into Fated
            end
        end

        if context.joker_main then
            return {
                x_mult = card.ability.extra.x_mult
            }
        end

    end,


}
