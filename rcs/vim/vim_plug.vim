""Examples:
"    " Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
"    Plug 'junegunn/vim-easy-align'
"
"    " Any valid git URL is allowed
"    Plug 'https://github.com/junegunn/vim-github-dashboard.git'
"
"    " Multiple Plug commands can be written in a single line using | separators
"    Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
"
"    " On-demand loading
"    Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"    Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
"
"    " Using a non-master branch
"    Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
"
"    " Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
"    Plug 'fatih/vim-go', { 'tag': '*' }
"
"    " Plugin options
"    Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
"
"    " Plugin outside ~/.vim/plugged with post-update hook
"    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"
"    " Unmanaged plugin (manually installed and updated)
"    Plug '~/my-prototype-plugin'


" Installation
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
    " Make sure you use single quotes
    Plug 'tpope/vim-sensible'

    " Little less sensible yet great vim defaults
    " It consists of two, well documented parts:
    " - vim-sensible defaults
    " - extra configuration
    "Plug 'sheerun/vimrc'

    " Code Completion
    Plug 'Valloric/YouCompleteMe'

    " The NERDTree is a file system explorer for the Vim editor
    Plug 'scrooloose/nerdtree'

    " Aligning Text
    Plug 'godlygeek/tabular'
    
    "ALE (Asynchronous Lint Engine) is a plugin for providing linting in
    "NeoVim and Vim 8 while you edit your text files.
    Plug 'w0rp/ale'

    " Lean & mean status/tabline for vim that's light as air.
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " theme
    Plug 'altercation/vim-colors-solarized'


" Initialize plugin system
call plug#end()

" YouCompleteMe
let g:ycm_global_ycm_extra_conf='/home/brz/.vim/plugged/YouCompleteMe/ycm_extra_conf.py'

" NERD Tree
nnoremap <F3> :NERDTreeToggle<CR>

" ALE
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
let g:ale_sign_column_always = 1
let g:airline#extensions#ale#enabled = 1
