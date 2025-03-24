SMODS.Joker{
    key = 'test_joker',
    loc_txt = {
        name = 'Test Joker',
        text = {
            'When Blind is selected,',
            'creates a {C:attention}Perkeo{}',
            '{X:mult,C:white}X#1#{} Mult',
            'Gain {C:money}123${} at end of round'
        }
    },
    atlas = 'watsau_jokers', 
    pos = {x = 0, y = 0}, 
    rarity = 4, 
    cost = 100,
    unlocked = true, 
    discovered = true, 
    blueprint_compat = true, 
    eternal_compat = false, 
    perishable_compat = false, 
    config = { 
        extra = {
            Xmult = 100 
        }
    },
    loc_vars = function(self,info_queue,center)
        info_queue[#info_queue+1] = G.P_CENTERS.j_perkeo 
        return {vars = {center.ability.extra.Xmult}} 
    end,

    calculate = function(self,card,context)
        if context.joker_main then
            return {
                card = card,
                Xmult_mod = card.ability.extra.Xmult,
                message = 'X' .. card.ability.extra.Xmult,
                colour = G.C.MULT
            }
        end

        if context.setting_blind and #G.jokers.cards + G.GAME.joker_buffer < G.jokers.config.card_limit then
            local new_card = create_card('Perkeo', G.jokers, nil,nil,nil,nil,'j_perkeo')
            new_card:add_to_deck()
            G.jokers:emplace(new_card)
        end
    end,

    calc_dollar_bonus = function(self,card) 
        return 123
    end,
}
