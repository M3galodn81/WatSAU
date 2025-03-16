SMODS.Joker{
    key = 'concvssion',
    loc_txt = {
        
    },
    atlas = 'watsau_jokers', --atlas' key
    pos = {x = 7, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
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
            base = 10
        }
    },
    loc_vars = function(self,info_queue,center)
        return {vars = {center.ability.extra.base}}
    end,

    calculate = function(self,card,context)
        if context.joker_main then
            local add_mult = mult % card.ability.extra.base
            local add_chips = hand_chips % card.ability.extra.base

           
            -- lua moment
            return {
                mult_mod = (add_mult > 0 and (card.ability.extra.base - add_mult) or 0),
                chip_mod = (add_chips > 0 and (card.ability.extra.base - add_chips) or 0)
            }
        end

        if context.final_scoring_step and context.cardarea == G.play then
            
        end

    end
}