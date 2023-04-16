local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

-- Installing plugins here
return packer.startup(function(use)
	use { "wbthomason/packer.nvim" } -- Have packer manage itself
	use { "ellisonleao/gruvbox.nvim" } -- Colourscheme
	use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }
	use {
		"VonHeikemen/lsp-zero.nvim",
		branch = "v1.x",
		requires = {
			-- LSP SUPPORT
			{ "neovim/nvim-lspconfig" },
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },

			-- AUTOCOMPLETION
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-path" },
			{ "saadparwaiz1/cmp_luasnip" },
			{ "hrsh7th/cmp-nvim-lua" },

			-- SNIPPETS
			{ "L3MON4D3/LuaSnip" },
			{ "rafamadriz/friendly-snippets" }
		}
	}
end)
