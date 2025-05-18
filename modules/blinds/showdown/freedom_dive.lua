SMODS.Blind{
    key = "final_freedom_dive",

    dollars = 8,
    mult = 2,
    boss = {min = 1, max = 16, showdown = true},
    boss_colour =HEX('6ea682'),

    atlas = 'watsau_blinds', 
    pos = { x = 0, y = 5 },

    debuff = {

    }, 


    calculate = function(self,blind,context)
        if context.before then
            if G.GAME.current_round.hands_left > 0 then
                ease_hands_played(-1)
            end
        end

        if context.pre_discard then
            if  G.GAME.current_round.discards_left > 0 then
                ease_discard(-1)  
            end
        end
    end


}
