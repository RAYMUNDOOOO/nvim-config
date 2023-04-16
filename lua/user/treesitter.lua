require 'nvim-treesitter.configs'.setup {
	ensure_installed = { "c", "python", "lua", "help", "cpp" },
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true
	},
}
