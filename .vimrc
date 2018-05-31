
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM PLUG
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim.plugged')
Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fugitive' "Github
Plug 'easymotion/vim-easymotion'
"Plug 'edkolev/tmuxline.vim'
Plug 'powerline/fonts'
Plug 'edkolev/promptline.vim'
"Plug 'scrooloose/syntastic' 
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'yggdroot/indentline'
Plug 'christoomey/vim-tmux-navigator'
Plug 'git://git.wincent.com/command-t.git'
Plug 'scrooloose/nerdcommenter' 
Plug 'godlygeek/tabular'
Plug 'maksimr/vim-jsbeautify'
Plug 'elzr/vim-json'
Plug 'chrisbra/csv.vim'
Plug 'tmux-plugins/vim-tmux'
" Plug 'powerline/powerline'
Plug 'kien/ctrlp.vim'
Plug 'mattn/emmet-vim'
Plug 'janko-m/vim-test'
Plug 'alvan/vim-closetag'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'


"HTML&CSS Plugs
Plug 'othree/html5-syntax.vim'
Plug 'othree/html5.vim'
Plug 'hail2u/vim-css3-syntax'

"JS Plugs
Plug 'pangloss/vim-javascript'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'mxw/vim-jsx'
Plug 'jelera/vim-javascript-syntax'
Plug 'jiangmiao/auto-pairs' "Autoclose quotes brackets etc.
Plug 'itspriddle/vim-jquery'
Plug 'moll/vim-node'
Plug 'isRuslan/vim-es6'
Plug 'lfilho/cosco.vim'
Plug 'isRuslan/vim-es6'
Plug 'neoclide/vim-jsx-improve'

"Python Plugs
Plug 'hdima/python-syntax'

"ColorSchemes Lets make it pretty!
Plug 'dracula/vim'
Plug 'tomasr/molokai'
Plug 'altercation/vim-colors-solarized'
Plug 'ayu-theme/ayu-vim'
Plug 'chriskempson/base16-vim'
Plug 'mhartington/oceanic-next'
Plug 'vim-scripts/BusyBee'
Plug 'morhetz/gruvbox'
Plug 'nanotech/jellybeans.vim'
Plug 'sickill/vim-monokai'
Plug 'danilo-augusto/vim-afterglow' "afterglower 
Plug 'Reewr/vim-monokai-phoenix'
Plug 'colepeters/spacemacs-theme.vim'
Plug 'AlessandroYorba/Monrovia'
Plug 'monkoose/boa.vim'

call plug#end()

filetype plugin indent on    " required
""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"VimConfigs
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
"set nu			      " set line numbers
set relativenumber
"set number
filetype plugin on " required    
set foldlevel=99                "unfolding json type files

"Vim ColorConfigs
syntax on
let g:solarized_termcolors=256
set background=dark
colorscheme gruvbox

set smartindent
set tabstop=2 "the width of the tab:
set shiftwidth=2 "Indents will have a width of 4
set softtabstop=2 "Sets the number of columns for a TAB
set expandtab " Expand Tabs to spaces
" Normal Mode Enter NewLine
set scrolljump=5

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Airline Config & Themes
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:airline_theme='<theme>'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Powerline Configs
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" source ~/Library/Python/3.6/lib/python/site-packages/powerline/bindings/vim/plugin/powerline.vim
" set laststatus=2
" set showtabline=1
" set noshowmode
" set t_Co=256

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"NERDTree Configs
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:nerdtree_tabs_meaningful_tab_names=1
let g:nerdtree_tabs_autofind=1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"EasyMotion Configs
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{cha}
nmap <Leader>s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"indentlineConfig	
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"color setting
"let g:indentLine_color_term = 239
"Change indent Char
let g:indentLine_setColors = 0
let g:indentLine_char = '⪧'
set list lcs=tab:\|\ 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Vim-Javascript Config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
set foldmethod=syntax

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"NerdCommenter Config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"JSBeautify Config  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
".vimrc
map <c-b> :call JsBeautify()<cr>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"vim-json config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:vim_json_syntax_conceal = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
"Base-16 Config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let base16colorspace=256  " Access colors present in 256 colorspace

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"DelimitMate Config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
imap <C-c> <CR><Esc>O
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" "YouCompleteMe Config
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:ycm_add_preview_to_completeopt=0
" let g:ycm_confirm_extra_conf=0
" set completeopt-=preview
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Vim-JSX
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:jsx_ext_required = 0 "Allow JSX in normal JS files

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Emmet Config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_mode='a'    "only enable normal mode functions.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"VIM TMUXLINE Config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:tmuxline_powerline_separators = 0
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Cosco.vim configs
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType javascript,css,YOUR_LANG nmap <silent> <Leader>; <Plug>(cosco-commaOrSemiColon)
autocmd FileType javascript,css,YOUR_LANG imap <silent> <Leader>; <c-o><Plug>(cosco-commaOrSemiColon)
