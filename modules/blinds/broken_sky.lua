SMODS.Blind{
    key = "final_broken_sky",
    loc_txt = {
        name = "Broken Sky",
        text = {
            'Every poker hand higher ',
            'than Straight are debuffed',
            -- 'until the last joker is disabled',
        }
    },
    dollars = 8,
    mult = 2,
    boss = {min = 1, max = 16, showdown = true},
    boss_colour =HEX('528aae'),

    atlas = 'watsau_blinds', 
    pos = { x = 0, y = 2 },

    debuff = {
        hand = { 
            ["Flush Five"] = true,
            ["Flush House"] = true,
            ["Five of a Kind"] = true,
            ["Straight Flush"] = true,
            ["Four of a Kind"] = true,
            ["Full House"] = true,
            ["Flush"] = true,
            ["Straight"] = false,
            ["Three of a Kind"] = false,
            ["Two Pair"] = false,
            ["Pair"] = false,
            ["High Card"] = false,
        }
    }, 

    set_blind = function()

    end, 

    recalc_debuff = function(self, card, from_blind)

    end,


    drawn_to_hand = function(self)

    end,

    press_play = function(self)

    end
}
