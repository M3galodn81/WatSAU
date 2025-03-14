SMODS.Blind{
    key = "final_shatter_switch",
    loc_txt = {
        name = "Shatter Switch",
        text = {
            'Divide Chips and Mult by 3 ',
            'and switch them',
        }
    },
    dollars = 8,
    mult = 2,
    boss = {min = 1, max = 16, showdown = true},
    boss_colour =HEX('f7b300'),

    atlas = 'watsau_blinds', 
    pos = { x = 0, y = 3 },

    debuff = {

    }, 

    modify_hand = function(self)
        
        self.triggered = true
        return math.max(math.floor(hand_chips*0.5 + 0.5), 0), math.max(math.floor(mult*0.5 + 0.5), 1), true

    end,

}
