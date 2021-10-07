filetype off

let vundle_readme = expand('~/.vim/bundle/Vundle.vim/README.md')
" Auto-installing Vundle
if !filereadable(vundle_readme)
	echo "Installing Vundle..."
	echo ""
	silent !mkdir -p ~/.vim/bundle
	silent !git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
endif

" set the runtime path to include Vundle and initialize
set runtimepath+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'editorconfig/editorconfig-vim'
Plugin 'fatih/vim-go'
Plugin 'gioele/vim-autoswap'
Plugin 'nataliabu/vim-bombon'
"Plugin 'klen/python-mode'

" All of your Plugins must be added before the following line
call vundle#end()

" activate filetypes and syntax highlighting
filetype plugin indent on
" Enable syntax color
syntax on

colorscheme bombon
" Display line numbers
set number
set mouse=n
filetype indent on
set autoindent
set smartindent
set expandtab
set shiftwidth=4
set softtabstop=4
set textwidth=80
" Backspace over everything in insert mode
set backspace=indent,eol,start
"let &colorcolumn=&l:textwidth . ",".join(range(120,999),",")

"search as the letters are typed
set incsearch
"highlight search result
set hlsearch

" Always display the statusbar
set laststatus=2

"To be able to leave an unsaved buffer to access another one
set hidden

function! SynStack()
	if !exists("*synstack")
		return
	endif
	return map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

command! -nargs=0 Synstack :call SynStack()
