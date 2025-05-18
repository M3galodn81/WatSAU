return {
    descriptions = {
        Back={

        },
        Blind={
            bl_watsau_final_distorted_fate = {
                name = {
                    "Distorted Fate"
                },
                text = {
                    "Disables a random Joker",
                    "for each hand played"
                }
            },
            bl_watsau_final_inverted_world = {
                name = "Inverted World",
                text = {
                    "Chips and Mult values are flipped,",
                    "All Jokers are flipped ",
                    "and Hands and Discards are flipped ",
                }
            },
            bl_watsau_final_unraveling_stasis = {
                name = "Unraveling Stasis",
                text = {
                    "Blind requirements are multipled ",
                    "by 1.1 per played hand"
                }
            },
            bl_watsau_final_mazarines_end = {
                name = "Mazarine's End",
                text = {
                    "If played hand contains 3, 2, or Ace",
                    ", then hands and discards is set to 1 "
                }
            },
            bl_watsau_final_disruptor_array = {
                name = "Disruptor Array",
                text = {
                    "Hand size -1",
                    "per hand played"
                }
            },
            bl_watsau_the_flip = {
                name = "The Count",
                text = {
                    'All additive modifiers to Mult',
                    'from Jokers affect Chips instead',
                }
            },
            bl_watsau_the_product = {
                name = "The Product",
                text = {
                    'All multiplicative modifiers to Mult',
                    'from Jokers will be additive instead',
                }
            },
            bl_watsau_the_ace = {
                name = "The Ace",
                text = {
                    'All Aces',
                    'are Debuffed',
                }
            },
            bl_watsau_the_glitch = {
                name = "The Glitch",
                text = {
                    'Base Chips and Chips',
                    'are randomized',
                }
            },
        },
        Edition={

        },
        Enhanced={

        },
        Joker={
            j_watsau_concvssion = {
                name = 'Concvssion',
                text = {
                    'Makes {C:chips}Chips{} and {C:mult}Mult{}',
                    'into multiples of #1# when',
                    'this Joker is triggered'
                }
            },
            j_watsau_jackhammer = {
                name = 'Jackhammer',
                text = {
                    -- 'If the number of remaining hands in the current round',
                    -- 'is the same as the number of remaining hands when you',
                    -- 'first finished a round with this Joker, then this Joker',
                    -- 'gains {X:mult,C:white}X1{} Mult, otherwise it will reset back to {X:mult,C:white}X1{}',
                    -- '{C:inactive}Currently, this Joker has{} {X:mult,C:white}X#3#{}{C:inactive} Mult{}',
                    -- '{C:inactive}Remaining Hands during first round:{} {C:chips}#2#{}'
                    'Gains {X:mult,C:white}X1{} Mult if you finish a round',
                    'with the same remaining hands as its first use;',
                    ' otherwise, resets to {X:mult,C:white}X1{} Mult',
                    '{C:inactive}Currently, this Joker has{} {X:mult,C:white}X#3#{}{C:inactive} Mult{}',
                    '{C:inactive}Remaining Hands during first round:{} {C:chips}#2#{}'
                }
            },
            j_watsau_inferior = {
                name = 'inferior',
                text = {
                    'If played card is {C:attention}7{} or below',
                    'gain triple the base chip of that card',
                }
            },
            j_watsau_rebirth = {
                name = 'Rebirth',
                text = {
                    'If played card is {C:attention}7{} or below',
                    'gain triple the base chip of that card',
                }
            },
            j_watsau_einherjar = {
                name = 'Einherjar Joker',
                text = {
                    'When picking a blind, destroys other Jokers',
                    'and gain {X:mult,C:white}X1{} per Joker destroyed',
                    '{C:inactive}Currently gives:{} {X:mult,C:white}X#1#{}{C:inactive} Mult{}'
                }
            },
            j_watsau_burn = {
                name = 'Burn',
                text = {
                    'Burn every {C:attention}non-metallic{} cards',
                    'into {C:attention}Burnt Cards{}'
                }
            },
            j_watsau_tempestissimo = {
                name = 'Tempestissimo',
                text = {
                    'Gains {X:mult,C:white}X0.25{} Mult if played hand',
                    'is higher than #2#, otherwise blind requirements',
                    'is multiplied by #3#',
                    '{C:inactive}Currently gives:{} {X:mult,C:white}X#1#{}{C:inactive} Mult{}'
                }
            },
            j_watsau_geopelia = {
                name = 'Geopelia',
                text = {
                    '{X:mult,C:white}X#1#{} Mult',
                    '{C:inactive,S:0.8}Becomes more powerful, if the boss{}',
                    '{C:inactive,S:0.8}showdown blind is{}{C:attention,S:0.8} Distorted Fate{}'
                }
            },
            j_watsau_cyanine = {
                name = 'cyanine',
                text = {
                    'Gains {C:mult}#2#{} Mult for every played 9',
                    '{C:inactive}Currently gives:{} {C:mult}#1#{}{C:inactive} Mult{}'
                }
            },
            j_watsau_der_richter = {
                name = 'Der Richter',
                text = {
                    'Balance {C:chips}Chips{} and {C:mult}Mult{}',
                    'when this joker is triggered'
                    }
            },
            j_watsau_spasmodic = {
                name = 'Spasmodic',
                text = {
                    'Retrigger every {C:hearts}Heart{} cards',
                    }
            },
            j_watsau_aleph = {
                name = 'Aleph 0',
                text = {
                    'Set {C:chips}Chips{} and {C:mult}Mult{} to the higher value',
                    }
            },
            j_watsau_esm = {
                name = 'ENERGY SYNERGY MATRIX',
                text = {
                    'Gives {X:mult,C:white}X3{} Mult when there are ',
                    '{C:attention}exactly{} 3 played cards',
                    }
            },
        },
        Other={
            tooltip_non_metal = {
                name = "Non-Metallic",
                text = {
                    "Bonus Card, Lucky Card, Wild Card,",
                    "Mult Card, and Base Card,"
                }
            },
            tooltip_df = {
                name = "Distorted Fate",
                text = {
                    "Disables a random Joker",
                    "for each hand played"
                }
            },
        },
        Planet={

        },
        Spectral={

        },
        Stake={

        },
        Tag={

        },
        Tarot={

        },
        Voucher={

        },
    },

    misc = {
        achievement_descriptions={

        },
        achievement_names={

        },
        blind_states={

        },
        challenge_names={
            c_watsau_ch_formless = "Formless",
            c_watsau_ch_arcana_master = "Arcana Master",
            c_watsau_ch_the_clan = "The Clan",
            c_watsau_ch_suit_stones = "Suit Stones",
            c_watsau_ch_arcobatics = "Acrobatics",
        },
        collabs={
            
        },
        dictionary={
            -- Badges
            k_watsau_arcaea = "Arcaea",
            
            k_watsau_phigros = "Phigros",

            k_watsau_stellar = "Stellar",
        },
        high_scores={

        },
        labels={
            k_watsau_stellar = "Stellar",
        },
        poker_hand_descriptions={

        },
        poker_hands={

        },
        quips={

        },
        ranks={

        },
        suits_plural={

        },
        suits_singular={

        },
        tutorial={

        },
        v_dictionary={

        },
        v_text={
            ch_c_arcana_master_rule_1 = {
                "All {C:spectral}Spectral{} cards are banned"
            }
        },
    },
}