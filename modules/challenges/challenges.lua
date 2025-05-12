SMODS.Challenge{
    -- loc_txt = {
    --     name = "Formless"
    -- }, 
    key = "ch_formless",
    jokers = {
        {
            id = "j_four_fingers",
            eternal = true,
            edition = "negative"
        },
        {
            id = "j_smeared",
            eternal = true,
            edition = "negative"
        },
        {
            id = "j_shortcut",
            eternal = true,
            edition = "negative"
        },
        {
            id = "j_splash",
            eternal = true,
            edition = "negative"
        }
    },

    deck = {
			type = "Challenge Deck",
    },
    rules = {
        modifiers = {
            {id = "joker_slots", value = 4},
            {id = "hand_size", value = 7}
        }
    },
    restrictions = {
        banned_cards = {
            {id = "v_grabber" , ids = {
                "v_grabber","v_nacho_tong"
            }},
            {id = "v_magic_trick" , ids = {
                "v_magic_trick","v_illusion"
            }},

            {id = "j_luchador"},
            {id = "j_chicot"},

            {id = "j_baseball"}, -- for balancing purposes
            {id = "j_certificate"},
            {id = "j_marble"},
            {id = "j_dna"},

            -- {id = "p_standard_normal_1"},
            -- {id = "p_standard_normal_2"},
            -- {id = "p_standard_normal_3"},
            -- {id = "p_standard_normal_4"},
            -- {id = "p_standard_normal_jumbo"},
            -- {id = "p_standard_normal_mega"},

            {id = 'p_standard_normal_1', ids = {
                'p_standard_normal_1','p_standard_normal_2','p_standard_jumbo_1','p_buffoon_mega_1',
            }},
            
            {id = "c_world"},
            {id = "c_sun"},
            {id = "c_moon"},
            {id = "c_star"},
            {id = "c_temperance"},

        },

        banned_tags = {
                {id = 'tag_standard'},
        },

        -- banned_other = {
        --     {id = "blind_the_manacle"},
        --     {id = "blind_the_serpent"}
        -- }

    }
}

SMODS.Challenge{
    key = "ch_arcana_master",
    jokers = {
        {
            id = "j_cartomancer",
            eternal = true
        },
        {
            id = "j_fortune_teller",
            eternal = true,
            edition = "negative"
        },
    },
    vouchers = {
        { id = "v_tarot_merchant"},
        { id = "v_tarot_tycoon"},
    },
    deck = {
			type = "Challenge Deck",
    },
    rules = {
        custom = {
            { id = 'arcana_master_rule_1' },
        },
        modifiers = {
            -- {id = "joker_slots", value = 5},
            -- {id = "hand_size", value = 7}
        }
    },
    restrictions = {
        banned_cards = {
            {id = "v_omen_globe" },

            {id = "j_sixth_sense"},
            {id = "j_seance"},

            {id = 'p_spectral_normal_1', ids = {
                'p_spectral_normal_1','p_spectral_normal_2','p_spectral_jumbo_1','p_buffoon_mega_1',
            }},

            {id = 'c_aura', ids = {
                'c_familiar',
                'c_grim',
                'c_incantation',
                'c_talisman',
                'c_aura',
                'c_wraith',
                'c_sigil',
                'c_ouija',
                'c_ectoplasm',
                'c_immolate',
                'c_ankh',
                'c_deva_ju',
                'c_hex',
                'c_trance',
                'c_cryptid',
                'c_soul',
                'c_black_hole',
            }},
        },

        banned_tags = {
                {id = 'tag_ethereal'},
        },

        -- banned_other = {
        --     {id = "blind_the_manacle"},
        --     {id = "blind_the_serpent"}
        -- }

    }
}

SMODS.Challenge{
    key = "ch_the_clan",
    jokers = {
        {
            id = "j_duo",
            eternal = true
        },
        {
            id = "j_trio",
            eternal = true,
        },
        {
            id = "j_family",
            eternal = true,
        },
        {
            id = "j_order",
            eternal = true,
        },
        {
            id = "j_tribe",
            eternal = true,
        },
    },

    deck = {
			type = "Challenge Deck",
    },
    rules = {
        custom = {
            -- { id = 'arcana_master_rule_1' },
        },
        modifiers = {
            -- {id = "joker_slots", value = 5},
            {id = "hands", value = 3}
        }
    },
    restrictions = {
        banned_cards = {
        },

        banned_tags = {
        },

        -- banned_other = {
        --     {id = "blind_the_manacle"},
        --     {id = "blind_the_serpent"}
        -- }

    }
}

SMODS.Challenge{
    key = "ch_suit_stones",
    jokers = {
        {
            id = "j_rough_gem",
            eternal = true
        },
        {
            id = "j_bloodstone",
            eternal = true,
        },
        {
            id = "j_arrowhead",
            eternal = true,
        },
        {
            id = "j_onyx_agate",
            eternal = true,
        },
    },

    deck = {
			type = "Challenge Deck",
    },
    rules = {
        custom = {
            -- { id = 'arcana_master_rule_1' },
        },
        modifiers = {
            {id = "joker_slots", value = 6},
            -- {id = "hands", value = 3}
        }
    },
    restrictions = {
        banned_cards = {
        },

        banned_tags = {
        },

        -- banned_other = {
        --     {id = "blind_the_manacle"},
        --     {id = "blind_the_serpent"}
        -- }

    }
}

SMODS.Challenge{
    key = "ch_arcobatics",
    jokers = {
        {
            id = "j_acrobat",
            eternal = true
        }
    },

    deck = {
			type = "Challenge Deck",
    },
    rules = {
        custom = {
        },
        modifiers = {
            {id = "hands", value = 1}
        }
    },
    restrictions = {
        banned_cards = {
            {id = "v_grabber" },
            {id = "v_nacho_tong"},

            {id = "j_burglar"},
        },

        banned_tags = {
        },

        banned_other = {
            {id = "bl_needle", type = "blind"},
        }
    }
}