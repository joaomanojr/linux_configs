" https://github.com/NeuralNine/config-files/blob/master/init.vim
" https://www.youtube.com/watch?v=JWReY93Vl6g
:set number
" joao: haven't got used to relativenumber yet...
":set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

" joao
:set expandtab
" avoid the burden of "+y on copying chunks of code from/to system clipboard
:set clipboard+=unnamedplus

" https://github.com/junegunn/vim-plug
" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
" Plug 'tpope/vim-sensible'
" Plug 'junegunn/seoul256.vim'
"
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"Plug 'joereynolds/gtags-scope'
Plug 'ludovicchabant/vim-gutentags'
Plug 'skywind3000/gutentags_plus'

Plug 'preservim/nerdtree'

Plug 'tpope/vim-fugitive'

" nvim-monokai requires neovim 0.5
Plug 'tanvirtin/nvim-monokai'

" old faithful taglist...
Plug 'yegappan/taglist'

" a try on cscope - died after neovim 0.9...
"Plug 'mfulz/cscope.nvim'

" too complex...
" Plug 'dhananjaylatkar/cscope_maps.nvim'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Plug 'tanvirtin/nvim-monokai'
" keeping disable, enabling under demand!!
"syntax on
"colorscheme monokai
"colorscheme monokai_pro
"colorscheme monokai_soda
"colorscheme monokai_ristretto

"" Plug 'skywind3000/gutentags_plus'
" enable gtags module
"let g:gutentags_modules = ['ctags', 'gtags_cscope']
let g:gutentags_modules = ['ctags']

" config project root markers.
let g:gutentags_project_root = ['.root']

" generate datebases in my cache directory, prevent gtags files polluting my project
let g:gutentags_cache_dir = expand('~/.cache/tags')

" change focus to quickfix window after search (optional).
let g:gutentags_plus_switch = 1

" debug https://github.com/ludovicchabant/vim-gutentags/issues/225
"let g:gutentags_trace = 1

