-- Catppuccin
vim.pack.add {
    { src = "https://github.com/catppuccin/nvim", name = "catppuccin" }
}

require("catppuccin").setup({
    flavour = "mocha",
    transparent_background = true
})

vim.cmd.colorscheme "catppuccin-nvim"

-- Git
vim.pack.add {
    {
	src = "https://github.com/nvim-neo-tree/neo-tree.nvim", 
	name = "neotree" 
    },
    "https://github.com/nvim-lua/plenary.nvim",
    "https://github.com/MunifTanjim/nui.nvim",
    "https://github.com/nvim-tree/nvim-web-devicons"
}

require("neo-tree").setup({
    close_if_last_window = true,
    popup_border_style = "rounded",
    enable_git_status = true,
    enable_diagnostics = true,

    filesystem = {
	group_empty_dirs = false,

	filtered_items = {
	    visible = false,
	    hide_dotfiles = false,
	    hide_gitignored = false
	},

	follow_current_file = {
	    enabled = true
	},

	hihack_netrw_behavior = "opend_default",
	use_libuv_file_watcher = true,
	default_component_configs = {
	    git_status = {
		symbols = {
		    modified = "!",
		}
	    }
	},
    },

    window = {
	position = "left",
	width = 32
    }
})

vim.keymap.set("n", "<leader>e", "<Cmd>Neotree<CR>")
vim.keymap.set("n", "<leader>eb", "<Cmd>Neotree buffers reveal float<CR>")
vim.keymap.set("n", "<leader>eg", "<Cmd>Neotree git_status<CR>")

-- Neotree
vim.pack.add {
    {
	src = "https://github.com/nvim-neo-tree/neo-tree.nvim", 
	name = "neotree" 
    },
    "https://github.com/nvim-lua/plenary.nvim",
    "https://github.com/MunifTanjim/nui.nvim",
    "https://github.com/nvim-tree/nvim-web-devicons"
}

require("neo-tree").setup({
    close_if_last_window = true,
    popup_border_style = "rounded",
    enable_git_status = true,
    enable_diagnostics = true,

    filesystem = {
	group_empty_dirs = false,

	filtered_items = {
	    visible = false,
	    hide_dotfiles = false,
	    hide_gitignored = false
	},

	follow_current_file = {
	    enabled = true
	},

	hihack_netrw_behavior = "opend_default",
	use_libuv_file_watcher = true,
	default_component_configs = {
	    git_status = {
		symbols = {
		    modified = "!",
		}
	    }
	},
    },

    window = {
	position = "left",
	width = 32
    }
})

vim.keymap.set("n", "<leader>e", "<Cmd>Neotree<CR>")
vim.keymap.set("n", "<leader>eb", "<Cmd>Neotree buffers reveal float<CR>")
vim.keymap.set("n", "<leader>eg", "<Cmd>Neotree git_status<CR>")

-- Telescope
vim.pack.add {
    { 
        src = "https://github.com/nvim-telescope/telescope.nvim.git", 
        name = "telescope" 
    },
    "https://github.com/nvim-lua/plenary.nvim.git"
}

local builtin = require("telescope.builtin")
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- Lualine
vim.pack.add {
    { src = "https://github.com/nvim-lualine/lualine.nvim.git", name = "lualine" },
    "https://github.com/nvim-tree/nvim-web-devicons"
}

require("lualine").setup()

-- Mason
vim.pack.add {{ src = "https://github.com/mason-org/mason.nvim.git", name = "mason" }}

require("mason").setup()
