" complete with Ctrl+Spae
"let g:UltiSnipsExpandTrigger="<Enter>"
let g:ulti_expand_or_jump_res = 0 "default value, just set once
function! Ulti_ExpandOrJump_and_getRes()
    call UltiSnips#ExpandSnippetOrJump()
    return g:ulti_expand_or_jump_res
endfunction

inoremap <C-j> <C-R>=(Ulti_ExpandOrJump_and_getRes() > 0)?"":"\n"<CR>

" field navigation
let g:UltiSnipsJumpForwardTrigger="<C-b>"
let g:UltiSnipsJumpBackwardTrigger="<C-z>"

" snippet directory
let g:UltiSnipsSnippetsDirectories="~/.config/nvim/ultisnips/"

" open snippets file in new tab
let g:UltiSnipsEditSplit="tabdo"
