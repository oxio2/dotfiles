:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=v

let mapleader = ","

set clipboard=unnamed,unnamedplus

set guifont=<>

" Indents word-wrapped lines as much as the 'parent' line
set breakindent
" Ensures word-wrap does not split words
set formatoptions=l
set lbr

" VIMTEX STUFF
"
" This is necessary for VimTeX to load properly. The "indent" is optional.
" Note that most plugin managers will do this automatically.
filetype plugin indent on

" This enables Vim's and neovim's syntax-related features. Without this, some
" VimTeX features will not work (see ":help vimtex-requirements" for more
" info).
syntax enable

" Viewer options: One may configure the viewer either by specifying a built-in
" viewer method:
let g:vimtex_view_method = 'zathura'

" Or with a generic interface:
let g:vimtex_view_general_viewer = 'okular'
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'

" VimTeX uses latexmk as the default compiler backend. If you use it, which is
" strongly recommended, you probably don't need to configure anything. If you
" want another compiler backend, you can change it as follows. The list of
" supported backends and further explanation is provided in the documentation,
" see ":help vimtex-compiler".
let g:vimtex_compiler_method = 'latexrun'

" Most VimTeX mappings rely on localleader and this can be changed with the
" following line. The default is usually fine and is the symbol "\".
let maplocalleader = ","


call plug#begin()
Plug 'https://github.com/nathanaelkane/vim-indent-guides'
Plug 'https://github.com/nvim-lua/plenary.nvim'
Plug 'https://github.com/nvim-telescope/telescope.nvim'
Plug 'https://github.com/mhartington/formatter.nvim'
Plug 'https://github.com/vim-autoformat/vim-autoformat'
Plug 'https://github.com/lambdalisue/suda.vim'
Plug 'https://github.com/tpope/vim-repeat'
Plug 'https://github.com/lervag/vimtex'
Plug 'https://github.com/ianding1/leetcode.vim'
Plug 'https://github.com/Pocco81/auto-save.nvim'
Plug 'https://github.com/lervag/vimtex'
Plug 'https://github.com/neovim/nvim-lspconfig'
Plug 'https://github.com/ap/vim-css-color'
Plug 'https://github.com/scalameta/nvim-metals'
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/preservim/nerdtree' " Status bar
Plug 'https://github.com/lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'https://github.com/nvim-lua/plenary.nvim'
Plug 'https://github.com/puremourning/vimspector'
Plug 'https://github.com/ThePrimeagen/vim-be-good'

call plug#end()

let g:indent_guides_enable_on_vim_startup = 1





autocmd FileType markdown,octopress let b:surround_{char2nr('i')} = "_\r_"
autocmd FileType markdown,octopress let b:surround_{char2nr('b')} = "**\r**"
autocmd FileType markdown,octopress let b:surround_{char2nr('k')} = "**_\r_**"

nnoremap <CR> :noh<CR><CR>

augroup JsonToJsonc
    autocmd! FileType json set filetype=jsonc
augroup END

:command SudoW :w !sudo tee %

" for command mode
nnoremap <S-Tab> <<
" for insert mode
inoremap <S-Tab> <C-d>

" Leetcode vars
:let g:leetcode_browser='firefox'

inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<S-Tab>"

nnoremap <C-p> :NERDTreeToggle<CR>

nnoremap gn :tabnew<CR>
" nmap <silent> gt :call CocAction('jumpDefinition', 'tabe')<CR>



" " Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" " Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P


" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
