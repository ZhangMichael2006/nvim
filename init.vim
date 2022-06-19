"{{{ PLUGINS
call plug#begin("~/AppData/Local/nvim/Plugins")
" My fav colorscheme
Plug 'dracula/vim', { 'as': 'dracula' }

" Code syntax highlighter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" File Broswer
Plug 'preservim/nerdTree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

"Icons
Plug 'ryanoasis/vim-devicons'

"Statusline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()
"}}}

"{{{ SETTINGS
set fileencoding=utf-8
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

for setting_file in split(glob(stdpath('config').'/settings/*.vim'))
  execute 'source' setting_file
endfor

colorscheme dracula
"}}}

