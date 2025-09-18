return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        tailwindcss = {
          -- custom include/exclude
          filetypes_exclude = { "markdown" },
          filetypes_include = {},
        },
      },
      setup = {
        tailwindcss = function(_, opts)
          -- Default Tailwind LSP filetypes (taken from the latest lspconfig source)
          local default_filetypes = {
            "aspnetcorerazor",
            "astro",
            "astro-markdown",
            "blade",
            "clojure",
            "django-html",
            "edge",
            "eelixir", -- Phoenix templates
            "elixir",
            "erb",
            "eruby",
            "gohtml",
            "haml",
            "handlebars",
            "hbs",
            "html",
            "htmlangular",
            "htmldjango",
            "javascript",
            "javascriptreact",
            "liquid",
            "markdown",
            "mdx",
            "mustache",
            "njk",
            "nunjucks",
            "php",
            "razor",
            "reason",
            "rescript",
            "svelte",
            "twig",
            "typescript",
            "typescriptreact",
            "vue",
            "heex", -- Phoenix HEEx templates
            "css",
            "sass",
            "scss",
            "less",
          }

          -- Start with defaults
          opts.filetypes = vim.deepcopy(default_filetypes)

          -- Remove excluded filetypes
          opts.filetypes = vim.tbl_filter(function(ft)
            return not vim.tbl_contains(opts.filetypes_exclude or {}, ft)
          end, opts.filetypes)

          -- Add extra includes if defined
          vim.list_extend(opts.filetypes, opts.filetypes_include or {})

          -- Extra Phoenix framework support
          opts.settings = {
            tailwindCSS = {
              includeLanguages = {
                elixir = "html-eex",
                eelixir = "html-eex",
                heex = "html-eex",
              },
            },
          }
        end,
      },
    },
  },

  -- Tailwind-colored completion support
  {
    "hrsh7th/nvim-cmp",
    optional = true,
    dependencies = {
      { "roobert/tailwindcss-colorizer-cmp.nvim", opts = {} },
    },
    opts = function(_, opts)
      -- original LazyVim kind icon formatter
      local format_kinds = opts.formatting.format
      opts.formatting.format = function(entry, item)
        format_kinds(entry, item) -- add icons
        return require("tailwindcss-colorizer-cmp").formatter(entry, item)
      end
    end,
  },
}
