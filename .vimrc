""Vimrc customizations  

"Configures Vundle 
   set nocompatible              " be iMproved, required
   filetype off                  " required

   " set the runtime path to include Vundle and initialize
   set rtp+=~/.vim/bundle/Vundle.vim
   call vundle#begin()
   " alternatively, pass a path where Vundle should install plugins
   "call vundle#begin('~/some/path/here')

   " let Vundle manage Vundle, required
   Plugin 'VundleVim/Vundle.vim'

   " The following are examples of different formats supported.
   " Keep Plugin commands between vundle#begin/end.
   " plugin on GitHub repo
   Plugin 'tpope/vim-fugitive'
   " plugin from http://vim-scripts.org/vim/scripts.html
   " Plugin 'L9'
   " Git plugin not hosted on GitHub
   Plugin 'git://git.wincent.com/command-t.git'
   " The sparkup vim script is in a subdirectory of this repo called vim.
   " Pass the path to set the runtimepath properly.
   Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
   " Install L9 and avoid a Naming conflict if you've already installed a
   " different version somewhere else.
   " Plugin 'ascenator/L9', {'name': 'newL9'}

   " All of your Plugins must be added before the following line
   call vundle#end()            " required
   filetype plugin indent on    " required
   " To ignore plugin indent changes, instead use:
   "filetype plugin on
   "
   " Brief help
   " :PluginList       - lists configured plugins
   " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
   " :PluginSearch foo - searches for foo; append `!` to refresh local cache
   " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
   "
   " see :h vundle for more details or wiki for FAQ
   
"Tab = 4 spaces
	:set tabstop=4
    
"Line numbering 
	:set number

"Autoindents 
	:set autoindent

"Autosave
	:set autowrite

"Shows matching brackets
	:set showmatch 

"Enables mouse
	:set mouse=a

"Hides mouse after typing
	:set mousehide

"Syntax-specific highlighting enabled
	:syntax on

"Sets the colorscheme to my favorite
	:colorscheme industry
	autocmd VimEnter * :colorscheme industry

"Fixes any backspace errors
	:set backspace=indent,eol,start

"Encoding
	:set encoding=utf-8

"Access System Clipboard
	:set clipboard=unnamed

"Python customizations
	au BufNewFile,BufRead *.py
		\ :set tabstop=4
		\ :set softtabstop=4
		\ :set shiftwidth=4
		\ :set textwidth=79
		\ :set expandtab
		\ :set autoindent
		\ :set fileformat=unix
		\ let python_highlight_all=1
		\ syntax on
		
"Web Dev settings
	au BufNewFile,BufRead *.js, *.html, *.css
		\ set tabstop=2
		\ set softtabstop=2
		\ set shiftwidth=2

"Plugins
	Plugin 'scrooloose/nerdtree'
	"Loads nerdtree automatically
	autocmd StdinReadPre * let s:std_in=1
	autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
	autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' 	argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
	autocmd VimEnter * :NERDTree
    "Closes nerdtree automatically
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
	
	Plugin 'godlygeek/tabular'
	Plugin 'hdima/python-syntax'
	Plugin 'vim-scripts/indentpython.vim'
	Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
	
	"Syntastic
	Plugin 'scrooloose/syntastic'
	set statusline+=%#warningmsg#
	set statusline+=%{SyntasticStatuslineFlag()}
	set statusline+=%*
	let g:syntastic_always_populate_loc_list = 1
	let g:syntastic_auto_loc_list = 1
	let g:syntastic_check_on_open = 1
	let g:syntastic_check_on_wq = 0

	"Autocompletion
	"Plugin 'valloric/youcompleteme'
	"let g:ycm_autoclose_preview_window_after_completion=1
	"map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
	
