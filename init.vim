"{{{ PLUGINS
call plug#begin("~/AppData/Local/nvim/Plugins")
" My fav colorscheme
Plug 'dracula/vim', { 'as': 'dracula' }

" Code syntax highlighter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

"
call plug#end()
"}}}

"{{{ SETTINGS
set nocompatible
set number
set relativenumber
set noshowmode
set noswapfile
syntax on

augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

colorscheme dracula
"}}}

