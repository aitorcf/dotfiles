-- Set up nvim-cmp.
local status,cmp = pcall( require , 'cmp' )
if (not status) then
    print( "nvim-cmp not installed." )
    return
end

local luasnip = require "luasnip"

local t = function(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

cmp.setup({

  -- Specify snippet engine
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },

  window = {
      -- completion = cmp.config.window.bordered(),
      -- documentation = cmp.config.window.bordered(),
  },

  mapping = { --SuperTab-like
      ['<C-j>'] = cmp.mapping(function(fallback)
          if cmp.visible() then
              if luasnip.expandable() then
                  luasnip.expand()
              else
                  cmp.confirm({
                      select = true,
                  })
              end
          else
              fallback()
          end
      end),
      ["<Tab>"] = cmp.mapping({
          c = function()
              if cmp.visible() then
                  cmp.select_next_item({ behavior = cmp.SelectBehavior.Insert })
              else
                  cmp.complete()
              end
          end,
          i = function(fallback)
              if cmp.visible() then
                  cmp.select_next_item({ behavior = cmp.SelectBehavior.Insert })
              elseif luasnip.locally_jumpable(1) then
                  luasnip.jump(1)
              else
                  fallback()
              end
          end,
          s = function(fallback)
              if luasnip.locally_jumpable(1) then
                  luasnip.jump(1)
              else
                  fallback()
              end
          end
      }),
      ["<S-Tab>"] = cmp.mapping({
          c = function()
              if cmp.visible() then
                  cmp.select_prev_item({ behavior = cmp.SelectBehavior.Insert })
              else
                  cmp.complete()
              end
          end,
          i = function(fallback)
              if cmp.visible() then
                  cmp.select_prev_item({ behavior = cmp.SelectBehavior.Insert })
              elseif luasnip.locally_jumpable(-1) then
                  luasnip.jump(-1)
              else
                  fallback()
              end
          end,
          s = function(fallback)
              if luasnip.locally_jumpable(-1) then
                  luasnip.jump(-1)
              else
                  fallback()
              end
          end
      }),
  },


  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  }, {
    { name = 'buffer' },
  })
})

-- Set configuration for specific filetype.
cmp.setup.filetype('gitcommit', {
  sources = cmp.config.sources({
    { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
  }, {
    { name = 'buffer' },
  })
})

-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ '/', '?' }, {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' }
  }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  })
})

-- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()
