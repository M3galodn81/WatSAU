SMODS.Joker{
    key = 'haze',
    loc_txt = {
        name = 'Haze',
        text = {
            'If a {C:attention}poker hand played{} is a {C:attention}High Card{},',
            'creates a random {C:blue}Spectral{} Card',
            'and gives {X:mult,C:white}X#1#{} Mult, otherwise it will',
            '{C:attention}destroy{} the {C:attention}scored played hand{}',
        }
    },
    atlas = 'watsau_jokers', --atlas' key
    pos = {x = 1, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    rarity = 4, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 6, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = false, --can it be blueprinted/brainstormed/other
    eternal_compat = false, --can it be eternal
    perishable_compat = false, --can it be perishable
    
    config = { 
        extra = {
            Xmult = 2,--configurable v
        }
    },
    loc_vars = function(self,info_queue,center)
        return {vars = {center.ability.extra.Xmult}} --#1# is replaced with card.ability.extra.Xmult
    end,

    calculate = function(self,card,context)
        -- scoring
        if context.joker_main then
            if context.scoring_name == "High Card" then
                return {
                    card = card,
                    Xmult_mod = card.ability.extra.Xmult,
                    message = 'X' .. card.ability.extra.Xmult .. ' Mult',
                    colour = G.C.MULT
                }
            end
            
        end

        -- check if high card
        if context.before and next(context.poker_hands['High Card']) and not context.blueprint then
            if context.scoring_name == "High Card" then
                if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
                    card = create_card('Spectral',G.consumeables, nil, nil, nil, nil, nil, '8ba')
                    card:add_to_deck()
                    G.consumeables:emplace(card)
                else
                    return {
                        message = 'No Room!',
                        colour = G.C.FILTER     
                    }
                end 
            else 
                    return {
                        message = 'Invalid!', colour = G.C.FILTER 
                    }
            end
        end

        -- destroy cards
        if context.destroy_card and context.cardarea == G.play and not context.blueprint then
            return{
                remove = true
            }
        end
    end,

    -- calc_dollar_bonus = function(self,card) --for gain money at end of the round
    --     return 123
    -- end,
}