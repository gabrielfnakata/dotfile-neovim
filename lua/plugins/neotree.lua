return {
    "nvim-neo-tree/neo-tree.nvim",
    name = "neotree",
    lazy = false,

    keys = {
	{
	    "<leader>e",
	    function()
		require("neo-tree.command").execute({ toggle = true })
	    end,
	    desc = "Toggle Neo-tree"
	}
    },

    config = function()
	require("neo-tree").setup({
	    filesystem = {
		group_empty_dirs = false,
		follow_current_file = {
		    enabled = true,
		},

		filtered_items = {
		    hide_dotfiles = false,
		    hide_gitignored = false,
		    hide_ignored = false,
		},

		follow_current_file = {
		    enabled = true
		}
	    },
	    buffers = {
		group_empty_dirs = false,
	    },
	    default_component_configs = {
		git_status = {
		    symbols = {
			modified = "!",
		    }
		}
	    },
	    enable_git_status = true,
	    enable_git_diagnostics = true
	})
    end,

    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons"
    }
}
