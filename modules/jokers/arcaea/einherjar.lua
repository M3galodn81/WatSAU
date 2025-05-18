-- Arcaea
SMODS.Joker{
    key = 'einherjar',
    atlas = 'watsau_jokers',                 
    pos = {x = 0, y = 4},                  
    rarity = 3,                             
    cost = 5,                             
    unlocked = true,                        
    discovered = false,                     
    blueprint_compat = false,               
    eternal_compat = true,                  
    perishable_compat = true,               

    config = { 
        extra = {
            x_mult = 1
        }
    },

    loc_vars = function(self,info_queue,center)
        return{
            vars = {
                center.ability.extra.x_mult
            }
        }    
    end,

    -- TODO: Make not destroy eternal
    calculate = function(self,card,context) 
        if context.setting_blind then
            for i = 1, #G.jokers.cards do
                if G.jokers.cards[i].ability.name ~= 'j_watsau_einherjar' then
                    
                    G.E_MANAGER:add_event(Event({func = function()
                        G.GAME.joker_buffer = 0
                        card.ability.extra.x_mult = card.ability.extra.x_mult + 0.2 
                        card:juice_up(0.8, 0.8)
                        G.jokers.cards[i]:start_dissolve({HEX("57ecab")}, nil, 1.6)
                        play_sound('slice1', 0.96+math.random()*0.08)
                    return true end }))
                end
            end
        end

        if context.joker_main then
            if card.ability.extra.x_mult > 1 then
                return {
                    Xmult_mod = card.ability.extra.x_mult,
                    message = 'X' .. card.ability.extra.x_mult .. ' Mult',
                    colour = G.C.MULT,
                    card = card,
                }
            end
        end

    end,

    set_badges = function(self, card, badges)

    end,

}