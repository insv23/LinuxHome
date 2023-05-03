" -------- 警告 -------
" 打开英语单词的拼写检查, 会让中文诡异高亮(勿开)
" set spell spelllang=en_us


" -------- 外观 -------
set number      " 显示行号
set cursorline  " 光标所在的当前行高亮
set mouse=a     " 支持使用鼠标

set tabstop=4   " 一个 tab 几个空格
"在文本上按下>>（增加一级缩进）、<<（取消一级缩进）或者==（取消全部缩进）时，每一级的字符数
set shiftwidth=4

set expandtab   "自动将 Tab 转为空格, 不同编辑器对 Tab 缩进可能不同
set softtabstop=4   "Tab 转为多少个空格


set textwidth=80    " 设置行宽，即一行显示多少个字符
set wrap        " 自动折行，即太长的行分成几行显示
set linebreak   " 不会在单词内部折行, 只有遇到分隔符(空格等)折行
set wrapmargin=2    " 指定折行处与编辑窗口的右边缘之间空出的字符数

set showmatch   " 光标遇到括号时，自动高亮对应的括号

set hlsearch    " 搜索时，高亮显示匹配结果
set incsearch   " 输入搜索模式时，每输入一个字符，就自动跳到第一个匹配的结果

set autoindent  " 按下回车键后，下一行的缩进会自动跟上一行的缩进保持一致

" 如果行尾有多余的空格（包括 Tab 键），该配置将让这些空格显示成可见的小方块。
set listchars=tab:»■,trail:■
set list

" 下面这几个设不设置没区别, 好像默认就有
syntax on       " 打开语法高亮。自动识别代码，使用多种颜色显示。
set t_Co=256    " 启用256色
set showmode    " 在底部显示，当前处于命令模式还是插入模式
set showcmd     " 命令模式下，在底部显示，当前键入的指令
set encoding=utf-8  " 使用 utf-8 编码
set nocompatible    " 不用 vi 兼容(如果兼容, 上下左右键会显示ABCD等字符)


" -------- 其他 -------
set noswapfile  " 不创建 .swp 交换文档
" set undofile    "操作记录保留在同名文件中,下次打开可以撤销上一次的操作
set noerrorbells    " 出错时，不要发出响声

" 命令模式下，底部操作指令按下 Tab 键自动补全。
" 第一次按下 Tab，会显示所有匹配的操作指令的清单；
" 第二次按下 Tab，会依次选择各个指令。
set wildmenu
set wildmode=longest:list,full  

" set clipboard=unnamed   " 允许 vim 复制内容到系统剪贴板
set clipboard=unnamedplus














