-- vim.api.nvim_create_autocmd("VimEnter", {
--   callback = function()
--     -- only flag if a session was explicitly loaded (via -S or mksession restore)
--     if vim.v.this_session ~= "" then
--       vim.g.session_loaded = true
--     end
--   end
-- })
--
-- vim.api.nvim_create_autocmd("VimLeavePre", {
--   callback = function()
--     if vim.g.session_loaded then
--       vim.cmd("mksession! " .. vim.v.this_session)
--     end
--   end
-- })

vim.api.nvim_create_user_command("MS", function(args)
  local path = args.args ~= "" and args.args or vim.v.this_session
  if path == "" then
    print("No session path")
    return
  end
  vim.cmd("mksession! " .. path)
  vim.g.session_loaded = true
end, { nargs = "?" })
