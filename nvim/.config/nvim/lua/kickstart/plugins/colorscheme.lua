return {
   { -- You can easily change to a different colorscheme.
      -- Change the name of the colorscheme plugin below, and then
      -- change the command in the config to whatever the name of that colorscheme is.
      --
      -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
      'catppuccin/nvim',
      priority = 1000, -- Make sure to load this before all the other start plugins.
      name = 'catppuccin',
      config = function()
         require('catppuccin').setup {
            flavour = 'frappe',
            transparent_background = true,
            styles = {
               comments = { 'italic' },
            },

            -- Here I am overriding the the default coloring used for comments. This particular
            -- color is from the `Latte` flavour and is subdued enough for my liking. It is the
            -- color used for the `Overlay 1` color.
            --
            -- You could also accomplish the same thing via the vim api with the following in the
            -- `init` function:
            --
            --      vim.api.nvim_set_hl(0, 'Comment', { fg = '#8c8fa1', italic = true })
            custom_highlights = function(colors)
               return {
                  Comment = { fg = '#8c8fa1' },
                  -- TelescopeBorder = { fg = colors.surface2 },
                  TelescopeBorder = { fg = '#6c6f85' },
               }
            end,
            color_overrides = {},
         }
      end,
      init = function()
         -- Load the colorscheme here.
         -- Like many other themes, this one has different styles, and you could load
         -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
         vim.cmd.colorscheme 'catppuccin-frappe'

         -- This idea was originally brought up in a github issue:
         --
         -- https://github.com/nvim-treesitter/nvim-treesitter/issues/4392
         --
         -- ALL comment coloring should (ideally) be unified so as to be less distracting.
         -- This is what I prefer as well so was grateful to find the above issue and
         -- subsequent solution/inclusion into Treesitter.
         --
         -- https://github.com/nvim-treesitter/nvim-treesitter/pull/4413
         vim.cmd 'hi link @string.documentation.python Comment'

         --
         -- vim.api.nvim_set_hl(0, 'Comment', { fg = '#8c8fa1', italic = true })
      end,
   },
}
-- vim: ts=2 sts=2 sw=2 et
