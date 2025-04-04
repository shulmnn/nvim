return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function()
    -- Import nvim-treesitter plugin
    local treesitter = require("nvim-treesitter.configs")

    -- Configure nvim-treesitter
    treesitter.setup({
      highlight = { enable = true }, -- Enable syntax highlighting
      indent = { enable = true }, -- Enable indentation
      ensure_installed = {
        "json",
        "javascript",
        "typescript",
        "tsx",
        "yaml",
        "html",
        "css",
        "prisma",
        "markdown",
        "markdown_inline",
        "svelte",
        "graphql",
        "bash",
        "lua",
        "vim",
        "dockerfile",
        "gitignore",
        "query",
        "vimdoc",
        "c",
        "python",
        "java",
        "go",
        "cpp",
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<Space>h",
          node_incremental = "<Space>h",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    })

    -- Configure nvim-ts-autotag (new setup method)
    require("nvim-ts-autotag").setup({
      opts = {
        enable_close = true, -- Auto close tags
        enable_rename = true, -- Auto rename pairs of tags
        enable_close_on_slash = false, -- Auto close on trailing </
      },
      per_filetype = {
        -- Example: Disable auto-close for HTML files
        ["html"] = {
          enable_close = false,
        },
      },
    })
  end,
}

