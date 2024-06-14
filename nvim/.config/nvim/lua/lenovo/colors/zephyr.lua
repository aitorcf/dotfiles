local status,zephyr = pcall( require , 'zephyr' )
if not status then 
    print( "Colorscheme Zephyr not installed." )
    return 
end

vim.cmd[[ colorscheme zephyr ]]
