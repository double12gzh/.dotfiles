local ls = require 'luasnip'
local s = ls.snippet
local i = ls.insert_node
local fmt = require('luasnip.extras.fmt').fmt

ls.add_snippets('c', {
  s(
    'main',
    fmt(
      [[
      int main(int argc, char *argv[]) {
        <>
        return 0;
      }
      ]],
      {
        i(1, '// put your code hare'),
      },
      {
        delimiters = '<>',
      }
    )
  ),
  s(
    'pmain',
    fmt(
      [[
      #include <<stdio.h>>

      int main(int argc, char *argv[]) {
        <>
        return 0;
      }
      ]],
      {
        i(1, '// put your code hare'),
      },
      {
        delimiters = '<>',
      }
    )
  ),
})