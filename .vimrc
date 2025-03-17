call plug#begin('~/.vim/plugged')
	Plug 'preservim/nerdtree'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'morhetz/gruvbox'
	Plug 'sheerun/vim-polyglot'
	Plug 'jiangmiao/auto-pairs'
	Plug 'preservim/nerdcommenter'
	Plug 'tpope/vim-fugitive'
	Plug 'ctrlpvim/ctrlp.vim'
	Plug 'airblade/vim-gitgutter'
	Plug 'preservim/tagbar'
call plug#end()

"============================一般设置======================
set nocompatible				"vim比vi支持更多的功能，如showcmd，避免冲突和副作用，最好关闭兼容
set encoding=utf-8				"使用utf-8编码
set number						"显示行号
set showcmd						"显示输入命令
set cursorline					"显示当前行
set hlsearch					"显示高亮搜索
nnoremap <F4> :nohlsearch<CR>	"按 F4 键取消高亮显示
set incsearch 
set history=100					"默认指令记录是20
set ruler						"显示行号和列号（默认打开)
set pastetoggle=<F3>			"F3快捷键于paste模式与否之间转化，防止自动缩进
set helplang=cn					"设置为中文帮助文档,需下载并配置之后才生效
set tabstop=4					"设置tab长度为4
set shiftwidth=4				"设置自动对齐的缩进级别
set cindent
set smartindent					"改进版的cindent,自动识别以#开头的注释，不进行换行
set autoindent					"autoindent配合下面一条命令根据不同语言类型进行不同的缩进操
filetype plugin indent on
set nowrap
"===========================NERDTree=======================
nmap <F7> :NERDTreeToggle <CR>
"===========================airline========================
let g:airline_theme = 'dark'	" 设置主题
let g:airline#extensions#tabline#enabled = 1	" 显示顶部标签栏
let g:airline#extensions#tabline#formatter = 'unique_tail'	" 标签命名格式
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_theme = 'gruvbox'	" 主题名称
"===========================gruvbox========================
colorscheme gruvbox  " 在 .vimrc 中设置主题
set background=dark  " 或 light
let g:rehash256 = 1
let g:molokai_original = 1
set t_Co=256
set termguicolors           " 启用真彩色支持（需终端支持）
"========================nerdcommenter=====================
map <C-_> <Plug>NERDCommenterToggle	" Ctrl+/ 切换注释
"=========================tagbar===========================
nmap <F8> :TagbarToggle<CR>
let g:tagbar_autofocus = 1	" 自动聚焦到 Tagbar 窗口
let g:tagbar_autoupdate = 1	" 自动更新标签（文件保存时
let g:tagbar_width = 30	" 窗口宽度
"=========================cscope===========================
" 自动加载数据库
if filereadable("cscope.out") && !cscope_connection()
	cs add cscope.out
endif

