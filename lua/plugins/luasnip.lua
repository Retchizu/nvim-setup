return {
  "L3MON4D3/LuaSnip",
  config = function()
    local ls = require("luasnip")

    require("luasnip.loaders.from_lua").load({
      paths = vim.fn.stdpath("config") .. "/lua/snippets",
    })

    vim.keymap.set({ "s" }, "<C-j>", function()
      if ls.jumpable(1) then
        ls.jump(1)
      end
    end, { silent = true })

    vim.keymap.set({ "s" }, "<C-k>", function()
      if ls.jumpable(-1) then
        ls.jump(-1)
      end
    end, { silent = true })
  end,
}
