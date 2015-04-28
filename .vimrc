"
"  My vimrc, generated by all the love and help of the Internet
"
"  IndexXuan@gmail.com
"
"  https://github.com/IndexXuan
"
"  weibo@IndexXuan (http://weibo.com/u/3180300392)
"
"  copyright 2015 IndexXuan
"                _
"        __   __(_)_ __ ___
"        \ \ / /| | '_ ` _ \
"         \ V / | | | | | | | --- great and lovely
"          \_/  |_|_| |_| |_|
"
" test for ubuntu-14.04
"

set nocompatible

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" ----- Making Vim look good ------------------------------------------
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'bling/vim-airline'

" ----- Vim as a programmer's text editor -----------------------------
"
" Make Vim persist editing state without fuss
" --> https://github.com/kopischke/vim-stay
Plugin 'kopischke/vim-stay'
" Yet another JavaScript Syntax for Vim --> https://github.com/othree/yajs.vim
Plugin 'othree/yajs.vim'
" Open URL with your favorite browser from you favorite editor
" --> https://github.com/vim-scripts/open-browser.vim
" because of China you know, switch default search_engine to baidu in
" source code of Plugin 20150422, a great plugin
Plugin 'tyru/open-browser.vim'
" vim interface to Web API --> https://github.com/mattn/webapi-vim
Plugin 'mattn/webapi-vim'
" Commenton Github straight from within Vim.
" --> https://github.com/mmozuras/vim-github-comment
"Plugin 'mmozuras/vim-github-comment'
" a tree explorer plugin for vim
Plugin 'scrooloose/nerdtree'
" NERDTree and tabs together in vim, painlessly
Plugin 'jistr/vim-nerdtree-tabs'
" syntax checker for vim and you need a specific checker for real use
Plugin 'scrooloose/syntastic'
" auto load vim scripts
Plugin 'xolox/vim-misc'
" automated tag file generation and syntax highlighting of tags in vim
Plugin 'xolox/vim-easytags'
" Vim Plugin that displays tags in a window, ordered by scope
Plugin 'majutsushi/tagbar'
" You Know !!!
Plugin 'Valloric/YouCompleteMe'
" go to anything like sublime
Plugin 'kien/ctrlp.vim'
" improve ctrlP, like goto functions
Plugin 'tacahiroy/ctrlp-funky'
" Open a new SSH connection via ctrlp.vim interface
"Plugin 'vim-scripts/ctrlp-ssh'
" sublime-like multiple line edit tool
Plugin 'terryma/vim-multiple-cursors'
" switch between source files and header files quickly
Plugin 'vim-scripts/a.vim'
" intensely orgasmic commenting <leader>cc, <leader>ci to toggle
Plugin 'scrooloose/nerdcommenter'
"autosave for vim --> https://github.com/907th/vim-auto-save
Plugin 'vim-scripts/vim-auto-save'
" a Vim alignment plugin
Plugin 'junegunn/vim-easy-align'
" Open file under cursor when pressing gf(if the text is a path)
Plugin 'amix/open_file_under_cursor.vim'
" snippets
" Plugin 'Shougo/neocomplcache.vim'
" vim-move, a Plugin to move lines and selections up and down -->
" https://github.com/matze/vim-move
" Plugin 'matze/vim-move'
" UtilSnips
Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them.
Plugin 'honza/vim-snippets'
" UtilSnips-css
Plugin 'rstacruz/vim-ultisnips-css'

" ----- Working with Git ----------------------------------------------
" show git diff in the file
Plugin 'airblade/vim-gitgutter'
" git wrapper
Plugin 'tpope/vim-fugitive'

" ----- Other text editing features -----------------------------------
" vim  auto-completion for quotes,parens,brackets, etc.
Plugin 'Raimondi/delimitMate'

" ----- man pages, tmux -----------------------------------------------
" vim-plugin for bash man command ??
Plugin 'jez/vim-superman'
" navigation between tmux panes and vim splits, e.g.<c-h> move to left panel
" ctrl + j/k/h/l   进行上下左右窗口跳转,不需要ctrl+w+jkhl
Plugin 'christoomey/vim-tmux-navigator'

" ----- Syntax plugins ------------------------------------------------
" vim syntax highlighting for C0 ???
" Plugin 'jez/vim-c0'
" vim syntax highlighting for ISPC ???
" Plugin 'jez/vim-ispc'
" vim syntax highlighting for coffee-script
" Plugin 'kchmck/vim-coffee-script'
" helps editing xmd(xhtml,...) files
Plugin 'othree/xml.vim'
" HTML5 omnicomplete and syntax --> https://github.com/othree/html5.vim
Plugin 'othree/html5.vim'
" HTML5 syntax file for vim
Plugin 'othree/html5-syntax.vim'
" show color in html, css, scss file, like sublime plugin
Plugin 'gorodinskiy/vim-coloresque'
" for javascript
Plugin 'marijnh/tern_for_vim'
" for markdown
Plugin 'hallison/vim-markdown'
" for jquery
Plugin 'nono/jquery.vim'
" for scss
Plugin 'cakebaker/scss-syntax.vim'
" Enhanced javascript syntax file for Vim -->
" https://github.com/jelera/vim-javascript-syntax
Plugin 'jelera/vim-javascript-syntax'
" for javascript --> https://github.com/pangloss/vim-javascript
Plugin 'pangloss/vim-javascript'
" Generate JsDoc to your JavaScript code.
"-->  https://github.com/heavenshell/vim-jsdoc.
"usage: cursur in function and <C-l> or :JsDoc
Plugin 'heavenshell/vim-jsdoc'
" Grunt wrapper for vim, -->  https://github.com/mklabs/grunt.vim
Plugin 'mklabs/grunt.vim'



" ---- Extras/Advanced plugins ----------------------------------------
" Highlight and strip trailing whitespace,
" too sensitive to use, drop in 20150427
"Plugin 'ntpeters/vim-better-whitespace'
" Easily surround chunks of text
" Plugin 'tpope/vim-surround'
" Align CSV files at commas, align Markdown tables, and more
" Plugin 'godlygeek/tabular'
" Automaticall insert the closing HTML tag
Plugin 'HTML-AutoCloseTag'
" Make tmux look like vim-airline (read README for extra instructions)
" Plugin 'edkolev/tmuxline.vim'
" All the other syntax plugins I use
" Plugin 'ekalinin/Dockerfile.vim'
" Plugin 'digitaltoad/vim-jade'
" Plugin 'tpope/vim-liquid'

" HTML Tag match-highlighter
Plugin 'MatchTag'
" js-html-css-beautify
Plugin 'maksimr/vim-jsbeautify'
" emmet
Plugin 'mattn/emmet-vim'

call vundle#end()

filetype plugin indent on

" --- leader key settings, great to use ';' ---
let mapleader = ";"
let g:mapleader = ";"

" --- General settings ---

" ...
set backspace=indent,eol,start
" show line number
set number
"显示当前的行号列号：
set ruler
"在状态栏显示正在输入的命令
set showcmd
" 左下角显示当前vim模式
"set showmode

" 文内智能搜索提示 settings
" 高亮search命中的文本。
set hlsearch
" 打开增量搜索模式,随着键入即时搜索
set incsearch
" after search, press leader + / or space to cancel highlight of search results, very useful.
"nmap <silent> <leader>/ :nohlsearch<CR>
nmap <silent> <Space> :nohlsearch<CR>
" 搜索时忽略大小写
set ignorecase
" 有一个或以上大写字母时仍大小写敏感
" ignore case if search pattern is all lowercase,
" case-sensitive otherwise
set smartcase

" highlight current line, a great set.
set cursorline

" backspace in Visual mode deletes selection
vnoremap <BS> d

syntax on

" no wrap line
set nowrap
"can use mouse
set mouse=a
"set bs=2                    "在insert模式下用退格键删除

" tab相关变更
set tabstop=4     " 设置Tab键的宽度        [等同的空格个数]
set shiftwidth=4  " 每一次缩进对应的空格数
set softtabstop=4 " 按退格键时可以一次删掉 4 个空格
" insert tabs on the start of a line according to
" shiftwidth, not tabstop 按退格键时可以一次删掉 4 个空格
set smarttab
" 将Tab自动转化成空格    [需要输入真正的Tab键时，使用
" Ctrl+V + Tab]
" 缩进时，取整 use multiple of shiftwidth when indenting
" with '<' and '>']
set shiftround

set autoread                "文件在Vim之外修改过，自动重新读入

set helplang=cn             "帮助系统设置为中文

set noeb

set confirm

" 缩进配置
set smartindent   " Smart indent
set autoindent    " 打开自动缩进
"set cindent

" 括号配对情况,跳转并高亮一下匹配的括号
set showmatch
" How many tenths of a second to blink when matching brackets
set matchtime=1

" file format settings
set fileencodings=utf-8,gk2312,gbk,gb18030
set termencoding=utf-8
set fileformats=unix
set encoding=utf-8

set laststatus=2

set scrolloff=5

" 代码折叠 make large file slow ???
"set foldenable
" 折叠方法
" manual    手工折叠
" indent    使用缩进表示折叠
" expr      使用表达式定义折叠
" syntax    使用语法定义折叠
" diff      对没有更改的文本进行折叠
" marker    使用标记进行折叠, 默认标记是 {{{ 和 }}}
"set foldlevel=99
"set foldmethod=manual
"  可组合 {} () <> []使用
" zc 关闭当前打开的折叠
" zo 打开当前的折叠
" zm 关闭所有折叠
" zM 关闭所有折叠及其嵌套的折叠
" zr 打开所有折叠
" zR 打开所有折叠及其嵌套的折叠
" zd 删除当前折叠
" zE 删除所有折叠
" zj 移动至下一个折叠
" zk 移动至上一个折叠
" zn 禁用折叠
" zN 启用折叠}

" load when other editor change it
set autoread
"set clipboard=unnamed " share clipboard
"set clipboard=unnamedplus
" ref --> http://www.cnblogs.com/jianyungsun/archive/2012/07/31/2616671.html
set clipboard=unnamed,unnamedplus

" nobackup
set nobackup
set noswapfile

set autowrite " save itsekf

" -------------------- Theme settings -------------------------

" Theme settings, very important and useful
set background=dark
" Set the colorscheme
colorscheme monokai
" set this to make airline show well
set t_Co=256

" -------------------- Plugin-Specific Settings --------------------
"
" ----- emmet settings, great to use Tab -----
let g:user_emmet_mode='i'
let g:user_emmet_install_global = 0
autocmd FileType html,css,scss EmmetInstall

" let g:user_emmet_mode='a'
" it works, very luck and same with sublime, aha~,
" before set -> let g:user_emmet_leader_key='<C-Z>' work doesn't well...
let g:user_emmet_expandabbr_key = '<Tab>'


" ----- bling/vim-airline settings -----
let g:airline_theme='badwolf'
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:airline_exclude_filename = []
let g:Powerline_symbols='fancy'
let g:airline_powerline_fonts=0
let Powerline_symbols='fancy'
let g:bufferline_echo=0

let g:airline_left_sep = '▶'
let g:airline_left_alt_sep = '❯'
let g:airline_right_sep = '◀'
let g:airline_right_alt_sep = '❮'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
set fillchars+=stl:\ ,stlnc:\
" Fancy arrow symbols, requires a patched font
" To install a patched font, run over to
"     https://github.com/abertsch/Menlo-for-Powerline
" download all the .ttf files, double-click on them and click "Install"
" Finally, uncomment the next line

" Show PASTE if in paste mode
let g:airline_detect_paste=1

" Show airline for tabs too
let g:airline#extensions#tabline#enabled = 1


" ----- jistr/vim-nerdtree-tabs -----
" Open/close NERDTree Tabs with \t
nmap <silent> <leader>t :NERDTreeTabsToggle<CR>
" To have NERDTree always open on startup
let g:nerdtree_tabs_open_on_console_startup = 0

" ----- scrooloose/syntastic settings -----
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"
augroup Syntastic
	au!
	au FileType tex let b:syntastic_mode = "passive"
augroup END


" ----- xolox/vim-easytags settings -----
" Where to look for tags files
set tags=./tags;,~/.vimtags
" Sensible defaults
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1


" ----- majutsushi/tagbar settings -----
" Open/close tagbar with \b
nmap <silent> <leader>b :TagbarToggle<CR>
" Uncomment to open tagbar automatically whenever possible
"autocmd BufEnter * nested :call tagbar#autoopen(0)


" ----- airblade/vim-gitgutter settings -----
" Required after having changed the colorscheme
hi clear SignColumn
" In vim-airline, only display "hunks" if the diff is non-zero
let g:airline#extensions#hunks#non_zero_only = 1


" ----- Raimondi/delimitMate settings -----
let delimitMate_expand_cr = 1
augroup mydelimitMate
	au!
	au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
	au FileType tex let b:delimitMate_quotes = ""
	au FileType tex let b:delimitMate_matchpairs = "(:),[:],{:},`:'"
	au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
augroup END


" ----- YouCompleteMe settings -----
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
nnoremap <leader>go :YcmCompleter GoToDefinitionElseDeclaration<CR>

" ----- CtrlP settings, open anything plugin like sublime -----
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPMixed' " mixed mode is more useful and smart
let g:ctrlp_working_path_mode = 'ra'
"let g:ctrlp_extensions = ['funky', 'ssh']
let g:ctrlp_extensions = ['funky']

" ----- sublime-like htmlcssjs-beautify settings -----
" ----- however, C-S-h is same like C-h due to keycode in vim ------
map <C-S-h> :call JsBeautify()<CR>
autocmd FileType javascript noremap <buffer> <C-S-h> :call JsBeautify()<CR>
" for html
autocmd FileType html noremap <buffer> <C-S-h> :call HtmlBeautify() <CR>
" for css
autocmd FileType css noremap <buffer> <C-S-h> :call CSSBeautify<CR>

" want beautify only selected lines
autocmd FileType javascript vnoremap <buffer> <C-S-h> :call RangeJsBeautify()<CR>
autocmd FileType html vnoremap <buffer> <C-S-h> :call RangeHtmlBeautify()<CR>
autocmd FileType css vnoremap <buffer> <C-S-h> :call RangeCSSBeautify()<CR>
autocmd FileType scss vnoremap <buffer> <C-S-h> :call RangeCSSBeautify()<CR>


" ----- CtrlPFunky settings -----
nnoremap <leader>fu :CtrlPFunky<CR>
" narrow the list down with a word under cursor
nnoremap <leader>fU :execute 'CtrlPFunky' . expend('<cword>')<CR>
let g:ctrlp_funky_matchtype = 'path'
let g:ctrlp_funky_syntax_highlight = 1


" ----- vim-stay settings -----
" for vim-stay Plugin recommend set
set viewoptions=cursor,folds,slash,unix


" ----- vim-autosave settings -----
let g:auto_save = 1  " enable AutoSave on Vim startup"
let g:auto_save_no_updatetime = 1  " do not change the 'updatetime' option"
let g:auto_save_in_insert_mode = 0  " do not save while in insert mode"
let g:auto_save_silent = 1  " do not display the auto-save notification"
"let g:auto_save_events = ["InsertLeave", "TextChanged"]


" ----- open-browser settings -----
" if it looks like URI, Open URI under cursor.
" Otherwise, Search word under cursor.
nmap <C-g> <Plug>(openbrowser-smart-search)
" If it looks like URI, Open selected URI.
" Otherwise, Search selected word.
vmap <C-g> <Plug>(openbrowser-smart-search)


" ----- vim-javascript and vim-javascript-syntax settings ------
let g:javascript_enable_domhtmlcss = 1
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

" -------------------- useful functions --------------------

map <leader>a :call CompileRun()<CR>
function CompileRun()
	exec "w"
	exec "!clear"
	"exec "!gcc % -o -%:r"
	"exec "!time ./%<"
	"exec "!./%<"

	exec "!gcc % -o %<"
	exec "! ./%<"
	exec "!time ./%<:"
endfunction

map <F12> :call CompileRunGcc()<CR>
func! CompileRunGcc()
	exec "w"
	if &filetype == 'c'
		exec "!gcc % -o %<"
		exec "! ./%<"
		exec "!time ./%<:"
	elseif &filetype == 'cpp'
		exec "!g++ % -o %<:"
		exec "!time ./%<"
	elseif &filetype == 'java'
		exec "!javac %"
		exec "!time java -cp %:p:h %:t:r"
	elseif &filetype == 'html'
		exec "!chromium-browser % &"
		exec "!clear"
	endif
endfunc

" ----- auto-SetTitle when create file in target fileType -----
autocmd BufNewFile *.cpp,*.c,*.sh,*.java,*.css,*.js,*.scss exec ":call SetTitle()"
func SetTitle()
	if &filetype == 'sh'
		call setline(1,"\#################################################)
		call append(line("."),   "\# File Name: ".expand("%"))
		call append(line(".")+1, "\# Author: IndexXuan")
		call append(line(".")+2, "\# mail: indexxuan@gmail.com")
		call append(line(".")+3, "\# Created Time: ".strftime("%c"))
		call append(line(".")+4, "\#################################################")
		call append(line(".")+5, "\#!/bin/bash")
		call append(line(".")+6, "")
	else 
		call setline(1, "/*******************************************************")
		call append(line("."), "    > File Name: ".expand("%"))
		call append(line(".")+1, "    > Author: IndexXuan")
		call append(line(".")+2, "    > Mail: pengruixiaoxuan@gmail.com")
		call append(line(".")+3, "    > Created Time: ".strftime("%c"))
		call append(line(".")+4, " ******************************************************/")
		call append(line(".")+5, "")
	endif

	if &filetype == 'c'
		call append(line(".") + 6, "#include <stdio.h>")
		call append(line(".") + 7, "")
	elseif &filetype =='cpp'
		call append(line(".") + 6, "#include <iostream>")
		call append(line(".") + 7, "using namespace std;")
		call append(line(".") + 8, "")
	endif
	" to the end of the file when file created
	autocmd BufNewFile * normal G
endfunc


function! JumpToCSS()
	let id_pos = searchpos("id", "nb", line('.'))[1]
	let class_pos = searchpos("class", "nb", line('.'))[1]

	if class_pos > 0 || id_pos > 0
		if class_pos < id_pos
			execute ":vim '#".expand('<cword>')."' **/*.css"
		elseif class_pos > id_pos
			execute ":vim '.".expand('<cword>')."' **/*.css"
		endif
	endif
endfunction

nnoremap <leader>gocss :call JumpToCSS()<CR>

" ------------------- map settings --------------------

" jj as Esc, very useful setting, great, great, great!!!
inoremap jj <Esc>

" indent global
nnoremap = ggVG=

" find, very natural
map <C-f> /

" CTRL-A is Select all
noremap <C-A> gggH<C-O>G
inoremap <C-A> <C-O>gg<C-O>gH<C-O>G
cnoremap <C-A> <C-C>gggH<C-O>G
onoremap <C-A> <C-C>gggH<C-O>G
snoremap <C-A> <C-C>gggH<C-O>G
xnoremap <C-A> <C-C>ggVG

" Cut, Paste, Copy
vmap <C-x> d
vmap <C-v> p
vmap <C-c> y

" Undo, Redo (broken)
nnoremap <C-z>  :undo<CR>
inoremap <C-z>  <Esc>:undo<CR>
nnoremap <C-r>  :redo<CR>
inoremap <C-r>  <Esc>:redo<CR>

nmap <leader>w :w!<CR>
nmap <leader>x :x<CR>
nmap <leader>q :wq!<CR>
nmap QQ :q!<CR>
nmap <leader>s :shell<CR>
map <leader>f :find<CR>

" use 'y' because in keyboard, y is after 't', so mean next tab ~
nnoremap <C-y>  :tabnext<CR>
inoremap <C-y>  <Esc>:tabnext<CR>i
nnoremap <C-t>  :tabnew<CR>
inoremap <C-t>  <Esc>:tabnew<CR>i
nnoremap <C-c>  :tabclose<CR>
inoremap <C-c>  <Esc>:tabclose<CR>i

" write to file which is not permitted
cmap w!! w !sudo tee % >/dev/null







" Temp Area ----------------------------- something just in test for use
" if use well, will move to place it should be...
"let g:github_user ='IndexXuan'
"let g:github_comment_open_browser = 1

set omnifunc=syntaxcomplete#Complete
if has("autocmd") && exists("+omnifunc")
	autocmd Filetype *
				\   if &omnifunc == "" |
				\       setlocal omnifunc=syntaxcomplete#Complete |
				\   endif
endif

" to along with the terminal's transparent, should set ctermbg to none...
" but make color scheme ugly... so, disabled it...
"hi Normal ctermbg=none ctermfg=none

" Shortcuts
" Change Working Directory to that of the current file
cmap cwd lcd %:p:h
cmap cd lcd %:p:h

" Quickfix open,
" if qc, will make <leader>q(to quit) very slow... you know, will wait
" for input done and then to quit...
nnoremap <leader>Q :copen<CR>

" Quickfix close, QQ is also done, so comment this
"nnoremap <leader>Qc :ccl<CR>

" 命令行模式增强，ctrl - a到行首， -e 到行尾
cnoremap <C-j> <t_kd>
cnoremap <C-k> <t_ku>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

"" for error highlight，防止错误整行标红导致看不清
highlight clear SpellBad
highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline
highlight clear SpellCap
highlight SpellCap term=underline cterm=underline
highlight clear SpellRare
highlight SpellRare term=underline cterm=underline
highlight clear SpellLocal
highlight SpellLocal term=underline cterm=underline

"设置标记一列的背景颜色和数字一行颜色一致
hi! link SignColumn   LineNr
hi! link ShowMarksHLl DiffAdd
hi! link ShowMarksHLu DiffChange

" 自动补全配置
" "让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
set completeopt=longest,menu
" 增强模式中的命令行自动完成操作
set wildmenu
" Ignore compiled files
set wildignore=*.o,*~,*.pyc,*.class

" ----- EasyAlign settings -----
"  可以选中多行;不选中默认操作当前行
"  ;a= 对齐等号表达
"  ;a: 对齐冒号表达式(json/map等)
"  ;a<space>  首个空格对齐
"  ;a2<space> 第二个空格对齐
"  ;a*<space> 所有空格依次对齐
vmap <Leader>a <Plug>(EasyAlign)
nmap <Leader>a <Plug>(EasyAlign)
if !exists('g:easy_align_delimiters')
	let g:easy_align_delimiters = {}
endif
let g:easy_align_delimiters['#'] = { 'pattern': '#', 'ignore_groups': ['String'] }

" select and it will selected, new to know in 20150425
behave mswin

autocmd FileType javascript setlocal omnifunc=tern#Complete

"imap <C-v> <Esc>"*pa
"imap <C-a> <Esc>^
"imap <C-e> <Esc>$
"vmap <C-c> "+y

"set mousemodel=popup

"au FileType php setlocal dict+=~/.vim/dict/php_funclist.dict
"au FileType css setlocal dict+=~/.vim/dict/css.dict
"au FileType c setlocal dict+=~/.vim/dict/c.dict
"au FileType cpp setlocal dict+=~/.vim/dict/cpp.dict
"au FileType scale setlocal dict+=~/.vim/dict/scale.dict
"au FileType javascript setlocal dict+=~/.vim/dict/javascript.dict
"au FileType html setlocal dict+=~/.vim/dict/javascript.dict
"au FileType html setlocal dict+=~/.vim/dict/css.dict

" ----- vim-jquert settings -----
au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery

" ----- UltiSnippets settings -----
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="ii"
let g:UltiSnipsJumpForwardTrigger="II"
let g:UltiSnipsJumpBackwardTrigger="OO""

