--https://www.reddit.com/r/neovim/comments/16ugm8l/vs_codelike_expand_selection_via_treesitter/
return {
  "nvim-treesitter/nvim-treesitter",
  config = function()
    require("nvim-treesitter.configs").setup({
      incremental_selection = {
        enable = true,
        keymaps = {
          node_incremental = "v",
          node_decremental = "V",
        },
      },
    })
  end,
}
