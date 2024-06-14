local status,copilotchat = pcall( require , 'CopilotChat' )
if (not status) then
    print( "CopilotChat not installed" )
    return
end

copilotchat.setup {
      debug = true,
}
