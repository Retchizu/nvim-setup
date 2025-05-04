local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  -- Arrow function: afn expands to an arrow function template
  s("afn", {
    t("const "),
    i(1, "funcName"),
    t(" = ("),
    i(2, "params"),
    t({ ") => {", "  " }),
    i(3, "// body"),
    t({ "", "}" }),
  }),
  s("cl", {
    t("console.log("),
    i(1, "value"),
    t(");"),
  }),
  s("fn", {
    t("function "),
    i(1, "funcName"),
    t("("),
    i(2, "params"),
    t({ ") {", " " }),
    i(3, "// body"),
    t({ "", "}" }),
  }),
    s("try", {
    t({ "try {", "  " }),
    i(1, "// code to try"),
    t({ "", "} catch (" }),
    i(2, "error"),
    t({ ") {", "  " }),
    i(3, "// handle error"),
    t({ "", "}" }),
  }),
}
