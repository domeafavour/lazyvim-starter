return {
  "norcalli/nvim-colorizer.lua",
  lazy = false,
  config = function()
    require("colorizer").setup({ "*" }, {
      names = true,
      css = true,
    })
  end,
}
