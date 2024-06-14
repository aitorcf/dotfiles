local status,oil = pcall( require , "oil" )
if (not status) then
    print( "Oil not installed." )
    return
end

oil.setup()
