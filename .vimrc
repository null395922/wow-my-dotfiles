"
"                _
"        __   __(_)_ __ ____
"        \ \ / /| | '_ ` _  \
"         \ V / | | | | | | | --- great and cute 
"          \_/  |_|_| |_| |_|
"
"  My vimrc, generated by all the love and help of the Internet
"
"
"  indexxuan@gmail.com
"
"  https://github.com/IndexXuan
"
" ====================================================================
"
"  including 6 parts:
"  
"  1. General Settings
"
"  2. Plugins
"  
"  3. Functions
"
"  4. KeyMap 
"
"  5. Temp Area
"
"  6. ChangeLog
"
"
"  copyright 2015-2016 IndexXuan
"
"
"  test for ubuntu-14.04
"
" ====================================================================
 
" plugins on
" basic mode for vimruntime without plugins
let g:basicmode = 0

" plugin manager
let g:manager = 'Plug'
"let g:manager = 'Vundle'

" Must be first line
set nocompatible

" leader
let mapleader = ";"
let g:mapleader = ";"

" --------------------------------------------------------------------
" -------------------------     Plugins    ---------------------------
" --------------------------------------------------------------------
if filereadable(expand("~/.vim/.vimrc.plugins"))
  if basicmode == 0
    if manager == 'Plug'
      source ~/.vim/.vimrc.plugins
    endif
    if manager == 'Vundle'
      source ~/.vim/.vimrc.bundles
    endif
  endif
endif

" --------------------------------------------------------------------
" -------------------------    Settings    ---------------------------
" --------------------------------------------------------------------

syntax on

" show the current typing command
set showcmd 

" for regular expressions turn magic on
set magic 

set backspace=indent,eol,start
" not show line number
set nonu 
" 在状态栏显示正在输入的命令

" set showcmd
" 左下角显示当前vim模式

" 退出vim后在终端留下文件内容，可以理解为残影
"set t_ti= t_te=


" 高亮search命中的文本。
set hlsearch
" 打开增量搜索模式,随着键入即时搜索
set incsearch
" after search, press space to cancel highlight of search results, very useful.
nmap <silent> <Space> :nohlsearch<CR>
" 搜索时忽略大小写
set ignorecase
" case-sensitive 
set smartcase

" highlight current line, a great set if you have great theme...
set cursorline

" backspace in Visual mode deletes selection
vnoremap <BS> d

" no wrap line
set nowrap

" can use mouse
set mouse=a

set tabstop=4     " 设置Tab键的宽度        [等同的空格个数]
set shiftwidth=4  " 每一次缩进对应的空格数
set softtabstop=4 " 按退格键时可以一次删掉的空格数
set expandtab " control whether change tab to space, add in 20150722
set smarttab  

" 缩进配置
set smartindent   " Smart indent
set autoindent    " 打开自动缩进

set shiftround

" 文件在vim之外修改过，自动重新读入
set autoread 

" 去掉错误提示音
set noeb

" 括号配对情况,跳转并高亮一下匹配的括号
set showmatch

" How many tenths of a second to blink when matching brackets
set matchtime=1

" file format settings
set fileencodings=utf-8,gk2312,gbk,gb18030
set termencoding=utf-8
set fileformats=unix
set encoding=utf-8

" for statusline(like airline) always display
set laststatus=2

set scrolloff=5

" 代码折叠 make large file slow ???
" set foldenable
" 折叠方法
" manual    手工折叠
" indent    使用缩进表示折叠
" expr      使用表达式定义折叠
" syntax    使用语法定义折叠
" diff      对没有更改的文本进行折叠
" marker    使用标记进行折叠, 默认标记是 {{{ 和 }}}
" set foldlevel=99
" set foldmethod=manual
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
" zN 启用折叠

" load when other editor change it
set autoread

" ref --> http://www.cnblogs.com/jianyungsun/archive/2012/07/31/2616671.html
"set clipboard=unnamedplus
"set clipboard=unnamed

" nobackup
set nobackup
set noswapfile

" -------------------- Theme and UI -------------------

" no split line bar, focus on code only
set background=dark
" Set the colorscheme
"colorscheme monokai
colorscheme molokai
"colorscheme desertink 
"colorscheme late_evening
"colorscheme triplejelly

" make ternimal beautiful and airline show well
set t_Co=256

" key to make ternimal transparent, 256 is not ok
hi Normal ctermbg=none ctermfg=255

" for error highlight，防止错误整行标红导致看不清
highlight clear SpellBad
highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline
highlight clear SpellCap
highlight SpellCap term=underline cterm=underline
highlight clear SpellRare
highlight SpellRare term=underline cterm=underline
highlight clear SpellLocal
highlight SpellLocal term=underline cterm=underline

" 设置标记一列的背景颜色和数字一行颜色一致
hi! link SignColumn   LineNr
hi! link ShowMarksHLl DiffAdd
hi! link ShowMarksHLu DiffChange

set omnifunc=syntaxcomplete#Complete
if has("autocmd") && exists("+omnifunc")
    autocmd Filetype *
                \   if &omnifunc == "" |
                \       setlocal omnifunc=syntaxcomplete#Complete |
                \   endif
endif

" Quickfix close, QQ is also done, so comment this
"nnoremap <leader>Qc :ccl<CR>

" 自动补全配置
" "让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
set completeopt=longest,menu
" 增强模式中的命令行自动完成操作
set wildmenu
" Ignore compiled files
set wildignore=*.o,*~,*.pyc,*.class

" --------------------------------------------------------------------
" -------------------------    Functions   ---------------------------
" --------------------------------------------------------------------

map <leader>a :call CompileRun()<CR>
function CompileRun()
    exec "w"
    if &filetype == 'c'
        exec "!gcc % -o %<"
        exec "! ./%<"
        exec "!time ./%<:"
    elseif &filetype == 'cpp'
        exec "!g++ % -o %<"
        exec "!time ./%<"
    elseif &filetype == 'javascript'
        exec "!node %"
        exec "!clear"
    endif
endfunction

map <F12> :call Run()<CR>
func! Run()
    exec "w"
    if &filetype == 'c'
        exec "!gcc % -o %<"
        exec "! ./%<"
        exec "!time ./%<:"
    elseif &filetype == 'cpp'
        exec "!g++ % -o %<"
        exec "!time ./%<"
    elseif &filetype == 'java'
        exec "!javac %"
        exec "!time java -cp %:p:h %:t:r"
    elseif &filetype == 'html'
        exec "!google-chrome % &"
        exec "!clear"
    elseif &filetype == 'xml'
        exec "!google-chrome % &"
        exec "!clear"
    elseif &filetype == 'javascript'
        exec "!google-chrome % &"
        exec "!clear"
    elseif &filetype == 'javascript.jsx'
        exec "!google-chrome % &"
        exec "!clear"
    endif
endfunc

" ----- auto-setTitle when create file in target fileType -----
autocmd BufNewFile *.cpp,*.c,*.sh,*.java,*.css,*.js,*.scss,*.less exec ":call SetTitle()"
func SetTitle()
    if &filetype == 'sh'
        call setline(1,"\#################################################")
        call append(line("."), "\# Author : IndexXuan(https://github.com/IndexXuan)")
        call append(line(".")+1, "\# Mail   : indexxuan@gmail.com")
        call append(line(".")+2, "\# Date   : ".strftime("%c"))
        call append(line(".")+3, "\#################################################")
        call append(line(".")+4, "\#!/bin/bash")
        call append(line(".")+5, "")
    else 
        call setline(1,         "/**")
        call append(line("."),   " *  TODO: file intro...")
        call append(line(".")+1, " *  ---------------------------------------------")
        call append(line(".")+2, " *  Author : IndexXuan(https://github.com/IndexXuan)")
        call append(line(".")+3, " *  Mail   : indexxuan@gmail.com")
        call append(line(".")+4, " *  Date   : ".strftime("%c"))
        call append(line(".")+5, " */")
        call append(line(".")+6, "")
    endif

    if &filetype == 'c'
        call append(line(".")+5, "#include <stdio.h>")
        call append(line(".")+6, "")
    elseif &filetype =='cpp'
        call append(line(".")+5, "#include <iostream>")
        call append(line(".")+6, "using namespace std;")
        call append(line(".")+7, "")
    endif
    " to the end of the file when file created
    autocmd BufNewFile * normal G
endfunc

" ----- auto-generate vue component when create vue file -----
autocmd BufNewFile *.vue exec ":call GenerateVue()"
func GenerateVue()
    if &filetype == 'vue'
        call setline(1,           "<template>")
        call append(line("."),    "  ")
        call append(line(".")+1,  "</template>")
        call append(line(".")+2,  "")
        call append(line(".")+3,  "<style lang=\"sass\">")
        call append(line(".")+4,  "  ")
        call append(line(".")+5,  "</style>")
        call append(line(".")+6,  "")
        call append(line(".")+7,  "<script>")
        call append(line(".")+8,  "  export default {")
        call append(line(".")+9, "    data() {")
        call append(line(".")+10, "      return {") 
        call append(line(".")+11, "         ")
        call append(line(".")+12, "      }")
        call append(line(".")+13, "    }")
        call append(line(".")+14, "  }")
        call append(line(".")+15, "</script>")
    endif

    " to the end of the file when file created
    autocmd BufNewFile * exe "normal G"
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

" do not have a good name...
nnoremap <leader>jc :call JumpToCSS()<CR>


" --------------------------------------------------------------------
" -------------------------     KeyMaps    ---------------------------
" --------------------------------------------------------------------

" jj as Esc, very useful setting, great, great, great!!!
inoremap jj <Esc>

" Treat long lines as break lines, useful when moving around in them
"nnoremap j gj
"nnoremap k gk

" shell-like move, very very very powerful, the key in insert mode
inoremap <C-b> <left>
inoremap <c-f> <Right>
inoremap <C-n> <Down>
inoremap <C-p> <Up>
imap <C-a> <Home> 
imap <C-e> <End>
imap <C-d> <Del>
imap <C-h> <BS>
inoremap <C-u> <Esc>d0cl
inoremap <C-w> <Esc>dbcl

" Smart way to move between windows, no need to use vim-tmux-navigator plugin
noremap <C-j> <C-W>j
noremap <C-k> <C-W>k
noremap <C-h> <C-W>h
noremap <C-l> <C-W>l

nmap <leader>q :x<CR>
nmap QQ :q!<CR>

nmap <leader>w :w!<CR>

" write to file which is not permitted
cmap w!! w !sudo tee % >/dev/null

" !!!超级好用!!! 全局批量替换
nnoremap <leader>s ggVG:s//g<left><left>

" !!!超级好用!!! 全局精准批量替换, 输入单词， 然后换成目标单词
nnoremap <leader>r :%s/\<\>//g<left><left><left><left><left>

" Vmap for maintain Visual Mode after shifting > and <
vnoremap < <gv
vnoremap > >gv

" goto older/newer position in change list, very powerful
nnoremap <silent> ) g;
nnoremap <silent> ( g,

" remap U to <C-r> for easier redo
nnoremap U <C-r>

" nmap <leader>s :shell<CR>
map <leader>f :find<CR>

" 20150509, add some feature for fast and easy move
nmap e ^
nmap f $

" 20150611, fast the jump, shift key is hard to press
nnoremap [ {
nnoremap ] }
nnoremap 9 (
nnoremap 0 )
nnoremap 5 %

" find, very natural
map <C-f> /

" toggle paste mode in vim, very useful. 20150709
set pastetoggle=<F5>

" indent global
nnoremap = gg=G

" retab! 
nnoremap -- :retab!<CR>

" Y need remap for useful
nnoremap Y y$

" delete to the line begin 
nnoremap DD d^

" great, paste and auto in the bottom of the paste content, very useful!
vnoremap <silent> y y`]
nnoremap <slient> p p`]
nnoremap <silent> p p`]

" ----- tab -----
" use 'y' because in keyboard, y is after 't', so mean next tab ~
" mutil file edit is very often, 
" so tabnext is very important, so map to tt 20150714
" nnoremap <C-y>  :tabnext<CR>
nnoremap tt     :tabnext<CR>
" inoremap <C-y>  <Esc>:tabnext<CR>i

" add in 20150806, tab use often now
nnoremap rr     :tabprevious<CR> 
" inoremap <C-y>  <Esc>:tabpreviews<CR>i

nnoremap <C-t>  :tabnew<CR>
inoremap <C-t>  <Esc>:tabnew<CR>i
nnoremap <C-c>  :tabclose<CR>
inoremap <C-c>  <Esc>:tabclose<CR>i

" better command line editing
cnoremap <C-j> <t_kd>
cnoremap <C-k> <t_ku>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

" Change Working Directory to that of the current file, do not know usage
"cmap cwd :lcd %:p:h
"cmap cd :lcd %:p:h

" Quickfix open,
" if <leader>qf, will make <leader>q(to quit) very slow... you know, will wait
" for input done and then to quit...
nnoremap qf :copen<CR>

" treat tpl, tmpl as html, add in 20160314 
autocmd BufNewFile,BufRead *tpl set filetype=html
autocmd BufNewFile,BufRead *tmpl set filetype=html

" --------------------------------------------------------------------
" -------------------------    Temp Area   ---------------------------
" --------------------------------------------------------------------

" ------------ notes and easy to forget area, create in 20150611 ---------------

" something maybe not use often but powerful when you need it
" :retab! change global tab to your set, faster and powful, 20150722
" <leader>d jsdoc
" qf to open quickfix panel
" gf go to an exist file and ctrl + o can back,  very magic and useful
"
" Tern usage:
": TernDef: Jump to the definition of the thing under the cursor.
": TernDoc: Look up the documentation of something.
": TernType: Find the type of the thing under the cursor.
": TernRefs: Show all references to the variable or property under the cursor.
": TernRename: Rename the variable under the cursor.

" Vim sugar for the UNIX shell commands. Features include:
": Remove: Delete a buffer and the file on disk simultaneously.
": Unlink: Like :Remove, but keeps the now empty buffer.
": Move: Rename a buffer and the file on disk simultaneously.
": Rename: Like :Move, but relative to the current file's containing directory.
": Chmod: Change the permissions of the current file.
": Mkdir: Create a directory, defaulting to the parent of the current file.
": Find: Run find and load the results into the quickfix list.
": Locate: Run locate and load the results into the quickfix list.
": Wall: Write every open window. Handy for kicking off tools like guard.
": SudoWrite: Write a privileged file with sudo.
": SudoEdit: Edit a privileged file with sudo.
"File type detection for sudo -e is based on original file name.
"New files created with a shebang line are automatically made executable.
"New init scripts are automatically prepopulated with /etc/init.d/skeleton.j

" 20150616, fuck the GTW...
" as the reason we all know, google is always block and some google's
" ip can make us to use google painless, though failure with time goes on
" so, link the openbrowser.vim to dir ~/.vim and make change easily.

" 20150811, replace with eslint in 201512202100
"nnoremap <leader>ht :JSHint<CR>

" 20150723, 通过修改源码的方式将左对齐批量注释快捷键映射为 <leader>cc,
" 并将源码链接到.vim/目录下，便于修改！！！

" since syntastic plugin in js files was too slow, make vim not vim 
" so always we need to disabled the checker in js files
" the plugin itself and checkers(jshint & eslint) was great for coding, 
" woops,  wish a better experience, 201509251750
" cmap vv :SyntasticToggleMode 

" --------------------------------------------------------------------
" -------------------------    Changelog   ---------------------------
" --------------------------------------------------------------------

" 20150611 !!
" 增加备忘录区

" 20150722 ! 
" 全局缩进变更为2个空格,　顺应新形式

" 20150723
" 通过修改源码的方式将左对齐批量注释快捷键映射为 <leader>cc,
" 并将源码链接到.vim/目录下，便于修改！！！

" 20150811 !
" 加入jshint, 用的vim-jshint2插件，很好，性能正好满足，几乎不卡

" 20150912 !
" add react & jsx 

" 20151220 !
" replace jshint with eslint

" 20151230 !!
" nerdcomment, 为注释添加空格，改了源文件，按后缀名搜索修改即可

" 20160119 !!!
" 重装vim，重新编译、审视、整理插件
" 去除vim-easytags，貌似不需要它的自动生成并更新能力...
" jsctags是个很好的插件，生成的tags好的感人，而且无需配置，无奈性能堪忧
" vim-javascript是个不错的插件，但是并没有比vim自带的高亮好，甚至还差，留作观察
" 实验并清理无效插件，了解每个插件用途和配合
" 启用ycm配合ternjs(.tern-project)，有了很好的js补全和代码理解与重构能力
" UtilSnip配合ycm，vim-snippets有了很方便的代码生成能力
" 调研插件

" 20160120 !!
" 调研插件，学习ruanyl(vim-eslint作者)的bigvim(https://github.com/ruanyl/bigvim)
" 整理插件及配置代码
" 将vimrc拆分，模块化，格式化代码，去除无用代码，清理注释
" 学会vim启动过程分析，配置好用的zsh的vim快捷键，以不同模式启动vim
" 大幅改善vim启动速度，关闭了syntastic插件的文件启动自检查
" 配置快捷键来打开错误面板，定位eslint检查的错误，并能快速跳转

" 20160121 !!
" 加入了插件开关,以后不需要vim_basic了
" 确定了vim-javascript的无用，vim-jsx不依赖它也可用
" 调研scss-syntax.vim, vim-css3-syntax的冲突，提了issue,发现scss插件几乎没用
" 分拆的vimrc也加入git管理
" 彻底整理好配置文件，暂存,tag v1.0-beta

" 20160122 共40个插件 !!
" 修复vim-airline不显示git分支的问题，不小心删除了依赖
" CtrlP插件添加应该忽略的文件夹和文件,大幅减少查找时间，提高性能
" 增加了全局精准批量替换的keymap <leader>r, 增加了模糊匹配插件vim-fuzzysearch
" 基本完成v1.0的整理配置，准备尝试新的支持lazyLoad插件的包管理器：vim Plug-in


" 20160124 !!
" 尝试新的包管理器，vim-Plug，更好用，支持懒加载，解决我vim启动时间过慢问题
" 去除重复以及无用插件, 整理，整合优化

" 20160125 !!!
" 研究打开光标所在文件插件，还是解决不好无后缀匹配和存在"./"的话识别错误问题
" 懒加载几乎全部插件，启动时间减少一半，大约500ms左右，共40个插件,优化具体文件类型
" 恢复vim内部常用文件操作插件vim-eunuch，替换了标签匹配插件
" 增加了react等snip插件，去除其分号...深入了解了Ultisnips相关模板格式,格式有坑!(每行开头不是普通空格)
" changelist的游走映射为 "(" 和 ")" 一对儿，非常有用的快捷键
" 优化整理,包管理器随意切换，纳入git控制

" 20160130 !
" 替换vue插件,让vue文件有更好的编程体验，找到了处理更多情况的替换插件，但是需要修改源码，避免报错

" 20160203
" 暂时去除vim内eslint,有外部工具实时lint并提示
" 增加了vue文件的自动生成骨架

" 20160205
" 调研vim-orgmode,vimwiki,vimoutline，都放弃了，vim只作为代码编辑器

" 20160213 解决一个疑惑同时也是忘记了的操作,vim中真正tab缩进,而且能产生normal模式下不可到达的空格
" snippets的制作需要用到真正的tab缩进(makefile文件也是)，使用ctrl-v-i组合来打出

" 20160327 
" change vue file tpl, add less-plugin

" 20160417
" 加入es.next.syntax插件，获取更多es6/7高亮支持,更新README,加入更多注意点

" 20160424
" map e insteadof b to line end
 
" 20160523
" 貌似vue-cli的配置改变，sass变为严格模式，因此语法和高亮都需要做相应改变
" vim-vue的sass语法匹配改为scss, 且模板里也同样修改为<style lang="scss"></style>, 其实更符合sass,scss区别!

