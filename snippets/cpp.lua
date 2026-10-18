local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("cpp", {
  s("cp", {  -- trigger word is "cp"
    t({
      "#include <bits/stdc++.h>",
      "using namespace std;",
      "",
      "using ll = long long;",
      "",
      "int main() {",
      "    ios::sync_with_stdio(false);",
      "    cin.tie(nullptr);",
      "",
      "    ",
    }),
    i(1, "// code"),  -- cursor lands here, jumpable
    t({
      "",
      "",
      "    return 0;",
      "}",
    }),
  }),
})
