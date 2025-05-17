SMODS.Joker{
    key = 'surtr',
    loc_txt = {
        name = 'Surtr',
        text = {
            'Change every Steel/Stone/Reinforced',
            '/Gold Card into Molten Cards, otherwise',
            'change it into Burnt Cards',
            'retreats itself after transforming #1# cards'
        }
    },
    atlas = 'watsau_jokers',                      
    pos = {x = 5, y = 0},                   
    rarity = 4,                             
    cost = 10,                              
    unlocked = true,                         
    discovered = false,                     
    blueprint_compat = false,               
    eternal_compat = false,                  
    perishable_compat = true,               
    
    config = { 
        extra = {
            HP = 79,
        }
    },

    loc_vars = function(self,info_queue,center)
        info_queue[#info_queue+1] = G.P_CENTERS.m_watsau_molten
        info_queue[#info_queue+1] = G.P_CENTERS.m_watsau_burnt
        return {
            vars = {
                center.ability.extra.HP,
            }
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
                
                -- Check if card is not Molten / Burnt
                if (v.config.card ~= G.P_CENTERS.m_watsau_molten or v.config.card ~= G.P_CENTERS.m_watsau_burnt ) and not v.debuff then
                    unmelted[#unmelted+1] = v
                    -- print(v.config.card)
                    -- If Steel/Stone/Reinforced/Gold
                    if  v.config.center.key == 'm_steel' or
                        v.config.center.key == 'm_stone' or
                        v.config.center.key == 'm_gold' or
                        v.config.center.key == 'm_watsau_reinforced' then
                        
                        v:set_ability(G.P_CENTERS.m_watsau_molten, nil, true) --change to Molten
                        G.E_MANAGER:add_event(Event({
                            func = function()
                                v:juice_up()
                                return true
                            end
                        })) 
                    end

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
                card.ability.extra.HP = card.ability.extra.HP - #unmelted
                return {
                    message = {"HA"},
                    colour = G.C.MULT,
                    card = card
                }
            end

        end
    end,

}
