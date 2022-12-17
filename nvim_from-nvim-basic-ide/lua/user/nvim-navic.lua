local navic = require 'nvim-navic'

-- stylua: ignore start
vim.g.navic_silence = true
local separator = " %#CmpItemKindDefault#▶ %*"
local icons = { --{{{
   array         = " ",
   boolean       = "◩ ",
   calendar      = " ",
   class         = " ",
   constant      = " ",
   constructor   = " ",
   container     = " ",
   enum          = "練",
   enumMember    = " ",
   event         = " ",
   field         = " ",
   file          = " ",
   func          = " ",
   interface     = "練",
   key           = " ",
   method        = " ",
   module        = " ",
   namespace     = " ",
   null          = "ﳠ ",
   number        = " ",
   object        = " ",
   operator      = " ",
   package       = " ",
   property      = " ",
   string        = " ",
   struct        = " ",
   table         = " ",
   tag           = " ",
   typeParameter = " ",
   variable      = " ",
   watch         = " ",
 } --}}}

navic.setup({ --{{{
   icons = {
     Array         = icons.array,
     Boolean       = icons.boolean,
     Class         = icons.class,
     Constant      = icons.constant,
     Constructor   = icons.constructor,
     Enum          = icons.enum,
     EnumMember    = icons.enumMember,
     Event         = icons.event,
     Field         = icons.field,
     File          = icons.file,
     Function      = icons.func,
     Interface     = icons.interface,
     Key           = icons.key,
     Method        = icons.method,
     Module        = icons.module,
     Namespace     = icons.namespace,
     Null          = icons.null,
     Number        = icons.number,
     Object        = icons.object,
     Operator      = icons.operator,
     Package       = icons.package,
     Property      = icons.property,
     String        = icons.string,
     Struct        = icons.struct,
     TypeParameter = icons.typeParameter,
     Variable      = icons.variable,
   },
   separator = ' > ',
   -- separator = separator,
   depth_limit = 3,
   highlight = true,
   depth_limit_indicator = "..",
}) --}}}

local ignore_navic = {
   bashls = true,
   dockerls = true,
   ["null-ls"] = true,
}

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    if args.data == nil then
      return
    end
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if ignore_navic[client.name] then
      return
    end
    if not client.server_capabilities.documentSymbolProvider then
      return
    end
    navic.attach(client, args.buf)
  end,
})
-- stylua: ignore end
