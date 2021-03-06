call plug#begin('~/.local/share/nvim/plugged')
Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-fugitive'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'nvie/vim-flake8'
Plug 'tmhedberg/SimpylFold'
Plug 'vim-scripts/gnupg.vim'
Plug 'python-mode/python-mode'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'roxma/nvim-completion-manager'
Plug 'ludovicchabant/vim-gutentags'
"Plug 'donRaphaco/neotex', {'for': 'tex'}
Plug 'lervag/vimtex'

call plug#end()

" --- Keys ---
:imap jk <Esc>
:nmap <C-b> :Buffers <CR>
:nmap <F9> :VimtexView <CR>
:inoremap <A-h> <C-o>h
:inoremap <A-j> <C-o>j
:inoremap <A-k> <C-o>k
:inoremap <A-l> <C-o>l
" --- General Settings ---
set colorcolumn=80
set ruler
set number
set showcmd
set incsearch
set hlsearch
" enable syntax highlighting
syntax on

" Set colors to be 256
set t_Co=256

" set tabs to have 4 spaces
set ts=4

" ident when moving to the next line while writing code
set autoindent

" when using >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" enable all Python syntax highlighting features
let python_highlight_all=1

" set time out lenght for escape
set timeoutlen=1000 ttimeoutlen=0

" set indent Line
set list lcs=tab:\|\ 

" Enable Folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

"Omnifunc
"set omnifunc=syntaxcomplete#Complete
"set completeopt=menu

"autosave when focus lost
:au FocusLost * :wa

"Spellchecking
au BufNewFile,BufRead,BufEnter *.tex setlocal spell spelllang=de_de

" ---Pymode---
set filetype=plugin-on
set filetype=ident-on
"let g:pymode=1

" ---Base 16 ---
if filereadable(expand("~/.vimrc_background"))
	let base16colorspace=256
	source ~/.vimrc_background
endif

" --- YouCompleteMe ---

" --- Ultisnips ----
let g:UltiSnipsExpandTrigger = "<c-l>"
let g:UltiSnipsJumpForwardTrigger = "<Tab>"
let g:UltiSnipsJumpBackwardTrigger = "<S-Tab>"


" --- Airline Settings ---
set laststatus=2
let g:airline_theme='base16_spacemacs'
let g:airline_powerline_fonts=1

" --- Ctrl-P ---
let g:ctrlp_working_path_mode = 'c'

" --- Vim-Javascript ---
let g:javascript_plugin_jsdoc=1
let g:javascript_plugin_ngdoc=1
let g:javascript_plugin_flow=1

" --- Python-Mode ---
let g:pymode_python = 'python3'

" --- delimitMate ---
let g:delimitMate_expand_cr=1

" --- NCM ---
imap <expr> <CR>  (pumvisible() ?  "\<c-y>\<Plug>(expand_or_nl)" : "\<CR>")
imap <expr> <Plug>(expand_or_nl) (cm#completed_is_snippet() ? "\<C-l>":"\<CR>")

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"


" --- PyMode ---
let g:pymode_rope_completion = 0

" ---Vimtex---
let g:vimtex_view_method='zathura'
