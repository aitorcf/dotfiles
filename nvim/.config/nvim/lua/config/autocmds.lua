local group = vim.api.nvim_create_augroup("user_config", { clear = true })

local tw = {
  tex = 60, text = 60, markdown = 60,
  julia = 80, python = 80, typst = 80, clojure = 80,
}

vim.api.nvim_create_autocmd("FileType", {
  group = group,
  pattern = vim.tbl_keys(tw),
  callback = function(ev) vim.bo[ev.buf].textwidth = tw[ev.match] end,
})

vim.api.nvim_create_autocmd("FileType", {
  group = group,
  pattern = { "tex", "markdown" },
  callback = function() vim.opt_local.spell = true end,
})

vim.filetype.add({ extension = { clj = "clojure" } })
