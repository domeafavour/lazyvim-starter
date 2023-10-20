return {
  {
    "Tsuzat/NeoSolarized.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    opts = {
      style = "dark",
      transparent = false,
      terminal_colors = true,
      enable_italics = false,
      styles = {
        -- Style to be applied to different syntax groups
        comments = { italic = false },
        keywords = { italic = false },
        functions = { bold = false },
        variables = {},
        string = { italic = false },
        underline = true, -- true/false; for global underline
        undercurl = true, -- true/false; for global undercurl
      },
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "NeoSolarized",
    },
  },
}
