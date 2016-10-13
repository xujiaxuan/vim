""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer:
"   Ouyang Xiongyi
"
"   Inspired by http://easwy.com/blog/
""""""""""""""""""""""""""""""""""""""""""""""""

"set nocompatible                " be iMproved
filetype off                    " required!

let mapleader = ";e"            " must on the top
let g:mapleader = ";e"

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle.git'

" Tags
Bundle 'majutsushi/tagbar.git'
map <silent> <F7> :TagbarToggle<CR>
set updatetime=500
let g:tagbar_left = 1
let g:tagbar_width = 30
let g:tagbar_compact = 1
let g:tagbar_iconchars = ['?', '?']
let g:tagbar_map_zoomwin = "z"
let g:tagbar_map_togglefold = "x"
let g:tagbar_map_jump = "o"

"set tags=/home/xujiaxuan/workdir/openwrt/MtkOpenwrt2636Sdkv14-2/openwrt-2.6.36/build_dir/target-mipsel_24kec+dsp_uClibc-0.9.33.2/linux-ramips_mt7620a/linux-2.6.36/tags
" exe "cs add" "/home/xujiaxuan/workdir/openwrt/MtkOpenwrt2636Sdkv14-2/openwrt-2.6.36/build_dir/target-mipsel_24kec+dsp_uClibc-0.9.33.2/linux-ramips_mt7620a/linux-2.6.36/cscope.out"
"exec "cs add" "/home/xujiaxuan/bras/pppoe/accel-ppp.git/accel-pppd"
"set tags=/home/xujiaxuan/bras/pppoe/accel-ppp.git/accel-pppd/tags

" File browsing
Bundle 'scrooloose/nerdtree.git'
map <silent> <F8> :NERDTreeToggle<CR>
map <silent> <Leader><F8> :NERDTreeFind<CR>
" help: http://www.111cn.net/sys/linux/59747.htm
    " o
    " s
    " i
let NERDChristmasTree=1
let NERDTreeAutoCenter=1
let NERDTreeMouseMode=2
let NERDTreeShowBookmarks=1
let NERDTreeWinPos='right'
let NERDTreeWinSize=45
let NERDTreeShowLineNumbers=0
let NERDTreeIgnore=['^cscope.out.in$', '^cscope.out$', '^cscope.files$', '^cscope.out.po$', '^tags$', '^.swp$']
let NERDTreeMapToggleZoom='z'
let NERDTreeMinimalUI=1

"map <silent> f :cs find f 
"map <silent> <Leader>f :cs find f 
vmap <leader>f :cs find f 
nmap <leader>f :cs find f 

" Fuzzy search " vim-scripts repos
Bundle 'vim-scripts/L9'
"Bundle 'vim-scripts/FuzzyFinder'
" let g:fuf_modesDisable = [ 'mrucmd', ]
" map <silent> <F5> :FufFileWithFullCwd<CR>
" map <silent> <leader>sm :FufMruFile<CR>
Bundle 'kien/ctrlp.vim'
let g:ctrlp_cmd = 'CtrlPMRU'
let g:ctrlp_lazy_update = 1
let g:ctrlp_use_caching = 1
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_regexp = 1
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:20,results:40'
let g:ctrlp_max_files = 0
let g:ctrlp_working_path_mode = 'a'
let g:ctrlp_custom_ignore = {
\ 'dir':  '\v[\/]\.(git|hg|svn)$',
\ 'file': '\v\.(exe|so|dll)$',
\ }


" Grep
"Bundle 'rking/ag.vim'

" Syntax checker
"Bundle 'scrooloose/syntastic'
let g:syntastic_error_symbol='?'
let g:syntastic_warning_symbol='?'
map <silent> <leader>sc :SyntasticCheck<CR>
map <silent> <leader>sr :SyntasticReset<CR>

Bundle 'Valloric/ListToggle'
Bundle 'scrooloose/syntastic'
" Auto complete
"Bundle 'Valloric/YouCompleteMe'
"need 7.3.584+ now not use

Bundle 'Shougo/neocomplcache.vim'
" -----------------------------------------------------------------------------
"  < neocomplcache 插件配置 >
" -----------------------------------------------------------------------------
" 关键字补全、文件路径补全、tag补全等等，各种，非常好用，速度超快。
let g:neocomplcache_enable_at_startup = 1     "vim 启动时启用插件
"let g:neocomplcache_disable_auto_complete = 1 "不自动弹出补全列表
" 在弹出补全列表后用 <c-p> 或 <c-n> 进行上下选择效果比较好
" Snippet
Bundle 'msanders/snipmate.vim.git'
let g:snips_author = 'Ouyang Xiongyi <ouyangxiongyi@tp-link.net>'

" Git
Bundle  'tpope/vim-fugitive'
vmap <leader>gb :Gblame<CR>
nmap <leader>gb :Gblame<CR>
vmap <leader>gl :Glog<CR>
nmap <leader>gl :Glog<CR>
nmap <leader>gm :Gblame<CR>o
nmap <leader>gn :Gblame<CR>oo

nmap <leader><F9> :let NERDTreeWinPos='left'<CR>
nmap <leader><F10> :let NERDTreeWinPos='right'<CR>
vmap <leader><F9> :let NERDTreeWinPos='left'<CR>
vmap <leader><F10> :let NERDTreeWinPos='right'<CR>
nmap <leader><F6> :BufExplorer<CR>
vmap <leader><F6> :BufExplorer<CR>

"Bundle  'airblade/vim-gitgutter'

" Misc
Bundle 'Lokaltog/vim-easymotion.git'
let g:EasyMotion_leader_key = '<Leader>'
"I just enable w and j action
let g:EasyMotion_mapping_f = ''
let g:EasyMotion_mapping_F = ''
let g:EasyMoton_mapping_t = ''
let g:EasyMotion_mapping_T = ''
let g:EasyMotion_mapping_W = ''
"let g:EasyMotion_mapping_B = ''
let g:EasyMotion_mapping_e = ''
let g:EasyMotion_mapping_E = ''
let g:EasyMotion_mapping_ge = ''
let g:EasyMotion_mapping_gE = ''
"let g:EasyMotion_mapping_j = ''
let g:EasyMotion_mapping_k = ''
let g:EasyMotion_mapping_n = ''
let g:EasyMotion_mapping_N = ''
nmap s <Plug>(easymotion-s)
" s for first character
" b for before
" w for after

"Bundle 'goldfeld/vim-seek'
"Bundle 'joeytwiddle/sexy_scroller.vim'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-surround'
Bundle 'vim-scripts/DrawIt'
Bundle 'vim-scripts/matrix.vim--Yang'
Bundle 'vim-scripts/IndexedSearch'

Bundle 'altercation/vim-colors-solarized.git'
"terminal background color: #333333
"if has('gui_running')
"    set background=light
"else
"    set background=dark
"endif
"set background=dark
"set background=light
"set nobackup
set t_Co=256
colorscheme solarized
colorscheme darkburn
syntax on
syntax enable

if has('gui_running')
    colorscheme solarized
else
    colorscheme darkburn
endif

" Lua
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-lua-inspect'
Bundle 'xolox/vim-lua-ftplugin'
let g:lua_inspect_warnings = 0
let g:loaded_luainspect = 1

filetype plugin indent on     " required!

"###########################
"# Cscope setting
"###########################

if has("cscope")
    set csto=1
    set cst
    set nocsverb
    if filereadable("cscope.out")
        cs add cscope.out
    endif
    set csverb
    set cscopequickfix=s-,g-,c-,t-,e-,f-,i-,d-
endif
"s: Find this C symbol
"g: Find this definition
"c: Find functions calling this function
"t: Find this text string
"d: Find functions called by this function
"	*gd* will be more helpful without cscope database
"e: Find this egrep pattern
"f: Find this file
"	*gf* will be more helpful without cscope database
"i: Find files #including this file
"	map <C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>
"	map <C-@>g :cs find g <C-R>=expand("<cword>")<CR><CR>
"	map <C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>
"	map <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>
"	map <C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR>
"	map <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>
"	map <C-@>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
"	map <C-@>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
"	map <F6> :cs find d<space>
"xujiaxuan start
              set cscopeverbose
              nmap <C-l>s :cs find s <C-R>=expand("<cword>")<CR><CR>
              nmap <C-l>g :cs find g <C-R>=expand("<cword>")<CR><CR>
              nmap <C-l>c :cs find c <C-R>=expand("<cword>")<CR><CR>
              nmap <C-l>t :cs find t <C-R>=expand("<cword>")<CR><CR>                                                                                                             
              nmap <C-l>e :cs find e <C-R>=expand("<cword>")<CR><CR>
              nmap <C-l>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
              nmap <C-l>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
              nmap <C-l>d :cs find d <C-R>=expand("<cword>")<CR><CR>
"xujiaxuan end
"###########################
"# General
"###########################

" Something useful for myself
set cmdheight=2
set scrolloff=3

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
autocmd! bufwritepost .vimrc source ~/.vimrc
autocmd BufEnter * let &titlestring = ' ' . expand("%:t")
set title
set textwidth=0
set nu

" Use space to replace tab, can usb <C-V><Tab> to insert a real tab
"set expandtab

"set lcs=tab:>-,trail:-
"set list

set fileformats=unix,dos
set autoindent
set tabstop=4
set shiftwidth=4
set fileencodings=ucs-bom,utf-8,chinese
set showcmd
set foldlevel=50
set autoread
set wildmenu
set wildignore=*.o,*~,*.pyc
if has('mouse')
    set mouse=a
endif
set paste

" Search
set incsearch
set hlsearch
set ignorecase
set smartcase

" persistent undo
let undolevels=1000
let undoreload=10000
set undofile
set undodir=~/.vim/undodir

"###########################
"# Status line
"###########################

" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ %=c:%c\|l:%l\ \of\ %L\|%p%%\ \ 
"set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ --%p%%--

" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction

"###########################
"# Map leader
"###########################
map <leader>ss :source ~/.vimrc<CR>:noh<CR>
map <leader>ee :e ~/.vimrc<CR>
map <leader><CR> :noh<CR>
map <leader>a A
map <leader>q :qa!<CR>

" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>fm mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" Strip space, and fix some bug at the same time
map <leader>fs mmHmt:%s/ *$//ge<CR>'tzt'm:noh<CR>

" Use four spaces to replace a tab
map <leader>ft :retab<CR>

" Copy to CLIPBOARD, and use 'y' to copy to the PRIMARY
"map <leader>y "+y
"map <leader>p "+p
map <leader>y "zy
map <leader>p "zp

" Switch CWD
map <leader>cd :cd %:p:h<CR>:call GetCwd()<CR>

" Reload cscope
map <leader>rl :cs add cscope.out<CR>

" When you press gv you vimgrep after the selected text
vmap <leader>gv :call VisualSelection('gv')<CR>

"vmap <leader>k :call VisualSelection('k')<CR><CR>

" Open vimgrep and put the cursor in the right position
nmap <leader>gv :vimgrep // **/*<left><left><left><left><left><left>

" When you press <leader>r you can search and replace the selected text
" append /g to the end to replace all
vmap <leader>r :call VisualSelection('replace')<CR>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

"###########################
"# Normal map
"###########################

" save all files
noremap W :wa<CR>

" Move between windows
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-h> <C-w>h
map <leader>j 20<C-w>+
map <leader>k 20<C-w>-
map <leader>h 20<C-w><
map <leader>l 20<C-w>>


" replaced by <C-c>
nmap - ^
nmap = $
vmap - ^
vmap = $

" use Q for recording
noremap q <Nop>
noremap Q q

" Open a fully width quickfix window at the bottom of vim
map <F9> :botright cwindow<CR>

map <F3> :cp<CR>
map <F4> :cn<CR>

" Highlighting all the same word under the cursor, like use SI.
nmap <S-F8> /\C\<<C-R>=expand("<cword>")<CR>\><CR>N

" Highlighting all the same string according to current selection
vnoremap <S-F8> :call VisualSelection('f')<CR>

" Look up dictionary, cover IndexedSearch's map
"autocmd! VimEnter * :nnoremap ? :!sdcv <C-R>=expand("<cword>")<CR><CR>
autocmd! VimEnter * :nnoremap ? :call Mydict()<CR>
vmap ? :call VisualSelection('?')<CR><CR>
"vmap K :call VisualSelection('k')<CR>
"set keywordprg=sdcv
function! Mydict()
    let expl=system('sdcv -c -n ' .
                \ expand("<cword>"))
    windo if
                \ expand("%")=="diCt-tmp" |
                \ q!|endif
    25sp diCt-tmp
    setlocal buftype=nofile bufhidden=hide noswapfile
    1s/^/\=expl/
    1
endfunction
"nmap F :call Mydict()<CR>

function! Mydict2(txt)
    let expurgated_text = a:txt
    let expl=system('sdcv -c -n ' . expurgated_text)
                "\ expand("<txt>"))
    windo if
                \ expand("%")=="diCt-tmp" |
                \ q!|endif
    25sp diCt-tmp
    setlocal buftype=nofile bufhidden=hide noswapfile
    1s/^/\=expl/
    1
endfunction
nmap <leader>t :call Mydict2("")<left><left>

function! Pandoc_gen()
    let abc=system('pandoc test.md -o main.html -f markdown -t html')
    "let abc=system('pandoc test.md -o main.html -f markdown_strict -t html')
endfunction

nmap <leader>p :call Pandoc_gen()<CR>

function! Glogg()
    let expl=system(Glog)
                "\ expand("<txt>"))
    windo if
                \ expand("%")=="Glog-tmp" |
                \ q!|endif
    25sp Glog-tmp
    setlocal buftype=nofile bufhidden=hide noswapfile
    1s/^/\=expl/
    1
endfunction

" Auto convert a word to a shell variable
imap <C-h> <ESC>bi${<ESC>ea}
imap <C-g> <ESC>bi$(<ESC>ea)

" jump to the match brace
map ]] ]}
map [[ [{

nnoremap mm mA

"###########################
"# Helper functions
"###########################
function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction

function! VisualSelection(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    elseif a:direction == '?'
        "call CmdLine("!sdcv " . l:pattern)
        call Mydict2(l:pattern)
    elseif a:direction == 'k'
        "call CmdLine("!sdcv " . l:pattern)
        "call CmdLine("Man " . l:pattern")
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction

function! Myman(txt)
    let expurgated_text = a:txt
    let expl=system('man ' . expurgated_text)
                "\ expand("<txt>"))
    windo if
                \ expand("%")=="Myman-tmp" |
                \ q!|endif
    25sp Myman-tmp
    setlocal buftype=nofile bufhidden=hide noswapfile
    1s/^/\=expl/
    1
endfunction

function! GetCwd()
    let l:cwd = getcwd()
    call CmdLine("cd " . l:cwd)
endfunction

" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction
" xujiaxuan start
"for taglist
let Tlist_Show_One_File=1 " 只显示当前文件的tag
let Tlist_Exit_OnlyWindow=1 " 如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Left_Window=1 " 在左侧显示taglist窗口, “=0”时在右侧
let g:winManagerWindowLayout='FileExplorer'
nmap tl :Tlist<cr>
let g:winManagerWindowLayout='FileExplorer|TagList|BufExplorer'
nnoremap <slient> <F8> :TlistToggle<CR>

nmap wm :WMToggle<cr>
nmap vq :q!<cr>
nmap vw :w!<cr>
nmap ww :w!<cr>
nmap vx :w!<cr>
nmap VQ :q!<cr>
nmap vwq :wq<cr>
nmap wvq :wq<cr>
nmap cw :cw<cr>
nmap cor :colder<cr>
nmap cnr :cnewer<cr>
nmap cn :cn<cr>
nmap cp :cp<cr>
nmap cc :cclose<cr>

nmap tf :tfirst<cr>
nmap tp :1 tprevious<cr>
nmap tn :1 tnext<cr>
nmap tl :1 tlast<cr>

set autochdir
" xujiaxuan end
"from Zhang Huakang
"set clipboard=unnamedplus
set clipboard=unnamed
au BufReadPost quickfix wincmd J "useful function for cw
map <F6> :call Do_CsTag()<cr>
let g:iswindows=0
function! Do_CsTag()
    let dir = getcwd()
    if filereadable("tags")
        if(g:iswindows==1)
            let tagsdeleted=delete(dir."\\"."tags")
        else
            let tagsdeleted=delete("./"."tags")
        endif
        if(tagsdeleted!=0)
            echohl WarningMsg | echo "Fail to do tags! I cannot delete the tags" | echohl None
            return
        endif
    endif
    if has("cscope")
        silent! execute "cs kill -1"
    endif
    if filereadable("cscope.files")
        if(g:iswindows==1)
            let csfilesdeleted=delete(dir."\\"."cscope.files")
        else
            let csfilesdeleted=delete("./"."cscope.files")
        endif
        if(csfilesdeleted!=0)
            echohl WarningMsg | echo "Fail to do cscope! I cannot delete the cscope.files" | echohl None
            return
        endif
    endif
    if filereadable("cscope.out")
        if(g:iswindows==1)
            let csoutdeleted=delete(dir."\\"."cscope.out")
        else
            let csoutdeleted=delete("./"."cscope.out")
        endif
        if(csoutdeleted!=0)
            echohl WarningMsg | echo "Fail to do cscope! I cannot delete the cscope.out" | echohl None
            return
        endif
    endif
    if(executable('ctags'))
        "silent! execute "!ctags -R --c-types=+p --fields=+S *"
        silent! execute "!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q ."
    endif
    if(executable('cscope') && has("cscope") )
        if(g:iswindows!=1)
            silent! execute "!find $(pwd) -name '*.h' -o -name '*.c' -o -name '*.cpp' -o -name '*.java' -o -name '*.cs' > cscope.files"
        else
            silent! execute "!dir /s/b *.c,*.cpp,*.h,*.java,*.cs >> cscope.files"
        endif
        silent! execute "!cscope -bkq"
        execute "normal :"
        if filereadable("cscope.out")
            execute "cs add cscope.out ".dir
        endif
    endif
    execute "redr!"
endfunction
vmap <leader>jp :!jp<CR>
" ：%s/vivian/sky/g repace
set pastetoggle=<F2>
map L $
map H ^

" for eclim
set nocompatible
filetype plugin indent on

" for java editor
set ts=4
set expandtab
"%retab! http://blog.163.com/panda_sha/blog/static/478281962011616124316/
"set expandtab

"set autoindent

" for svn
Bundle "xujiaxuan/vcscommand.vim"


Bundle 'bufexplorer.zip'

Bundle 'winmanager'

Bundle 'taglist.vim'

"help
    "zt -- 首行
    "zz -- 中行
    "zb -- 尾行
    "CTRL+f：向下翻一页
    "CTRL+b：向上翻一页
    "CTRL+d：向下翻半页
    "CTRL+u：向上翻半页
"au StdinReadPost * set buftype=nofile
" 查看方法输入:Man api_name
source $VIMRUNTIME/ftplugin/man.vim
" 映射之后就可以少按一下 Shift 键。
cmap man Man
" 在普通模式下按下 K （大写）即可启动 man 查看光标下的函数。
nmap K :Man <cword><CR>
"nmap K :call Myman(<cword>) <CR>
"nmap M :call Myman() <CR>

    "多个匹配时使用 man N word   example: man 2 accept
    "1   General commands
    "2   System calls
    "3   Library "functions, covering in particular the C standard library
    "4   Special files "(usually devices, those found in /dev) and drivers
    "5   File formats and "conventions
    "6   Games and screensavers
    "7   Miscellanea
    "8   System "administration commands and daemons
set statusline+=%{fugitive#statusline()} "  Git Hotness
set splitbelow
set splitright
nmap <leader>\ :belowright vs<CR>
nmap <leader>- :belowright sv<CR>
":leftabove {cmd}     当前窗口的左上方
":aboveleft {cmd}     同上
":rightbelow {cmd}     当前窗口的右下方
":belowright {cmd}     同上
":topleft {cmd}       整个 Vim 窗口的最上面或者最左边
":botright {cmd}       整个 Vim 窗口的最下面或者最右边

" 窗口间移动
"按住Ctrl + W，然后再加上h, j, k, l，分别表示向左、下、上、右移动窗口
"Ctrl + w + h：向左移动窗口
"Ctrl + w + j： 向下移动窗口
"Ctrl + w + j： 向上移动窗口
"Ctrl + w + l： 向右移动窗口
"
"Ctrl + w + w：这个命令会在所有窗口中循环移动
"Ctrl + w + t：移动到最左上角的窗口
"Ctrl + w + b：移动到最右下角的窗口
"Ctrl + w + p：移动到前一个访问的窗口
set noexpandtab
set paste
set autoindent

"提供及时预览的功能"
Plugin 'iamcco/markdown-preview.vim'

"提供markdown语法高亮功能"                                        
Plugin 'godlygeek/tabular'
"Plugin 'plasticboy/vim-markdown'

"提供pandoc语法高亮功能"
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'
