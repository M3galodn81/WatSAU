SMODS.Joker{
    key = 'burn',
    loc_txt = {
        name = 'Burn',
        text = {
            'Burn every {C:attention}non-metallic{} cards',
            'into {C:attention}Burnt Cards{}'
        }
    },
    atlas = 'watsau_jokers',                   
    pos = {x = 6, y = 0},                   
    rarity = 3,                            
    cost = 7,                            
    unlocked = true,                       
    discovered = false,                     
    blueprint_compat = false,              
    eternal_compat = true,                 
    perishable_compat = true,              
    
    config = { 
        extra = {
        }
    },

    loc_vars = function(self,info_queue,center)
        info_queue[#info_queue+1] = G.P_CENTERS.m_watsau_burnt
        info_queue[#info_queue+1] = {set = "Other" , key = "tooltip_non_metal" }
        return {
        }
    end,

    calculate = function(self,card,context)
        if context.joker_main then
            return {
                card = card,
            }
        end

        if context.before and context.cardarea == G.jokers and not context.blueprint then
            local unmelted = {}
            for k, v in ipairs(context.full_hand) do
                -- print("loop works")
                -- Check if card is not Molten / Burnt
                if (v.config.card ~= G.P_CENTERS.m_watsau_molten or v.config.card ~= G.P_CENTERS.m_watsau_burnt ) and not v.debuff then
                    unmelted[#unmelted+1] = v
                    -- print("Inside MB check")

                    if  v.config.center.key == 'm_bonus' or
                        v.config.center.key == 'm_lucky' or
                        v.config.center.key == 'm_wild' or
                        v.config.center.key == 'm_mult' or
                        v.config.center.key == 'm_glass' or
                        v.config.center.key == 'c_base'    then

                        v:set_ability(G.P_CENTERS.m_watsau_burnt, nil, true)
                        G.E_MANAGER:add_event(Event({
                            func = function()
                                v:juice_up()
                                return true
                            end
                        })) 
                    end
                end
            end

            if #unmelted > 0 then 
                return {
                    message = "Burn!",
                    colour = G.C.FILTER,
                    card = card
                }
            end

        end
    end,

}
