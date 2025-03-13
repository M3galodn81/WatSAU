--- STEAMODDED HEADER
--- MOD_NAME: Surtr Mod
--- MOD_ID: SurtrMod
--- MOD_AUTHOR: [M3galodn81]
--- MOD_DESCRIPTION: Peak Pain
--- PREFIX: surtr
----------------------------------------------
------------ MOD CODE -------------------------

------------------vars------------------------
SMODS.optional_features.cardareas.unscored = true
----------------------------------------------


SMODS.Atlas{
    key = 'jokers', --atlas key
    path = 'jokers.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

-- test joker
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
    atlas = 'jokers', --atlas' key
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

--haze
SMODS.Joker{
    key = 'haze',
    loc_txt = {
        name = 'Haze',
        text = {
            'If a {C:attention}poker hand played{} is a {C:attention}High Card{},',
            'creates a random {C:blue}Spectral{} Card',
            'and gives {X:mult,C:white}X#1#{} Mult',
            'otherwise it will {C:attention}destroy{} the {C:attention}played hand{}',
        }
    },
    atlas = 'jokers', --atlas' key
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

--Der Richter
SMODS.Joker{
    key = 'der_richter',
    loc_txt = {
        name = 'Der Richter',
        text = {
            'Balance {C:chips}Chips{} and {C:mult}Mult{}',
            'when this joker is triggered'
        }
    },
    atlas = 'jokers', --atlas' key
    pos = {x = 2, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    rarity = 4, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 100, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = false, --can it be eternal
    perishable_compat = false, --can it be perishable
    
    config = { 
    },
    loc_vars = function(self,info_queue,center)
    end,

    calculate = function(self,card,context)

        if context.joker_main then
            -- total = hand_chips + mult
            -- chip_balanced =  math.floor(total/2)
            -- mult_balanced = math.floor(total/2)

            -- print("After Cal of total")
            -- print(hand_chips .. "chips")
            -- print(mult       .. "mult")
            -- print(total      .. "total")
            -- print(chip_balanced .. "x" ..mult_balanced)

            -- update_hand_text({delay = 0}, {mult = mult_balanced, chips = chips_balanced})
            -- -- Plasma Animation
            -- G.E_MANAGER:add_event(Event({
            --     func = (function()
                
            --         play_sound('gong', 0.94, 0.3)
            --         play_sound('gong', 0.94*1.5, 0.2)
            --         play_sound('tarot1', 1.5)
            --         ease_colour(G.C.UI_CHIPS, {0.8, 0.45, 0.85, 1})
            --         ease_colour(G.C.UI_MULT, {0.8, 0.45, 0.85, 1})
                
            --         G.E_MANAGER:add_event(Event({
            --             trigger = 'after',
            --             blockable = false,
            --             blocking = false,
            --             delay =  4.3,
            --             func = (function() 
            --                     ease_colour(G.C.UI_CHIPS, G.C.BLUE, 2)
            --                     ease_colour(G.C.UI_MULT, G.C.RED, 2)
            --                 return true
            --             end)
            --         }))
            --         G.E_MANAGER:add_event(Event({
            --             trigger = 'after',
            --             blockable = false,
            --             blocking = false,
            --             no_delete = true,
            --             delay =  6.3,
            --             func = (function() 
            --                 G.C.UI_CHIPS[1], G.C.UI_CHIPS[2], G.C.UI_CHIPS[3], G.C.UI_CHIPS[4] = G.C.BLUE[1], G.C.BLUE[2], G.C.BLUE[3], G.C.BLUE[4]
            --                 G.C.UI_MULT[1], G.C.UI_MULT[2], G.C.UI_MULT[3], G.C.UI_MULT[4] = G.C.RED[1], G.C.RED[2], G.C.RED[3], G.C.RED[4]
            --                 return true
            --             end)
            --         }))
            --         return true
            --     end)
            -- }))


            return {
                card = card,
                message = 'Balanced',
                colour = G.C.PURPLE,
                -- chips =  chip_balanced,
                -- mult = mult_balanced
            }
            
        end
    end



}






------------ MOD CODE END ----------------------
----------------------------------------------