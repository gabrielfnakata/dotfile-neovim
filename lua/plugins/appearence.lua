local function enable_transparency()
    vim.api.nvim.set.hl(0, "Normal", { bg = "none" })
end

return {
    {
	"catppuccin/nvim",
	name = "catppuccin",
	lazy = false,
	priority = 100,
	config = function()
	    vim.cmd([[colorscheme catppuccin]])
	end,
    },
    {
	"nvim-lualine/lualine.nvim",
	name = "lualine",
	opts = {
	    theme = "catppuccin"
	},
	dependencies = {
	    "nvim-tree/nvim-web-devicons"
	}
    }
}
