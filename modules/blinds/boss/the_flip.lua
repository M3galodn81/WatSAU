SMODS.Blind{
    key = "the_flip", --the count
    dollars = 5,
    mult = 2,
    boss = {min = 3, max = 16, showdown = false},
    boss_colour =HEX('528aae'),

    atlas = 'watsau_blinds', 
    pos = { x = 0, y = 23 },

    debuff = {
    }, 

    --make every +mult to + chips
    calculate = function(self,blind,context)
        if context.before then
            local temp_mult
            local hand_chips
        end

        if context.pre_discard then
            if  G.GAME.current_round.discards_left > 0 then
                ease_discard(-1)  
            end
        end
    end
}
