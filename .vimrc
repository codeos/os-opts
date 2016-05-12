set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
" 文件管理
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
" 缩进线对对其
Plugin 'Yggdroot/indentLine'
" 自动补全插件
Plugin 'valloric/youcompleteme'
" 代码注释
Plugin 'scrooloose/nerdcommenter'
" 多光标同时输入
Plugin 'terryma/vim-multiple-cursors'
" 函数 方法查看
Plugin 'majutsushi/tagbar'
" 前端插件
Plugin 'JulesWang/css.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'cakebaker/scss-syntax.vim'
" Code state bar
Plugin 'bling/vim-airline'
" Code colonr

Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}


" 自动补全
Plugin 'othree/html5.vim'
Plugin 'mattn/emmet-vim'
" 语法检测
Plugin 'scrooloose/syntastic'
" search ctrlp
Plugin 'kien/ctrlp.vim'

Plugin 'mileszs/ack.vim'


call vundle#end()
filetype plugin indent on

"语法高亮
syntax enable
""自动缩进
set autoindent
"总是现实状态行
set laststatus=2
"以下三个配置配合使用，设置 tab 和缩进空格数
set expandtab
set shiftwidth=2
set tabstop=2
"为光标所在行加下划线
set cursorline
""光标移到最后一个字母后
set virtualedit=onemore
"显示行号
set number
""文件在 Vim 之外修改过，自动重新读入
set autoread
"在编辑过程中，在右下角显示光标位置的状态行
set ruler
""显示匹配括号
set showmatch
""检索时忽略大小写
set ignorecase
"使用 utf-8 或 gbk 打开文件
set fileencodings=utf-8,gbk
set termencoding=utf-8
set encoding=utf-8
set guifont=Source\ Code\ Pro\ 12
""检索时高亮显示匹配项
set hlsearch
"增量式搜索
set incsearch
" 延迟渲染
set lazyredraw
" 开启颜色
set t_Co=256

" ================== neocomplcache.vim config =======================
let g:acp_enableAtStartup = 0
let g:neocomplcache_enable_at_startup = 1

"============================= emment 配置 ===========================

let g:user_emmet_mode='n'    "only enable normal mode functions.
let g:user_emmet_mode='inv'  "enable all functions, which is equal to
let g:user_emmet_mode='a'    "enable all function in all mode.
let g:user_emmet_expandabbr_key = '<Tab>'

let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" ======================= 文件管理配置 =============================
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd vimenter * NERDTree


" ======================= 代码颜色配置方案 =========================

set background=dark
color dracula


" ================================ ctrl p config ===================

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " Linux/MacOSX
let g:ctrlp_custom_ignore = '\v[\/]\.?(git|hg|svn|node_modules|bower_components)$'


" ==============================  tag config ========================
nmap <F8> :TagbarToggle<CR>


" ============================== js语法检测======================
autocmd FileType javascript let b:syntastic_checkers = findfile('.jscsrc', '.;') != '' ? ['jscs'] : ['jshint']
