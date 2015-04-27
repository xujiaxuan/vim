set number
set hlsearch
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
 
set nocompatible
set backspace=indent,eol,start
 
syntax enable
set background=dark

set tabstop=4
set number
filetype on
set background=dark
syntax on

set shiftwidth=4
set softtabstop=4
"set expandtab
set smarttab

"set autoindent
"set smartindent

set sm
"inoremap ( ()<LEFT>
"inoremap { {}<LEFT>
"inoremap [ []<LEFT>
vmap <C-c> "+y
set showmatch
set cursorline
set incsearch
set nobackup
set ignorecase smartcase
set hlsearch
set sm
"set mouse=i
set history=100

"----------------------------------------------
" Remove trailing whitespace and expand tab and
function! Clean()
exec 'retab'
exec '%s/\s\+$//e'
" use silent! to omit error message, type in ^M by Ctrl+v and Ctrl+m
exec 'silent! %s/
$//g'
endfunction
nmap <F9> :call Clean()<CR>
"----------------------------------------------))

set backspace=indent,eol,start "设置backspace的工作方式

"new
"set mouse=a "复制前按shift 鼠标选择 放下shift 右键 copy   按shift 鼠标左键选择，右键点击即复制。
			"局部复制 ctrl+shift+选择 放下ctrl 右击 即可复制
"set mouse=v  "a的升级版
set selection=exclusive
set selectmode=mouse,key

"set paste 与对齐不兼容

" add for vimgdb
nmap <F2> :runmacros/gdb_mappings.vim<CR>

" add by xujiaxuan
""""""""""""""""""""""""""""""
" vimgdb setting
""""""""""""""""""""""""""""""
let g:vimgdb_debug_file = ""
run macros/gdb_mappings.vim

"for taglist
let Tlist_Show_One_File=1 " 只显示当前文件的tag
let Tlist_Exit_OnlyWindow=1 " 如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Left_Window=1 " 在左侧显示taglist窗口, “=0”时在右侧
let g:winManagerWindowLayout='FileExplorer'
nmap tl :Tlist<cr>
let g:winManagerWindowLayout='FileExplorer|TagList'

"nmap wm :WMToggle<cr> "not map found

set cscopequickfix=s-,c-,d-,i-,t-,e-
nmap <F6> :cn<cr> 
"nmap <F7> :cp<cr> 

"add by xujiaxuan
"nmap tn :tabnew<cr>
"nmap tc :tabclose<cr>
"nmap te :e `pwd`<cr>

"关于tab的快捷键  <cr>应该表示enter
map tn :tabnext<cr>
map tp :tabprevious<cr>
map td :tabnew .<cr>
map te :tabedit
map tc :tabclose<cr>
nnoremap <C-TAB> :tabnext<CR>
nnoremap <C-S-TAB> :tabprev<CR>

"Buffers操作快捷方式 具体的值再做配置 
map bn :bnext<CR>
map bp :bprevious<CR>

set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\   "设置在状态行显示的信息

"vim vs sv 的切换
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" 设定文件浏览器目录为当前目录 
set bsdir=buffer
set background=dark
"set list
"set listchars=tab:>-,trail:-

"vim文件被修改后自动生效。
autocmd! bufwritepost .vimrc source ~/.vimrc

map <F2> a<C-R>=strftime("%c")<CR><Esc>
"编辑模式下的alt hjkl
noremap! <M-j> <Down> 
noremap! <M-k> <Up>	
noremap! <M-h> <left>
noremap! <M-l> <Right>
nmap vq :q!<cr>
"ma6174 https://github.com/ma6174/vim
"列可以列出来
"对应的括号可以使用虚线连接
