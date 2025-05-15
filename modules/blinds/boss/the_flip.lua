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
        -- if goal is to make + 4 mult turn 
        -- into + 4 Chips

        if context.main_joker then
            return {
                    chips = mult;
                    mult = 0;
            }
        end

        -- if context.post_trigger then
        --     print(post_trigger)
        --     if ret.mult > 0 then
        --         return {
        --             chips = ret.mult
        --         }
        --     end
        -- end
    end
}
