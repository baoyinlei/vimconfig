" 启用行号和语法高亮
set number
syntax enable

" 自动缩进
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" 搜索时忽略大小写
set ignorecase
set smartcase

" 启用自动补全
set completeopt=menuone,longest,preview

" 设置编码
set encoding=utf-8

" 显示当前光标所在行列号
set ruler

" 启用括号匹配
set showmatch

" 启用文件类型检测
filetype plugin indent on

" 插件管理器（可选）
" 在您的Vim中使用插件管理器，如Vundle、Pathogen或vim-plug，来管理插件。
" 在这里，我们示范使用vim-plug:
" 请确保提前安装 vim-plug（https://github.com/junegunn/vim-plug）
call plug#begin('~/.vim/plugged')

" 插件列表（您可以根据自己的需求添加更多插件）
" C/C++ 语言支持
Plug 'Valloric/YouCompleteMe'
Plug 'vim-syntastic/syntastic'
Plug 'ludovicchabant/vim-gutentags'

" 插件结束
call plug#end()

" YCM 配置（您可以根据自己的需求进行调整）
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1

" Syntastic 配置（您可以根据自己的需求进行调整）
let g:syntastic_c_checkers = ['gcc']
let g:syntastic_cpp_checkers = ['gcc']

" Gutentags 配置（您可以根据自己的需求进行调整）
let g:gutentags_project_root = ['.git']

" 自定义快捷键（可选）
" 这里是一个例子，您可以根据自己的需求添加更多快捷键
" 使用 F5 快捷键编译和运行当前C文件
nnoremap <F5> :w<CR>:!gcc % -o %< && ./%<<CR>

" 使用 Ctrl+P 快捷键开启文件搜索
nnoremap <C-P> :CtrlP<CR>

" 保存并退出
nnoremap <leader>wq :wq<CR>

" 自定义 leader 键为逗号
let mapleader = ","


