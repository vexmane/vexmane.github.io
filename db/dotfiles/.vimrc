call plug#begin()

	" everforest colorscheme
	Plug 'sainnhe/everforest'
	let g:everforest_background = 'hard'
	"let g:everforest_better_performance=0
	
call plug#end()
" COLORSCHEMES:
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
" 	accent (my beloved <3)
" 	menguless (&&) menguless_light
" 	onedark (broken)
" 	onehalfdark (&&) onehalflight
" 	mirage (broken)
" 	solarized
" 	iceberg
colorscheme iceberg
syntax enable
set background=dark

" use 4 spaces for tabs
set tabstop=4 softtabstop=4 shiftwidth=4

" display indentation guides
set list listchars=tab:\ \ ┊,trail:·,extends:»,precedes:«,nbsp:×

" convert spaces to tabs when reading file
autocmd! bufreadpost * set noexpandtab | retab! 4

" convert tabs to spaces before writing file
autocmd! bufwritepre * set expandtab | retab! 4

" convert spaces to tabs after writing file (to show guides again)
autocmd! bufwritepost * set noexpandtab | retab! 4


set relativenumber
set incsearch
set ruler
set backspace=2
set laststatus=2
set nocompatible
set t_Co=256
" show new lines:
set linebreak
set showbreak=↪
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

	" everforest colorscheme
	Plug 'sainnhe/everforest'
	let g:everforest_background = 'hard'
	"let g:everforest_better_performance=0
	
	" Zig lang syntax highlighting
	Plug 'ziglang/zig.vim'
	let g:zig_fmt_autosave=0

	" Rust
	Plug 'rust-lang/rust.vim'

	"vim-transparent
	"Plug 'tribela/vim-transparent'

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
	let g:airline_theme='everforest'
	let g:airline_symbols = {}
	let g:airline_symbols.maxlinenr = '_'

	" better syntax highlighting
	Plug 'sheerun/vim-polyglot'


call plug#end()

"call airline#parts#define_accent('', 'italic')
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-F> :NERDTreeFind<CR>
nnoremap <C-f> :NERDTreeFocus<CR>

