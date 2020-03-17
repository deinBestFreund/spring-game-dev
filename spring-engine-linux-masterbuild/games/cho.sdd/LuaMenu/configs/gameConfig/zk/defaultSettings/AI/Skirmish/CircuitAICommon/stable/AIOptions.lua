--
-- Custom Options Definition Table format
--
-- A detailed example of how this format works can be found
-- in the spring source under:
-- AI/Skirmish/NullAI/data/AIOptions.lua
--
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

local options = {
	{ -- section
		key    = 'performance',
		name   = 'Performance Relevant Settings',
		desc   = 'These settings may be relevant for both CPU usage and AI difficulty.',
		type   = 'section',
	},
	{ -- list
		key     = 'difficulty',
		name    = 'Difficulty',
		desc    = 'How tough the AI should be.\nkey: difficulty',
		type    = 'list',
		section = 'performance',
		def     = 'normal',
		items   = {
			{
				key  = 'easy',
				name = 'Easy',
				desc = 'Easy AI.',
			},
			{
				key  = 'normal',
				name = 'Normal',
				desc = 'Casual AI.',
			},
			{
				key  = 'hard',
				name = 'Hard',
				desc = 'Los-cheating AI.',
			},
		},
	},
	{ -- bool
		key     = 'ally_aware',
		name    = 'Alliance awareness',
		desc    = 'Consider allies presence while making expansion desicions',
		type    = 'bool',
		section = 'performance',
		def     = true,
	},
	{ -- bool
		key     = 'comm_merge',
		name    = 'Merge neighbour Circuits',
		desc    = 'Merge spatially close Circuit ally commanders',
		type    = 'bool',
		section = 'performance',
		def     = true,
	},

	{ -- string
		key     = 'disabledunits',
		name    = 'Disabled units',
		desc    = 'Disable usage of specific units.\nSyntax: armwar+armpw+raveparty\nkey: disabledunits',
		type    = 'string',
		def     = '',
	},
	{ -- string
		key     = 'config_file',
		name    = 'Config file',
		desc    = 'Play with arbitrary config of your choice.\nkey: config',
		type    = 'string',
		def     = '',
	},
--	{ -- string
--		key     = 'json',
--		name    = 'JSON',
--		desc    = 'Per-AI config.\nkey: json',
--		type    = 'string',
--		def     = '',
--	},

--	{ -- section
--		key    = 'config',
--		name   = 'Config parts',
--		desc   = 'Overrides config elements.',
--		type   = 'section',
--	},
--	{ -- string
--		key     = 'factory',
--		name    = 'Factory config',
--		desc    = 'Overrides factory part of config.',
--		type    = 'string',
--		section = 'config',
--		def     = '',
--	},
--	{ -- string
--		key     = 'behaviour',
--		name    = 'Behaviour config',
--		desc    = 'Overrides behaviour part of config.',
--		type    = 'string',
--		section = 'config',
--		def     = '',
--	},
}

return options
