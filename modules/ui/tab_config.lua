--ngl, i have no idea that is this so pain
--i just copy this from Blueprint Mod
SMODS.current_mod.config_tab = function()
    return {n = G.UIT.ROOT, config = {r = 0.1, align = "cm", padding = 0.1, colour = G.C.BLACK, minw = 8, minh = 6}, 
	nodes = {
		{n = G.UIT.R, config = {align = "cl", padding = 0.5}, nodes = {
            {n = G.UIT.C, config = { align = "c", padding = 0 }, nodes = {
                { n = G.UIT.T, config = { 
					text = "Please restart the game after changing the \nsettings so it will work properly :sob:", 
					scale = 0.35, 
					colour = G.C.UI.TEXT_LIGHT 
				}},
            }},
            
        }},
        {n = G.UIT.R, config = {align = "cm", padding = 0}, nodes = {
            {n = G.UIT.C, config = { align = "c", padding = 0 }, nodes = {
                { n = G.UIT.T, config = { 
					text = "Disable WatSAU Jokers", 
					scale = 0.35, 
					colour = G.C.UI.TEXT_LIGHT 
				}},
            }},
            {n = G.UIT.C, config = { align = "cl", padding = 0.05 }, nodes = {
                create_toggle{ 
					col = true, 
					label = "", 
					scale = 0.85, 
					w = 0, 
					shadow = true, 
					ref_table = WatSAU_config.config, 
					ref_value = 'disable_jokers' },
            }},
        }},
        {n = G.UIT.R, config = {align = "cm", padding = 0}, nodes = {
            {n = G.UIT.C, config = { align = "c", padding = 0 }, nodes = {
                { n = G.UIT.T, config = { 
					text = "Disable WatSAU Blinds", 
					scale = 0.35, 
					colour = G.C.UI.TEXT_LIGHT }},
            }},
            {n = G.UIT.C, config = { align = "cl", padding = 0.05 }, nodes = {
                create_toggle{ 
					col = true, 
					label = "", 
					scale = 0.85, 
					w = 0, 
					shadow = true, 
					ref_table = WatSAU_config.config, 
					ref_value = 'disable_blinds' },
            }},
        }},

		{n = G.UIT.R, config = {align = "cm", padding = 0.5}, nodes = {
			{n = G.UIT.C, config = { align = "c", padding = 0 }, nodes = {
				UIBox_button({
                      colour = HEX('5865F2'), minw = 4.5, minh = 1, padding = 0.1, emboss = 0.2, button = "manual_restart", label = {"Restart Game"}
                    })
			}},
		}}
		
    }}
end