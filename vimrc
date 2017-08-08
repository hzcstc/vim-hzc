set nocompatible              " 去除VI一致性,必须
filetype off                  " 必须

" 设置包括vundle和初始化相关的runtime path
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" 另一种选择, 指定一个vundle安装插件的路径
"call vundle#begin('~/some/path/here')

" 让vundle管理插件版本,必须
Plugin 'VundleVim/Vundle.vim'

" 以下范例用来支持不同格式的插件安装.
" 请将安装插件的命令放在vundle#begin和vundle#end之间.
" Github上的插件
" 格式为 Plugin '用户名/插件仓库名'
Plugin 'tpope/vim-fugitive'
" 来自 http://vim-scripts.org/vim/scripts.html 的插件
" Plugin '插件名称' 实际上是 Plugin 'vim-scripts/插件仓库名' 只是此处的用户名可以省略
Plugin 'L9'
" 由Git支持但不再github上的插件仓库 Plugin 'git clone 后面的地址'
Plugin 'git://git.wincent.com/command-t.git'
" 本地的Git仓库(例如自己的插件) Plugin 'file:///+本地插件仓库绝对路径'
Plugin 'file:///home/gmarik/path/to/plugin'
" 插件在仓库的子目录中.
" 正确指定路径用以设置runtimepath. 以下范例插件在sparkup/vim目录下
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" 安装L9，如果已经安装过这个插件，可利用以下格式避免命名冲突
" Plugin 'user/L9', {'name': 'newL9'}

" 你的所有插件需要在下面这行之前
call vundle#end()            " 必须
filetype plugin indent on    " 必须 加载vim自带和插件相应的语法和文件类型相关脚本
" 忽视插件改变缩进,可以使用以下替代:
" filetype plugin on
"
" 简要帮助文档
" :PluginList       - 列出所有已配置的插件
" :PluginInstall    - 安装插件,追加 `!` 用以更新或使用 :PluginUpdate
" :PluginSearch foo - 搜索 foo ; 追加 `!` 清除本地缓存
" :PluginClean      - 清除未使用插件,需要确认; 追加 `!` 自动批准移除未使用插件
"
" 查阅 :h vundle 获取更多细节和wiki以及FAQ
" 将你自己对非插件片段放在这行之后


""""""""""""""""""""""""""""""""""""""""""""""""""
 
" my plugin setting for kernel development
 
""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader=","
set mouse=a
" 右键点击时，弹出菜单
"set mousemodel=popup
 
" 首先在当前目录里寻找tags文件，如果没有找到tags文件，就到父目录中查找，一直向上递归
set tags=tags;                   	
" set autochdir
" 更新ctags标签文件快捷键设置
"noremap <silent> <F6> :!ctags -R<CR><CR>
" 正向遍历同名标签
nmap <Leader>n :tnext<CR>
" 反向遍历同名标签
nmap <Leader>p :tprevious<CR>

set number
set hlsearch
" 搜索时逐字高亮
"set incsearch
" 高亮显示匹配的符号，大括号什么的
"set showmatch

" 开启语法高亮功能
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on
" 高亮显示当前行/列
set cursorline
" set cursorcolumn
set backspace=indent,eol,start

" 命令行按tab补全时，显示一个候选菜单
set wildmenu

" 自适应不同语言的智能缩进
filetype indent on
" 将制表符扩展为空格
" set noexpandtab
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=8
" 设置格式化时制表符占用空格数
set shiftwidth=8
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=8

" 基于缩进或语法进行代码折叠
"set foldmethod=indent
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
" set nofoldenable


"""""""""""""""""""""""""""""""

" cscope setting  

"""""""""""""""""""""""""""""""
set cscopequickfix=s-,c-,d-,i-,t-,e-

if has("cscope")
        " set csprg=/usr/bin/cscope
        set csto=0
        " set cst
        set nocsverb
        set cspc=3
        " add any database in current directory
        if filereadable("cscope.out")
                cs add cscope.out
        endif
        set csverb
endif


"""""""""""""""""""""""""""""""
 
" vim-kinux-coding-stylr setting
 
"""""""""""""""""""""""""""""""
Plugin 'vivien/vim-linux-coding-style'


"""""""""""""""""""""""""""""""
 
" a.vim setting
 
"""""""""""""""""""""""""""""""
Plugin 'a.vim'


"""""""""""""""""""""""""""""""
 
" molokai setting
 
"""""""""""""""""""""""""""""""
Plugin 'tomasr/molokai'
set t_Co=256
set background=dark
let g:rehash256 = 1
" let g:molokai_original = 1
colorscheme molokai


"""""""""""""""""""""""""""""""
 
" taglist.vim setting
 
"""""""""""""""""""""""""""""""
Plugin 'taglist.vim'

" 按F8按钮，在窗口的左侧出现taglist的窗口,像vc的左侧的workpace
" nnoremap <silent> <F8> :TlistToggle<CR>

"启动vim后自动打开taglist窗口
"let Tlist_Auto_Open = 0	
		     
" 设置taglist窗口大小
"let Tlist_WinHeight = 40
" let Tlist_WinWidth = 40

" 只显示当前文件的tags
let Tlist_Show_One_File=0

" 如果Taglist窗口是最后一个窗口则退出Vim                 
let Tlist_Exit_OnlyWindow=1

" 在右侧窗口中显示                 
" let Tlist_Use_Right_Window=1

" 在left窗口中显示             
"let Tlist_Use_Left_Window=1

" 非当前文件，函数列表折叠隐藏                  
let Tlist_File_Fold_Auto_Close=1

" Automatically update the taglist to include newly edited files.             
let Tlist_Auto_Update=1            	     


"""""""""""""""""""""""""""""""
 
" tagbar setting
 
"""""""""""""""""""""""""""""""
" Plugin 'majutsushi/tagbar'


"""""""""""""""""""""""""""""""
 
" NERD-tree setting
 
"""""""""""""""""""""""""""""""
Plugin 'The-NERD-tree'

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" 将 NERDTree 的窗口设置在 vim 窗口的右侧（默认为左侧）
"let NERDTreeWinPos="right"

" 当打开 NERDTree 窗口时，自动显示 Bookmarks			
let NERDTreeShowBookmarks=1

" 显示行号		     	
"let NERDTreeShowLineNumbers=1

" 控制当光标移动超过一定距离时，是否自动将焦点调整到屏中心		     	
let NERDTreeAutoCenter=1

" 是否显示隐藏文件		     	
let NERDTreeShowHidden=1

" 设置宽度		     	
" let NERDTreeWinSize=30

" 是否默认显示文件		     	
let NERDTreeShowFiles=1

" 在终端启动vim时，共享NERDTree		
"let g:nerdtree_tabs_open_on_console_startup=1

" 指定鼠标模式（1.双击打开；2.单目录双文件；3.单击打开）
"let NERDTreeMouseMode=2
			
" autocmd vimenter * NERDTree
"map <C-n> :NERDTreeToggle<CR>


"""""""""""""""""""""""""""""""
 
" bufexplorer setting
 
"""""""""""""""""""""""""""""""
Plugin 'jlanzarotta/bufexplorer'


"""""""""""""""""""""""""""""""
 
" winManager setting
 
"""""""""""""""""""""""""""""""
Plugin 'winmanager'

let g:NERDTree_title="[NERDTree]"  
  
let g:winManagerWindowLayout='NERDTree|TagList'
  
function! NERDTree_Start()  
	  
	exec 'NERDTree'  
	      
endfunction  
      
function! NERDTree_IsValid()  
	      
	return 1  
		  
endfunction
"设置winmanager的宽度，默认为25
let g:winManagerWidth = 30
" 键盘映射，同时加入防止因winmanager和nerdtree冲突而导致空白页的语句
nmap <silent> <F8> :if IsWinManagerVisible() <BAR> WMToggle<CR> <BAR> else <BAR> WMToggle<CR>:q<CR> endif <CR><CR>
" nmap <C-n> : if IsWinManagerVisible() <BAR> WMToggle<CR> <BAR> else <BAR> WMToggle<CR>:q<CR> endif <CR><CR>
" nmap <silent> <F8> : WMToggle<CR>

" 如果所有编辑文件都关闭了，退出vim
let g:persistentBehaviour=0


"""""""""""""""""""""""""""""""
 
" ctrlp setting
 
"""""""""""""""""""""""""""""""
Plugin 'ctrlpvim/ctrlp.vim'

let g:ctrlp_working_path_mode = 'ra'

let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
    \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc|o|out|in|ihex)$',
    \ }

" CtrlP auto cache clearing.
" "
" -----------------------------
"function! SetupCtrlP()
"	if exists("g:loaded_ctrlp") && g:loaded_ctrlp
"        	augroup CtrlPExtension
"              	autocmd!
"                autocmd FocusGained  * CtrlPClearCache
"                autocmd BufWritePost * CtrlPClearCache
"                augroup END
"	endif
"endfunction
"if has("autocmd")
"	autocmd VimEnter * :call SetupCtrlP()
"endif

let g:ctrlp_max_files = 100000


"""""""""""""""""""""""""""""""
 
" air-line setting
 
"""""""""""""""""""""""""""""""
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

let g:airline_theme = "bubblegum"
" let g:airline_theme = "molokai"

" airline设置
set laststatus=2

" 使用powerline打过补丁的字体
let g:airline_powerline_fonts = 1
" 使用 powerline 的箭头，需要安装 powerline 字体，在未安装 powerline
" 字体的情况下，
" 可以将此值设置为 0，这将使用之后的这些默认的符号替换。
" let g:airline_powerline_fonts = 1
if g:airline_powerline_fonts == 0
	if !exists('g:airline_symbols')
        	let g:airline_symbols = {}
	endif
        let g:airline_left_sep = '▶'
        let g:airline_left_alt_sep = '❯'
        let g:airline_right_sep = '◀'
        let g:airline_right_alt_sep = '❮'
        let g:airline_symbols.paste = 'ρ'
        let g:airline_symbols.linenr = '¶'
        let g:airline_symbols.branch = '§'
        let g:airline_symbols.whitespace = 'Ξ'
	let g:airline_symbols.readonly = ''
endif

" 开启tabline
let g:airline#extensions#tabline#enabled = 1
" tabline中当前buffer两端的分隔字符
"let g:airline#extensions#tabline#left_sep = ' '
" tabline中未激活buffer两端的分隔字符
"let g:airline#extensions#tabline#left_alt_sep = '|'
" tabline中buffer显示编号
let g:airline#extensions#tabline#buffer_nr_show = 1
" 只显示文件名，不显示路径内容
let g:airline#extensions#tabline#fnamemod = ':p:t'

" 关闭状态显示空白符号计数,这个对我用处不大"
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#whitespace#symbol = '!'

autocmd BufDelete * call airline#extensions#tabline#buflist#invalidate()

let g:airline#extensions#tabline#show_tab_nr = 1

" 映射切换buffer的键位
nnoremap <F9>  :bp<CR>
nnoremap <F10> :bn<CR>


"""""""""""""""""""""""""""""""
 
" YouCompleteMe setting
 
"""""""""""""""""""""""""""""""
Plugin 'Valloric/YouCompleteMe'

let g:ycm_collect_identifiers_from_tags_files = 1

" 补全功能在注释中同样有效
let g:ycm_complete_in_comments=1
" 允许 vim 加载 .ycm_extra_conf.py 文件，不再提示
let g:ycm_confirm_extra_conf=0
" 补全内容不以分割子窗口形式出现，只显示补全列表
set completeopt-=preview
" 从第一个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion=1
" 禁止缓存匹配项，每次都重新生成匹配项
let g:ycm_cache_omnifunc=0
" 语法关键字补全			
let g:ycm_seed_identifiers_with_syntax=1

nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>

nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>

nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>

nnoremap <leader>gi :YcmCompleter GoToInclude<CR>


"""""""""""""""""""""""""""""""
 
" grep.vim setting
 
"""""""""""""""""""""""""""""""
Plugin 'grep.vim'

let Grep_Default_Options = '-rn' 

nnoremap <silent> <F3> :Grep<CR> 


"""""""""""""""""""""""""""""""
 
" ctrlsf setting
 
"""""""""""""""""""""""""""""""
Plugin 'dyng/ctrlsf.vim'


"""""""""""""""""""""""""""""""
 
" nerdcommenter setting
 
"""""""""""""""""""""""""""""""
Plugin 'scrooloose/nerdcommenter'

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/*','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1


"""""""""""""""""""""""""""""""
 
" vim-startify setting
 
"""""""""""""""""""""""""""""""
Plugin 'mhinz/vim-startify'

let g:startify_custom_footer = [
                \ '',
                \ '',
                \ '   适用于linux-kernel开发，由 hzc 整理发布！',
                \ ]


"""""""""""""""""""""""""""""""
 
" vimcdoc setting
 
"""""""""""""""""""""""""""""""
" 中文文档。
Plugin 'asins/vimcdoc'

" 帮助语言为中文
" set helplang=cn
