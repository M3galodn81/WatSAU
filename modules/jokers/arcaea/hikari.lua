SMODS.Joker{
    key = 'hikari',
    atlas = 'watsau_jokers',                    
    pos = {x = 3, y = 0},                   
    rarity = "watsau_stellar"                          
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

    end,

    calculate = function(self,card,context)
        if context.individual and context.cardarea == G.play then
            -- if boss is Fracture Ray
            if G.GAME.blind.name == 'bl_watsau_final_distorted_fate' then
                card.ability.extra.boss_active = true
            end

            -- for i=1, #G.play.cards do
            --     local rank = context.other_card:get_id()
            --     if rank <= 7 then
            --         return {
            --             chips = (rank*3);
            --         }
            --     end
            -- end

        end
    end,


}
