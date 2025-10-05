
return {
  {
    "norcalli/nvim-colorizer.lua",
    lazy = true,          -- 延迟加载，可按需加载
    cmd = { "ColorizerToggle", "ColorizerAttachToBuffer" }, -- 通过命令加载
    config = function()
      require("colorizer").setup({ "*" }, {
        RGB = true,       -- #RGB hex codes
        RRGGBB = true,    -- #RRGGBB hex codes
        names = false,    -- "Name" codes like Blue
        RRGGBBAA = true,  -- #RRGGBBAA hex codes
        rgb_fn = true,    -- CSS rgb() and rgba() functions
        hsl_fn = true,    -- CSS hsl() and hsla() functions
        css = true,       -- Enable all CSS features
        css_fn = true,    -- Enable all CSS functions
      })
    end,
  },
}
