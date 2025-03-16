SMODS.Joker{
    key = 'der_richter',
    loc_txt = {
        name = 'Der Richter',
        text = {
            'Balance {C:chips}Chips{} and {C:mult}Mult{}',
            'when this joker is triggered'
        }
    },
    atlas = 'watsau_jokers', --atlas' key
    pos = {x = 2, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    rarity = 3, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
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
            local nu_chip, nu_mult = G.GAME.selected_back:trigger_effect{context = 'joker_main', chips = hand_chips, mult = mult}
            mult = mod_mult(nu_mult or mult)
            hand_chips = mod_chips(nu_chip or hand_chips)
            return {
                card = card,
                message = 'Balanced',
                colour = G.C.PURPLE,
            }
            
        end
    end
}