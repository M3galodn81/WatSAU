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
    atlas = 'watsau_jokers', --atlas' key
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    rarity = 4, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 100, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = false, --can it be eternal
    perishable_compat = false, --can it be perishable
    
    config = { 
        extra = {
            Xmult = 100 --configurable value
        }
    },
    loc_vars = function(self,info_queue,center)
        info_queue[#info_queue+1] = G.P_CENTERS.j_perkeo --adds "Joker"'s description next to this card's description
        return {vars = {center.ability.extra.Xmult}} --#1# is replaced with card.ability.extra.Xmult
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

    calc_dollar_bonus = function(self,card) --for gain money at end of the round
        return 123
    end,
}
