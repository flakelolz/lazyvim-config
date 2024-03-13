return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = { enabled = false },
    servers = {
      lua_ls = {
        settings = {
          Lua = {
            hint = { enable = true },
          },
        },
      },
      tsserver = {
        settings = {
          typescript = {
            inlayHints = {
              includeInlayEnumMemberValueHints = true,
              includeInlayFunctionLikeReturnTypeHints = true,
              includeInlayFunctionParameterTypeHints = true,
              includeInlayParameterNameHints = "all",
              includeInlayParameterNameHintsWhenArgumentMatchesName = true, -- false
              includeInlayPropertyDeclarationTypeHints = true,
              includeInlayVariableTypeHints = true,
              includeInlayVariableTypeHintsWhenTypeMatchesName = true, -- false
            },
          },
        },
        javascript = {
          inlayHints = {
            includeInlayEnumMemberValueHints = true,
            includeInlayFunctionLikeReturnTypeHints = true,
            includeInlayFunctionParameterTypeHints = true,
            includeInlayParameterNameHints = "all",
            includeInlayParameterNameHintsWhenArgumentMatchesName = true,
            includeInlayPropertyDeclarationTypeHints = true,
            includeInlayVariableTypeHints = true,
            includeInlayVariableTypeHintsWhenTypeMatchesName = true,
          },
        },
      },
      clangd = {
        settings = {
          clangd = {
            InlayHints = {
              Designators = true,
              Enabled = true,
              ParameterNames = true,
              DeducedTypes = true,
            },
            fallbackFlags = { "-std=c++20" },
          },
        },
      },
      -- html = {},
      -- cssls = {},
      -- emmet_language_server = {},
      -- htmx = {
      --   filetypes = { "html", "htmldjango" },
      -- },
      gdscript = {
        cmd = { "ncat", "127.0.0.1", "6005" }, -- the important trick for Windows!
      },
      zls = {
        settings = {
          zls = {
            enable_inlay_hints = true,
            inlay_hints_show_builtin = true,
            inlay_hints_exclude_single_argument = true,
            inlay_hints_hide_redundant_param_names = false,
            inlay_hints_hide_redundant_param_names_last_token = false,
          },
        },
      },
    },
    setup = {
      clangd = function(_, opts)
        -- Fix clangd offset encoding
        opts.capabilities.offsetEncoding = { "utf-16" }
      end,
    },
  },
}
