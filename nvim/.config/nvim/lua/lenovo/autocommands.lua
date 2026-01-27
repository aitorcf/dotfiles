vim.cmd[[
    au BufRead,BufNewFile *.tex setlocal textwidth=60
    au BufRead,BufNewFile *.txt setlocal textwidth=60
    au BufRead,BufNewFile *.md setlocal textwidth=60
    au BufRead,BufNewFile *.jl setlocal textwidth=80
    au BufRead,BufNewFile *.py setlocal textwidth=80
    au BufRead,BufNewFile *.typ setlocal textwidth=80
    au BufRead,BufNewFile *.clj setlocal textwidth=80
    au BufRead,BufNewFile *.clj setlocal filetype=clojure
]]
