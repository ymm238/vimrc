1. 安装vim-plug插件管理器
``` shell
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

2. 安装、配置cscope代码浏览工具
```
yum install cscope
cd your_proejct_path
find . -name "*.c" -o -name "*.h" > cscope.files
cscope -Rbq -i cscope.files
```
-R：递归解析所有的子目录。
-b：仅构建交叉引用(cross-reference)文件，即数据库，然后退出，而不会进入交互界面。
-q：通过倒排索引加速符号的查找过程。该选项会导致cscope额外产生cscope.in.out和cscope.po.out两个文件。
执行`cscope -Rbq`后会在当前目录下创建cscope.out、cscope.in.out、cscope.po.out。
在当前项目下打开vim，执行`:cs show`查看database name，可以看到已经与数据库建立连接。
执行`:cs f s <func_name>`可以在当前目录下查该函数的定义及使用路径。

3. 安装Molokai颜色主题
```
git clone https://github.com/tomasr/molokai.git
cp -r molokai/colors/ ~/.vim/colors
```

4. 配置vimrc
安装nerdtree、tagbar、vim-airline、ctrlp.vim插件，将以下内容添加至~/.vimrc文件。
``` vim
""=========================插件管理器=====================================
call plug#begin('~/.vim/plugged')
	" 插件列表
	Plug 'preservim/nerdtree'
	Plug 'preservim/tagbar'
	Plug 'vim-airline/vim-airline'
 	Plug 'ctrlpvim/ctrlp.vim'
call plug#end()
""=========================一般设置======================================= 
set nocompatible          	"vim比vi支持更多的功能，如showcmd，避免冲突和副作用，最好关闭兼容 
set encoding=utf-8	  		"使用utf-8编码 
"set number                	"显示行号 
"set showcmd               	"显示输入命令 
set cursorline            	"显示当前行 
set hlsearch              	"显示高亮搜索 
"按 F4 键取消高亮显示
nnoremap <F4> :nohlsearch<CR>	
set incsearch 
set history=100           	"默认指令记录是20 
"set ruler                 	"显示行号和列号（默认打开) 
set pastetoggle=<F3>      	"F3快捷键于paste模式与否之间转化，防止自动缩进 
set helplang=cn           	"设置为中文帮助文档,需下载并配置之后才生效
"===========================文本格式排版==================================
set tabstop=4              	"设置tab长度为4 
set shiftwidth=4           	"设置自动对齐的缩进级别 
set cindent
set smartindent            	"改进版的cindent,自动识别以#开头的注释，不进行换行 
set autoindent              "autoindent配合下面一条命令根据不同语言类型进行不同的缩进操
filetype plugin indent on 
set nowrap
"===========================选择molokai的模式=============================
let g:rehash256 = 1 
let g:molokai_original = 1 
highlight NonText guibg=#060606 
highlight Folded  guibg=#0A0A0A guifg=#9090D0 
set t_Co=256 
set background=dark 
colorscheme  molokai 
set tabstop=4
"================================NERDTree===================================
nmap <F7> :NERDTreeToggle<CR>
"================================TagbarToggle===============================
nmap <F8> :TagbarToggle<CR>
"================================vim-airline=================================
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = ' > '
let g:airline#extensions#tabline#formatter = 'default'
```

5. 打开vim，执行 `:PlugInstall`
