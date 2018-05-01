"
"
"

"********************************************************
""                   一般性配置                          *
"********************************************************

"显示行号
set number

"设置匹配模式
set showmatch

"设置C/C++方式自动对齐
set autoindent
set cindent

"设置编码方式
set encoding=utf-8
 
" "自动判断编码时 依次尝试以下编码
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1"

"开启语法高亮功能
syntax enable
syntax on

"设置搜索时忽略大小写
set ignorecase

"检测文件类型
filetype on

"启动智能补全
filetype plugin indent on

"
" Config a Go IDE, Learn https://studygolang.com/articles/1785
" By caoguoyun, 2018/5/1
"


"
" Config a Cpp IDE , Learn http://littlewhite.us/archives/212
" By Caoguoyun , 2016/1/19
"
" 1 -------- pathogen
" 
" Install , Run
" mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

"execute pathogen#infect()
"syntax on
"filetype plugin indent on


" 1.5 -------- auto-pairs
" auto (),""
"
" Install ,Run
" git clone git://github.com/jiangmiao/auto-pairs.git ~/.vim/bundle/auto-pairs
"


" 2 ------- NerdTree  - shortcut key
"
"Install , Run
"git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle
"
" input ctrl+n can open NERDTree
" or in vim input :NERDTree
"
" Learn false: map <C-n>:NERDTree<CR>
"map <C-n> :NERDTree<CR>


" 3 ------- minibufexplorer
"
"Install , Run
"mkdir -p ~/.vim/bundle/minibufexplorer/plugin && wget \"http://www.vim.org/scripts/download_script.php?src_id=3640" -O ~/.vim/bundle/minibufexplorer/plugin/minibufexpl.vim
"
" :b N ,N is num , open tab buffer file
" Doc is ~/.vim/bundle/minibufexplorer/plugin/minibufexpl.vim
"
" Next config is set max height of minibufexplorer window to 2 line
"let g:miniBufExplMaxSize = 2


" 4 ------- ctags
" An software, build index for code 
" if not have , install
"
" Mac OX , brew install ctags
" CentOS , sudo yum install ctags
" ubuntu , sudo apt-get install ctags
"
" cd into root directory of code ,
" run :
"  ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q --language-force=C++
"
"  In code , tab on func name , ctr+] go declaretion , ctr+. to back .
"


" 5 ----- taglist
" list of func or member in code , easy to find
"
" Install , Run
" cd ~/.vim/bundle && wget
" \"http://www.vim.org/scripts/download_script.php?src_id=19574" -O taglist.zip && unzip taglist.zip -d taglist 
"
" Only show one file taglist
"let Tlist_Show_One_File=1
"
" auto exit by taglist is last one
"let Tlist_Exit_OnlyWindow=1
"
" show taglist by the right lab
"let Tlist_Use_Right_Window=1
"
" sort tag by name
"let Tlist_Sort_Type="name"
" 
" Click to go
"let Tlist_Use_SingClick=1
"
" Auto refresh with file
"let Tlist_Auto_Update=1
"
" Hightlight
"let Tlist_Auto_Hightlight_tag=1
"
" Shortcut key
"nnoremap <silent> <F8> :TlistToggle<CR>
"


" 6 ----- OmniCppCOmplete
" auto complete for cpp , support func , namespace , member of class .. , but
" reply for tag files
"
" Install , Run
" cd ~/.vim/bundle && wget
" \"http://www.vim.org/scripts/download_script.php?src_id=7722" -O omnicppcomplete.zip && unzip omnicppcomplete.zip -d omnicppcomplete
"
"filetype plugin indent on
"set completeopt=longest,menu
"let OmniCpp_NamespaceSearch = 2     " search namespaces in the current buffer   and in included files
"let OmniCpp_ShowPrototypeInAbbr = 1 " 显示函数参数列表
"let OmniCpp_MayCompleteScope = 1    " 输入 :: 后自动补全
"let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]

" support STL
"
" Install , Run
" mkdir -p ~/.vim/tags && cd ~/.vim/tags && wget
" \"http://www.vim.org/scripts/download_script.php?src_id=9178" -O - | tar jxvf -
" Then , cd into ~/.vim/tags/cpp_src , Run
" ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q --language-force=C++
"
"set tags+=~/.vim/tags/cpp_src/tags


" 7 ----- SuperTab
"
" INstall , Run
" cd ~/.vim/bundle && git clone https://github.com/ervandew/supertab.git
"
" auto complete by TAB , but by using this , should touch ctrl+v TAB to input
" tab
