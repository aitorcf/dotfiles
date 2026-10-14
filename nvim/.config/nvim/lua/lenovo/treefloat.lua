local function tree_float()
  local dir = vim.fn.expand("%:p:h")
  if dir == "" then dir = vim.fn.getcwd() end

  -- Prefer `tree`, fall back to `find`
  local cmd
  if vim.fn.executable("tree") == 1 then
    cmd = { "tree", "-a", "-I", ".git|node_modules", "--charset=utf-8", dir }
  else
    cmd = { "find", dir, "-not", "-path", "*/.git/*" }
  end

  local lines = vim.fn.systemlist(cmd)

  local buf = vim.api.nvim_create_buf(false, true)
  vim.api.nvim_buf_set_lines(buf, 0, -1, false, lines)
  vim.bo[buf].modifiable = false
  vim.bo[buf].bufhidden = "wipe"

  local width = math.floor(vim.o.columns * 0.8)
  local height = math.floor(vim.o.lines * 0.8)

  vim.api.nvim_open_win(buf, true, {
    relative = "editor",
    width = width,
    height = height,
    col = math.floor((vim.o.columns - width) / 2),
    row = math.floor((vim.o.lines - height) / 2),
    style = "minimal",
    border = "rounded",
    title = " " .. dir .. " ",
  })

  -- Close with q or <Esc>
  for _, key in ipairs({ "q", "<Esc>" }) do
    vim.keymap.set("n", key, "<cmd>close<cr>", { buffer = buf, nowait = true })
  end
end

vim.keymap.set("n", "<leader>t", tree_float, { desc = "Floating directory tree" })
vim.api.nvim_create_user_command("TreeFloat", tree_float, {})
