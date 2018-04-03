
" basic
"source ~/.rcs/vim/basic_no_plugin.vim
source ~/.rcs/vim/vim_plug.vim

" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

source ~/.rcs/vim/theme.vim


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=> VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 256 colors in vim
set t_Co=256

" Set the title of the terminal
set title

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

"This is the most awesome configurationa ever, is shows both
"the absolute and relative numbering together to make jumps
"easier
set number relativenumber
" set relativenumber
"nnoremap <silent><leader>n :set relativenumber!<cr>

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Mark the current line
set cursorline

" For the vimdow
set winwidth=84
set winheight=5
set winminheight=5
set winheight=999

"
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
    exec "w"
    if &filetype == 'c'
        exec "!clear"
        exec "!gcc % -o %<"
        exec "!time ./%<"
    elseif &filetype == 'cpp'
        exec "!clear"
        exec "!g++ -Wall -g % -o %<"
        exec "!time ./%<"
    elseif &filetype == 'java'
        exec "!javac %"
        exec "!time java %<"
    elseif &filetype == 'sh'
        :!time bash %
    elseif &filetype == 'python'
        exec "!clear"
        exec "!time python %"
    elseif &filetype == 'html'
        exec "!firefox % &"
    elseif &filetype == 'go'
        exec "!go build %<"
        exec "!time go run %"
    elseif &filetype == 'mkd'
        exec "!~/.vim/markdown.pl % > %.html &"
        exec "!firefox %.html &"
    endif
endfunc
