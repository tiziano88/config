" Modeline and Notes 
" xxxx_vim: set foldmarker=, foldlevel=0 foldmethod=marker spell:
"
" 	This is the personal .vimrc file of Steve Francia.
" 	While much of it is beneficial for general use, I would
" 	recommend picking out the parts you want and understand.
"
" 	You can find me at http://spf13.com
" 

" Setup Bundle Support 
" The next two lines ensure that the ~/.vim/bundle/ system works
"	runtime! autoload/pathogen.vim
"	silent! call pathogen#runtime_append_all_bundles()
" 

" Basics 
	set nocompatible 		" must be first line
    filetype off

    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()

"	set term=builtin_ansi	" Fixes navigation with arrow keys in insert mode
" 
"

  Bundle "vundle"
  Bundle "csv.vim"


  Bundle "scrooloose/nerdtree"

  Bundle "project.tar.gz"


  Bundle "a.vim"
  Bundle "altercation/vim-colors-solarized"
"  Bundle "SuperTab-continued."

" General 
	filetype plugin indent on  	" Automatically detect file types.
	syntax on 					" syntax highlighting
	set mouse=a					" automatically enable mouse usage
	"set autochdir 				" always switch to the current file directory..
	" not every vim is compiled with this, use the following line instead
     "autocmd BufEnter * if bufname("") !~ "^\[A-Za-z0-9\]*://" | lcd %:p:h | endif
	scriptencoding utf-8

	if has('win32') || has('win64')
		set guifont=Terminus:h12
	else
		set guifont=Terminus\ Medium\ 12
	endif

	"set autowrite
	set shortmess+=filmnrxoOtT     	" abbrev. of messages (avoids 'hit enter')
	" set spell 		 	     	" spell checking on

	" Setting up the directories 
		"set backup 						" backups are nice ...
		"set backupdir=$HOME/.vimbackup  " but not when they clog .
		"set directory=$HOME/.vimswap 	" Same for swap files
		"set viewdir=$HOME/.vimviews 	" same but for view files

		" Creating directories if they don't exist
		"silent execute '!mkdir -p $HOME/.vimbackup'
		"silent execute '!mkdir -p $HOME/.vimswap'
		"silent execute '!mkdir -p $HOME/.vimviews'
		"au BufWinLeave * silent! mkview  "make vim save view (state) (folds, cursor, etc)
		"au BufWinEnter * silent! loadview "make vim load view (state) (folds, cursor, etc)
	" 
" 
    set t_Co=16
	"color ir_black     	       		" load a colorscheme
	set background=dark     " Assume a dark background
"    let g:solarized_termtrans=1
    let g:solarized_termcolors=16
"    let g:solarized_contrast="high"
    let g:solarized_visibility="high"
    colorscheme solarized

" Vim UI 
"	colorscheme elflord
	set tabpagemax=15 				" only show 15 tabs
	set showmode                   	" display the current mode

	"set foldenable
	"set fdm=syntax
	"set fdc=5
	highlight Folded guibg=blue guifg=white
	highlight FoldColumn guibg=blue guifg=white


"	set cursorline  				" highlight current line
"	hi CursorLine cterm=NONE ctermbg=darkgrey guibg=#333333 	" highlight bg color of current line
"	hi CursorColumn guibg=#333333   " highlight cursor

	if has('cmdline_info')
		set noruler                  	" show the ruler
"		set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " a ruler on steroids
		set rulerformat=%50(%<%f\ %=\:\b%n%y%m%r%w\ %l,%c%V\ %P\ %)" a statusline, also on steroids
		set showcmd                	" show partial commands in status line and
									" selected characters/lines in visual mode
	endif

	if has('statusline')
		set laststatus=2           	" show statusline only if there are > 1 windows
		" Use the commented line if fugitive isn't installed
        set statusline=%f%m%r%h%w\ %y\ [ASCII=\%03.3b=0x\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L] 
        "set statusline=%f%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L] 
		" set statusline=%<%f\ %=\:\b%n%y%m%r%w\ %l,%c%V\ %P " a statusline, also on steroids
		"set statusline=%<%f\ %h%m%r%fugitive#statusline()%=%-14.(%l,%c%V%)\ %P
	endif

	set backspace=indent,eol,start 	" backspace for dummys
	set linespace=0 				" No extra spaces between rows
	set number 							" Line numbers on
	set showmatch                  	" show matching brackets/parenthesis
	set incsearch 					" find as you type search
	set hlsearch 					" highlight search terms
	set winminheight=0 				" windows can be 0 line high
	set ignorecase 					" case insensitive search
	set smartcase 					" case sensitive when uc present
	set wildmenu 					" show list instead of just completing
	set wildmode=list:longest,full 	" comand <Tab> completion, list matches, then longest common part, then all.
	set whichwrap=b,s,h,l,<,>,[,]	" backspace and cursor keys wrap to
	"set scrolljump=5 				" lines to scroll when cursor leaves screen
	set scrolloff=5 				" minimum lines to keep above and below cursor
	"set foldenable  				" auto fold code
	set gdefault					" the /g flag on :s substitutions by default

" 

" Formatting 
	set wrap                     	" wrap long lines
	set linebreak					" wrap without breaking words
	set autoindent                 	" indent at the same level of the previous line
	set shiftwidth=4               	" use indents of 4 spaces
	set noexpandtab 	       		" tabs are tabs, not spaces
	set tabstop=4 					" an indentation every four columns
	"set matchpairs+=<:>            	" match, to be used with %
	set pastetoggle=<F12>          	" pastetoggle (sane indentation on pastes)
	"set comments=sl:/*,mb:*,elx:*/  " auto format comment blocks
	"set lcs=tab:¦?,trail:·,extends:>,precedes:<,nbsp:&
" 

	set tabstop=4
	set shiftwidth=2
	set softtabstop=2
	set expandtab

" Key Mappings 

	" Easier moving in tabs and windows
	map <C-J> <C-W>j<C-W>_
	map <C-K> <C-W>k<C-W>_
	map <C-L> <C-W>l<C-W>_
	map <C-H> <C-W>h<C-W>_
	map <C-K> <C-W>k<C-W>_
	map <S-H> gT
	map <S-L> gt
        map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
	" Stupid shift key fixes
	cmap W w
	cmap WQ wq
	cmap wQ wq
	cmap Q q
	cmap Tabe tabe

	" Yank from the cursor to the end of the line, to be consistent with C and D.
	nnoremap Y y$

	" Shortcuts
	" Change Working Directory to that of the current file
    cmap cwd lcd %:p:h
" Open and close all the three plugins on the same time 
nmap <F8>   :TrinityToggleAll<CR> 

" Open and close the srcexpl.vim separately 
nmap <F9>   :TrinityToggleSourceExplorer<CR> 

" Open and close the taglist.vim separately 
nmap <F10>  :TrinityToggleTagList<CR> 

" Open and close the NERD_tree.vim separately 
nmap <F11>  :TrinityToggleNERDTree<CR> 
    
" 

" Plugins 

	" VCSCommand 
		let b:VCSCommandMapPrefix=',v'
		let b:VCSCommandVCSType='git'
		""let mapleader = "-"
	"  

	" PIV 
		let g:DisableAutoPHPFolding = 0
	" 

	" Supertab 
		"let g:SuperTabDefaultCompletionType = "context"
		let g:SuperTabContextDefaultCompletionType = "<c-x><c-o>"
	" 

	" Misc 
		:map <C-F10> <Esc>:vsp<CR>:VTree<CR>
		" map Control + F10 to Vtree

		let g:checksyntax_auto = 0

		"comment out line(s) in visual mode
		vmap  o  :call NERDComment(1, 'toggle')<CR>
		let g:NERDShutUp=1

		let b:match_ignorecase = 1
	" 

	" ShowMarks 
		let showmarks_include = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
		" Don't leave on by default, use :ShowMarksOn to enable
		let g:showmarks_enable = 0
		" For marks a-z
		highlight ShowMarksHLl gui=bold guibg=LightBlue guifg=Blue
		" For marks A-Z
		highlight ShowMarksHLu gui=bold guibg=LightRed guifg=DarkRed
		" For all other marks
		highlight ShowMarksHLo gui=bold guibg=LightYellow guifg=DarkYellow
		" For multiple marks on the same line.
		highlight ShowMarksHLm gui=bold guibg=LightGreen guifg=DarkGreen
	" 
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_MayCompleteDot = 1
let OmniCpp_MayCompleteArrow = 1
let OmniCpp_MayCompleteScope = 1
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]

	" OmniComplete 
		"if has("autocmd") && exists("+omnifunc")
			"autocmd Filetype *
				"\if &omnifunc == "" |
				"\setlocal omnifunc=syntaxcomplete#Complete |
				"\endif
		"endif

		" Popup menu hightLight Group
		"highlight Pmenu 	ctermbg=13 	guibg=DarkBlue
		highlight PmenuSel 	ctermbg=7 	guibg=DarkBlue 		guifg=LightBlue
		"highlight PmenuSbar ctermbg=7 	guibg=DarkGray
		"highlight PmenuThumb 			guibg=Black

		hi Pmenu  guifg=#000000 guibg=#F8F8F8 ctermfg=black ctermbg=Lightgray
		hi PmenuSbar  guifg=#8A95A7 guibg=#F8F8F8 gui=NONE ctermfg=darkcyan ctermbg=lightgray cterm=NONE
		hi PmenuThumb  guifg=#F8F8F8 guibg=#8A95A7 gui=NONE ctermfg=lightgray ctermbg=darkcyan cterm=NONE

		" some convenient mappings
		inoremap <expr> <Esc>      pumvisible() ? "\<C-e>" : "\<Esc>"
		inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
		inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
		inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
		inoremap <expr> <C-d> 	   pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<C-d>"
		inoremap <expr> <C-u>      pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<C-u>"

		" automatically open and close the popup menu / preview window
		au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
		set completeopt=menu,longest,preview
	" 

	" Ctags 
        set nocp
        filetype plugin on
		set tags=./tags;/,tags,~/.vimtags,c:/cpp,~/.vim/tags/cpp
        noremap <F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<cr>
        inoremap <F12> <Esc> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<cr>
        let OmniCpp_NamespaceSearch = 1
        let OmniCpp_GlobalSccopeSearch = 1
        let OmniCpp_ShowAccess = 1
        let OmniCpp_MayCompleteDot = 1
        let OmniCpp_MayCompleteArrow = 1
        let OmniCpp_MayCompleteScope = 1
        let OmniCpp_DefaultNamespaces = [ "std", "_GLIBCXX_STD" ]

        au CursorMovedI,InsertLeave * if pumvisible() == 0 | silent! pclose | endif
        set completeopt=menuone,menu,longest,preview
	" 

	" EasyTags 
		let g:easytags_cmd = '/usr/local/bin/ctags'
	" 

	" Delimitmate 
		au FileType * let b:delimitMate_autoclose = 1

		" If using html auto complete (complete closing tag)
        au FileType xml,html,xhtml let b:delimitMate_matchpairs = "(:),[:],:"
	" 

	" AutoCloseTag 
		" Make it so AutoCloseTag works for xml and xhtml files as well
		au FileType xhtml,xml ru ftplugin/html/autoclosetag.vim
	" 

	" SnipMate 
		" Setting the author var
		let g:snips_author = 'Steve Francia <steve.francia@gmail.com>'
		" Shortcut for reloading snippets, useful when developing
		nnoremap ,smr <esc>:exec ReloadAllSnippets()<cr>
	" 
" 

" GUI Settings 
	" GVIM- (here instead of .gvimrc)
	if has('gui_running')
		"set guioptions-=T          	" remove the toolbar
		set guioptions+=b		"horizontal scrollbar
		set lines=40               	" 40 lines of text instead of 24,
	endif
" 

" Windows Compatible 
	" On Windows, also use '.vim' instead of 'vimfiles'; this makes synchronization
	" across (heterogeneous) systems easier.
	if has('win32') || has('win64')
	  "set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
	endif
" 

"au BufNewFile,BufRead *.cl set filetype=cpp

    set ssop-=options "do not store variables in session file

    set diffopt+=iwhite "ignore whitespaces in vimdiff

noremap <silent> <Leader>w :call ToggleWrap()<CR>
function ToggleWrap()
  if &wrap
    echo "Wrap OFF"
    setlocal nowrap
    set virtualedit=all
    silent! nunmap <buffer> <Up>
    silent! nunmap <buffer> <Down>
    silent! nunmap <buffer> <Home>
    silent! nunmap <buffer> <End>
    silent! iunmap <buffer> <Up>
    silent! iunmap <buffer> <Down>
    silent! iunmap <buffer> <Home>
    silent! iunmap <buffer> <End>
  else
    echo "Wrap ON"
    setlocal wrap linebreak nolist
    set virtualedit=
    setlocal display+=lastline
    noremap  <buffer> <silent> <Up>   gk
    noremap  <buffer> <silent> <Down> gj
    noremap  <buffer> <silent> <Home> g<Home>
    noremap  <buffer> <silent> <End>  g<End>
    inoremap <buffer> <silent> <Up>   <C-o>gk
    inoremap <buffer> <silent> <Down> <C-o>gj
    inoremap <buffer> <silent> <Home> <C-o>g<Home>
    inoremap <buffer> <silent> <End>  <C-o>g<End>
  endif
endfunction
