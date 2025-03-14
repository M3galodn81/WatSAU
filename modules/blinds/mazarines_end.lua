SMODS.Blind{
    key = "final_mazarines_end",
    loc_txt = {
        name = "Mazarine's End",
        text = {
            'Hand size is set to 3',
            'and every played hand',
            'will be destroyed '
        }
    },
    dollars = 8,
    mult = 2,
    boss = {min = 8, max = 16, showdown = true},
    boss_colour =HEX('33c2ed'),

    atlas = 'watsau_blinds', 
    pos = { x = 0, y = 0 },

    debuff = {
        h_size_le = 3
    }, 

    press_play = function(self)
        for i=#G.play.cards, 1, -1 do
            destroyed_cards[#destroyed_cards+1] = G.play.cards[i]
        end
        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
            play_sound('tarot1')
            return true end }))
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.2,
            func = function() 
                for i=#G.play.cards, 1, -1 do
                    local card = G.play.cards[i]
                    if card.ability.name == 'Glass Card' then 
                        card:shatter()
                    else
                        card:start_dissolve(nil, i == #G.play.cards)
                    end
                end
                return true end }))

    end
}
