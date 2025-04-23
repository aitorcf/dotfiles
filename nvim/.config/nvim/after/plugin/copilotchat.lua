local status,copilotchat = pcall( require , 'CopilotChat' )
if (not status) then
    return
end

copilotchat.setup {
      debug = true,
}
