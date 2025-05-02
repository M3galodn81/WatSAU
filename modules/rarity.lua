local s_gradient = SMODS.Gradient{
    key = "stellar_gradient",
    colours = {
        HEX('092479'),
        HEX('009bff'),
        HEX('092479'),
        HEX('009bff'),
    }
    -- "44617a"
}


SMODS.Rarity{
    key = "stellar",
    badge_colour = s_gradient,
    default_weight = 0,
}