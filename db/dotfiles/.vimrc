" COLORSCHEMES:
call plug#begin()
	" catppuccin colorschemes
	Plug 'catppuccin/vim', { 'as': 'catppuccin' }
call plug#end()
" 	256_noir
" 	true-monochrome
" 	zazen
" 	acme
" 	gruvbox
" 	gruvbox8
" 	gruvbox8_hard
" 	gruvbox8_soft
" 	gotham
" 	gotham256
" 	monochrome
" 	catppuccin_frappe
" 	catppuccin_latte
" 	catppuccin_macchiato
" 	catppuccin_mocha
" 	accent
colorscheme accent
set tabstop=4
set relativenumber
set incsearch
set ruler
set backspace=2
set laststatus=2
set nocompatible
syntax on
"set t_Co=0
filetype plugin indent on

" netrw
set path+=**
set wildmenu
set wildignore+=**/node_modules/**
set hidden

" terminal split window
map <Leader>t :term ++close<cr>
tmap <Leader>t <c-w>:term ++close<cr>

" terminal new tab
map <Leader>T :tab term ++close<cr>
tmap <Leader>T <c-w>:tab term ++close<cr>

" tab nav
nnoremap <C-q> <C-\><C-N> <CR>
nnoremap <C-k> :bprevious <CR>
nnoremap <C-j> :bnext <CR>
nnoremap <Leader><tab> :buffers<CR>

" PLUGINS
call plug#begin()

	" Zig lang syntax highlighting
	Plug 'ziglang/zig.vim'
	let g:zig_fmt_autosave=0

	" Rust
	Plug 'rust-lang/rust.vim'

	"vim-transparent
	Plug 'tribela/vim-transparent'

	"fzf
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'

	"NERDTree
	Plug 'preservim/nerdtree'

	"ALE Linting
	Plug 'dense-analysis/ale'

	"VIM-LSP
	Plug 'prabirshrestha/vim-lsp'
	Plug 'mattn/vim-lsp-settings'
	let g:lsp_inlay_hints_enabled=1

	" VIM-LSP x ALE bridge
	Plug 'rhysd/vim-lsp-ale'

	"Auto-completion
	Plug 'prabirshrestha/asyncomplete.vim'
	Plug 'prabirshrestha/asyncomplete-lsp.vim'

	"vim-airline tabline
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	let g:airline_theme='base16color'
	let g:airline_symbols = {}
	let g:airline_symbols.maxlinenr = '_'

	" better syntax highlighting
	Plug 'sheerun/vim-polyglot'


call plug#end()

"call airline#parts#define_accent('', 'italic')
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-F> :NERDTreeFind<CR>
nnoremap <C-f> :NERDTreeFocus<CR>

