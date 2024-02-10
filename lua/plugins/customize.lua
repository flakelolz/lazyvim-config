return {
  --- Theme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight-night",
      -- colorscheme = "catppuccin-mocha",
      -- colorscheme = "oh-lucy-evening",
      -- background = "dark",
    },
  },
  {
    -- "Yazeed1s/oh-lucy.nvim",
  },
  {
    "folke/tokyonight.nvim",
    opts = {
      style = "night",
      styles = {
        comments = { italic = false },
        keywords = { italic = false },
      },
    },
  },

  --- Treesitter ensure installed
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- add tsx and treesitter
      vim.list_extend(opts.ensure_installed, {
        "sql",
        "htmldjango",
        "gdscript",
        "godot_resource",
        "wgsl",
        "wgsl_bevy",
        "norg",
      })
    end,
  },

  --- Mason ensure installed
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        -- "mypy",
        -- "ruff",
        "css-lsp",
      })
    end,
  },

  --- Add formatters
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.formatters_by_ft, {
        --
      })
    end,
  },

  --- Add linters
  {
    "mfussenegger/nvim-lint",
    opts = function(_, opts)
      vim.list_extend(opts.linters_by_ft, {
        python = {
          "mypy",
          "ruff",
        },
      })
    end,
  },

  --- LSP Config
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        html = {},
        emmet_language_server = {},
        htmx = {},
        gdscript = {
          cmd = { "ncat", "127.0.0.1", "6005" }, -- the important trick for Windows!
        },
      },
      setup = {
        clangd = function(_, opts)
          -- Fix clangd offset encoding
          opts.capabilities.offsetEncoding = { "utf-16" }
        end,
      },
    },
  },

  --- Notification messages and cmdline bar at the bottom
  {
    "folke/noice.nvim",
    -- enabled = false,
    opts = {
      presets = {
        command_palette = false,
        lsp_doc_border = true,
      },
      cmdline = {
        view = "cmdline",
      },
      lsp = {
        hover = {
          silent = true,
        },
      },
    },
  },

  --- Always show bufferline
  {
    "akinsho/bufferline.nvim",
    opts = {
      options = {
        always_show_bufferline = true,
      },
    },
  },

  --- NeoTree shrink width
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        width = 31,
      },
    },
  },

  -- Add nvim-cmp sources
  {
    "hrsh7th/nvim-cmp",
    dependencies = { "hrsh7th/cmp-emoji" },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      local cmp = require("cmp")
      opts.sources = cmp.config.sources(vim.list_extend(opts.sources, { { name = "emoji" }, { name = "neorg" } }))
    end,
  },

  --- Add borders to nvim-cmp completions
  {
    "hrsh7th/nvim-cmp",
    opts = {
      window = {
        documentation = require("cmp").config.window.bordered(),
        completion = require("cmp").config.window.bordered({
          winhighlight = "Normal:CmpPmenu,CursorLine:PmenuSel,Search:None",
        }),
      },
    },
  },

  --- Mini comment keybinds
  {
    "echasnovski/mini.comment",
    opts = {
      mappings = {
        comment = "<M-/>",
        comment_line = "<M-/>",
        comment_visual = "<M-/>",
      },
    },
  },

  --- Which key
  {
    "folke/which-key.nvim",
    opts = {
      icons = {
        group = "⦿ ",
      },
    },
  },
  {
    "mg979/vim-visual-multi",
    keys = {
      {
        "<C-n>",
        mode = { "n", "x", "v" },
        desc = "Next Multi",
      },
    },
  },
}
