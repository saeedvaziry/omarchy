return {
	{
		"nvim-neotest/neotest",
		lazy = false,
		dependencies = {
			"V13Axel/neotest-pest",
			"olimorris/neotest-phpunit",
		},
		opts = function(_, opts)
			opts.adapters = opts.adapters or {}

			table.insert(
				opts.adapters,
				require("neotest-pest")({
					sail_enabled = function()
						return false
					end,
					pest_cmd = function()
						return "./vendor/bin/pest"
					end,
				})
			)

			table.insert(
				opts.adapters,
				require("neotest-phpunit")({
					root_ignore_files = { "tests/Pest.php" },
					phpunit_cmd = function()
						return "./vendor/bin/phpunit"
					end,
					env = {
						XDEBUG_MODE = "coverage",
					},
				})
			)
		end,
	},
}
