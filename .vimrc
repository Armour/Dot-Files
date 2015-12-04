syntax enable
set background=dark
colorscheme solarized

let mapleader = ","
let maplocalleader = ","

" basic config
set autoread
set autoindent
set smarttab
set smartindent

" to avoid short code warning
set shortmess=a
set cmdheight=2

" replace tab with 4 spaces
set softtabstop=4
set shiftwidth=4
set tabstop=4
set expandtab

" display and font
set cul
set number
set showmatch
set lines=2560 columns=1600
set whichwrap=b,s,<,>,[,]
set guifont=Sauce\ Code\ Powerline:h14

" encoding
set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030

" backup
set nobackup
set nowb
set noswapfile

" highlight macros
autocmd FileType cpp syn match definedmarcos "\v\w@<!(\u|_+[A-Z0-9])[A-Z0-9_]*\w@!"
autocmd FileType c syn match definedmarcos "\v\w@<!(\u|_+[A-Z0-9])[A-Z0-9_]*\w@!"
autocmd FileType m syn match definedmarcos "\v\w@<!(\u|_+[A-Z0-9])[A-Z0-9_]*\w@!"
autocmd FileType mm syn match definedmarcos "\v\w@<!(\u|_+[A-Z0-9])[A-Z0-9_]*\w@!"
autocmd FileType h syn match definedmarcos "\v\w@<!(\u|_+[A-Z0-9])[A-Z0-9_]*\w@!"
autocmd FileType cpp hi definedmarcos guifg = #cb4515
autocmd FileType c hi definedmarcos guifg = #cb4515
autocmd FileType m hi definedmarcos guifg = #cb4515
autocmd FileType mm hi definedmarcos guifg = #cb4515
autocmd FileType h hi definedmarcos guifg = #cb4515

" IndentLine Settings
set list " show tab and space
set lcs=tab:\┆\ ,nbsp:%,trail:-
" autocmd bufenter * highlight allTab guifg=#4D4D4D
" autocmd winenter * highlight allTab guifg=#4D4D4D
" autocmd bufenter * match allTab /\t/  " match tab
" autocmd winenter * match allTab /\t/  " match tab
" autocmd bufenter * highlight firstTab guifg=#022B35 guibg=#022B35
" autocmd winenter * highlight firstTab guifg=#022B35 guibg=#022B35
" autocmd bufenter * match firstTab /^[\t][\t]*/  " match firsttab
" autocmd winenter * match firsttab /^[\t][\t]*/  " match firsttab
" let g:indentLine_color_gui = '#4D4D4D'
let g:indentLine_char = '┆'
let g:indentLine_faster = 1

" Javascript Settings
au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery

" SQL Completion
let g:sql_type_default = 'mysql'
let g:dbext_default_profile_mySQL = 'type=MYSQL:user=orz:passwd=123456:dbname=test'

" Tablularize
nnoremap <Leader>a= :Tab /=<CR>
vnoremap <Leader>a= :Tab /=<CR>
nnoremap <Leader>a: :Tab /:<CR>
vnoremap <Leader>a: :Tab /:<CR>
nnoremap <Leader>a:: :Tab /:\zs<CR>
vnoremap <Leader>a:: :Tab /:\zs<CR>
nnoremap <Leader>a, :Tab /,<CR>
vnoremap <Leader>a, :Tab /,<CR>
nnoremap <Leader>a<Bar> :Tab /<Bar><CR>
vnoremap <Leader>a<Bar> :Tab /<Bar><CR>

" Auto-pair
let g:AutoPairsFlyMode = 1 " turn fly mode on
let g:AutoPairsShortcutBackInsert = '<Leader>b'  " back insert
let g:AutoPairsShortcutJump = '<Leader>n'  " next end
let g:AutoPairsShortcutFastWrap = '<Leader>w' " fast wrap

" NERDTree Settings
let NERDChristmasTree = 1
let NERDTreeWinPos = 'left'
let NERDTreeQuitOnOpen = 1
let NERDTreeDirArrows = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeShowLineNumbers = 1
let NERDTreeHighlightCursorline = 1
let NERDTreeCascadeOpenSingleChildDir = 1
let NERDTreeIgnore = ['\.DS_Store', '\.pyc$', '\.pyo$', '\.obj$', '\.o$', '\.so$', '\.egg$', '^\.git$', '^\.svn$', '^\.hg$']
autocmd StdinReadPre * let s:std_in = 1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
noremap <F3> :NERDTreeMirror <CR>
noremap <F3> :NERDTreeToggle <CR>

" NERDTress File Highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
    exec 'autocmd FileType nerdtree highlight NERDTreeHighlightType' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
    exec 'autocmd FileType nerdtree syn match NERDTreeHighlightType' . a:extension .' #^\s\+.*\.'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('css', 'cyan', 'none', '#00ffff', '#002b36')
call NERDTreeHighlightFile('php', 'cyan', 'none', '#00ccff', '#002b36')
call NERDTreeHighlightFile('js', 'red', 'none', '#ffa500', '#002b36')
call NERDTreeHighlightFile('py', 'red', 'none', '#ffa500', '#002b36')
call NERDTreeHighlightFile('rb', 'red', 'none', '#ffa500', '#002b36')
call NERDTreeHighlightFile('h', 'red', 'none', '#cc99ff', '#002b36')
call NERDTreeHighlightFile('m', 'red', 'none', '#cc00ff', '#002b36')
call NERDTreeHighlightFile('v', 'red', 'none', '#cc00ff', '#002b36')
call NERDTreeHighlightFile('cpp', 'red', 'none', '#cc00ff', '#002b36')
call NERDTreeHighlightFile('c', 'red', 'none', '#cc00ff', '#002b36')
call NERDTreeHighlightFile('swift', 'red', 'none', '#cc00ff', '#002b36')
call NERDTreeHighlightFile('coffee', 'red', 'none', '#ffa500', '#002b36')
call NERDTreeHighlightFile('jade', 'lightgreen', 'none', 'lightgreen', '#002b36')
call NERDTreeHighlightFile('sass', 'lightgreen', 'none', 'lightgreen', '#002b36')
call NERDTreeHighlightFile('scss', 'lightgreen', 'none', 'lightgreen', '#002b36')
call NERDTreeHighlightFile('json', 'lightgreen', 'none', '#ffffff', '#002b36')
call NERDTreeHighlightFile('ini', 'lightgreen', 'none', '#ffffff', '#002b36')
call NERDTreeHighlightFile('html', 'yellow', 'none', '#ffff00', '#002b36')
call NERDTreeHighlightFile('ejs', 'cyan', 'none', '#ffff00', '#002b36')
call NERDTreeHighlightFile('yml', 'yellow', 'none', '#ffff00', '#002b36')
call NERDTreeHighlightFile('md', 'red', 'none', '#ff0000', '#002b36')

" Airline Settings
let g:airline_powerline_fonts = 1
let g:airline_section_y = 'BN: %{bufnr("%")}'
let g:airline_section_b = '%{strftime("%c")}'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" Ctags Settings
let Tlist_Ctags_Cmd ='/usr/local/Cellar/ctags/5.8_1/bin/ctags'  " 设置ctags的位置，指向用homebrew安装的。

" Taglist Settings
let Tlist_Use_Right_Window = 1 " 让taglist窗口出现在Vim的右边
let Tlist_File_Fold_Auto_Close = 1 " 当同时显示多个文件中的tag时，设置为1，可使taglist只显示当前文件tag，其它文件的tag都被折叠起来。
let Tlist_Show_One_File = 1 " 只显示一个文件中的tag，默认为显示多个
let Tlist_Sort_Type ='name' " Tag的排序规则，以名字排序。默认是以在文件中出现的顺序排序
let Tlist_GainFocus_On_ToggleOpen = 1 " Taglist窗口打开时，立刻切换为有焦点状态
let Tlist_Exit_OnlyWindow = 1 " 如果taglist窗口是最后一个窗口，则退出vim
let Tlist_WinWidth = 32 " 设置窗体宽度为32，可以根据自己喜好设置
nnoremap <F2> :TlistToggle <CR>

" Tagbar Settings
let g:tagbar_autofocus = 1
nnoremap <F9> :TagbarToggle<CR>

" Emment Settings
let g:user_emmet_mode = 'a'    " enable all function in all mode.
let g:user_emmet_settings = {
    \ 'php' : {
        \ 'extends' : 'html',
        \ 'filters' : 'c',
    \ },
    \ 'xml' : {
        \ 'extends' : 'html',
    \ },
    \ 'haml' : {
        \ 'extends' : 'html',
    \ },
    \ 'ejs' : {
        \ 'extends' : 'html',
    \ }
    \}

" Ctrlp Settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn)$',
    \ 'file': '\v\.(exe|so|dll)$',
    \ 'link': 'some_bad_symbolic_links',
    \ }
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " Linux/MacOSX

" YouCompleteMe settings
nnoremap <leader>d :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <F4> :YcmForceCompileAndDiagnostics<CR>
set completeopt=longest,menu "让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
let g:ycm_confirm_extra_conf = 0
let g:ycm_complete_in_comments = 1 "在注释输入中也能补全
let g:ycm_complete_in_strings = 1 "在字符串输入中也能补全
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_key_invoke_completion = '<S-Space>'
inoremap <expr><CR> pumvisible() ? "\<C-y>" : "\<CR>" "回车即选中当前项

" Syntastic Settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_error_symbol = '!'
let g:syntastic_warning_symbol = '?'
let g:syntastic_check_on_wq = 0
let g:syntastic_check_on_open = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_html_tidy_exec = 'tidy5'
let g:syntastic_python_checkers = ['pyflakes']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_cpp_include_dirs = ['/usr/include/']
let g:syntastic_cpp_remove_include_errors = 1
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libstdc++'
let g:syntastic_enable_balloons = 1 " whether to show balloons

" Javascript-Beautify
autocmd FileType javascript noremap <buffer> <leader>b :call JsBeautify()<cr>
autocmd FileType json noremap <buffer> <leader>b :call JsBeautify()<cr>
autocmd FileType html noremap <buffer> <leader>b :call HtmlBeautify()<cr>
autocmd FileType ejs noremap <buffer> <leader>b :call HtmlBeautify()<cr>
autocmd FileType css noremap <buffer> <leader>b :call CSSBeautify()<cr>
autocmd FileType javascript vnoremap <buffer> <leader>b :call RangeJsBeautify()<cr>
autocmd FileType json vnoremap <buffer> <leader>b :call RangeJsBeautify()<cr>
autocmd FileType html vnoremap <buffer> <leader>b :call RangeHtmlBeautify()<cr>
autocmd FileType ejs vnoremap <buffer> <leader>b :call RangeHtmlBeautify()<cr>
autocmd FileType css vnoremap <buffer> <leader>b :call RangeCSSBeautify()<cr>

" Easymotion
nmap s <Plug>(easymotion-s2)
nmap t <Plug>(easymotion-t2)
map / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion
let g:EasyMotion_smartcase = 1 " this make v => V but V => V only

" Undotree
nnoremap <F1> :UndotreeToggle<CR>
if has("persistent_undo")
    set undodir='~/.undodir/'
    set undofile
endif

" Fugitive
nnoremap <leader>gs :Gstatus
nnoremap <leader>gd :Gdiff
nnoremap <leader>gc :Gcommit
nnoremap <leader>gb :Gblame
nnoremap <leader>gl :Glog
nnoremap <leader>gps :Git push
nnoremap <leader>gpl :Git pull

" Vim Move (move lines up and down)
let g:move_key_modifier = 'D' " use ctl key

" Latex
let g:vimtex_enabled = 1
let g:tex_flavor = 'latex'
let g:vimtex_index_split_width = 30
let g:vimtex_toc_secnumdepth = 0
let g:vimtex_index_hide_line_numbers = 0
let g:vimtex_index_show_help = 0
let g:tex_conceal = ""

if !exists('g:ycm_semantic_triggers')
    let g:ycm_semantic_triggers = {}
endif

let g:ycm_semantic_triggers.tex = [
    \ 're!\\[A-Za-z]*(ref|cite)[A-Za-z]*([^]]*])?{([^}]*, ?)*'
    \ ]

augroup latexSurround
    autocmd!
    autocmd FileType tex call s:latexSurround()
augroup END

function! s:latexSurround()
    let b:surround_{char2nr("e")}
        \ = "\\begin{\1environment: \1}\n\t\r\n\\end{\1\1}"
    let b:surround_{char2nr("c")} = "\\\1command: \1{\r}"
endfunction

" Markdown
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_math = 1
let g:vim_markdown_frontmatter = 1

" UltuSnips trigger configuration.
let g:UltiSnipsExpandTrigger = "<c-CR>"
let g:UltiSnipsJumpForwardTrigger = "<c-b>"
let g:UltiSnipsJumpBackwardTrigger = "<c-z>"
let g:UltiSnipsEditSplit = "vertical"

" Line Number Settings
let g:numbers_exclude = ['unite', 'startify', 'gundo', 'vimshell', 'w3m', 'nerdtree', 'tagbar', 'taglist', 'vimtex']

" Expand region Settings
" noremap <SPACE> <Plug>(expand_region_expand)
" noremap <S-SPACE> <Plug>(expand_region_shrink)

"====================================================================================================

"Vundle below
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()
" alternatively, pass a path where Vundle should install Plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'
Plugin 'gmarik/sudo-gui.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'nono/jquery.vim'
Plugin 'othree/html5.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'mattn/emmet-vim'
Plugin 'bling/vim-airline'
Plugin 'vim-scripts/taglist.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'terryma/vim-multiple-cursors'
"Plugin 'vim-scripts/dbext.vim'
"Plugin 'SQLComplete.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Valloric/MatchTagAlways'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'einars/js-beautify'
Plugin 'godlygeek/tabular'
Plugin 'tpope/vim-surround'
Plugin 'mbbill/undotree'
Plugin 'tpope/vim-fugitive'
Plugin 'majutsushi/tagbar'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'plasticboy/vim-markdown'
Plugin 'craigemery/vim-autotag'
Plugin 'tpope/vim-repeat'
Plugin 'matze/vim-move'
Plugin 'tpope/vim-haml'
Plugin 'lervag/vimtex'
Plugin 'Armour/numbers.vim'
Plugin 'briancollins/vim-jst'
"Plugin 'terryma/vim-expand-region'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore Plugin indent changes, instead use:
"filetype Plugin on
"
" Brief help
" :PluginList       - lists configured Plugins
" :PluginInstall    - installs Plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused Plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


"==========================================================================================

" <F5>编译和运行C程序
noremap <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
    exec "w"
    if &filetype == 'c'
        exec "!gcc % -o %<"
        exec "!time ./%<"
    elseif &filetype == 'cpp'
        exec "!g++ -std=c++11 % -o %<"
        exec "!time ./%<"
    elseif &filetype == 'java'
        exec "!javac %"
        exec "!time java %<"
    elseif &filetype == 'sh'
        exec "!time bash %"
    elseif &filetype == 'python'
        exec "!time python %"
    elseif &filetype == 'html'
        exec "!safari % &"
    elseif &filetype == 'go'
        exec "!time go run %"
    elseif &filetype == 'mkd'
        exec "!~/.vim/markdown.pl % > %.html &"
        exec "!safari %.html &"
    endif
endfunc

"C,C++的调试
noremap <F8> :call Rungdb()<CR>
func! Rungdb()
    exec "w"
    exec "!g++ % -g -o %<"
    exec "!gdb ./%<"
endfunc

" buffer 切换
nnoremap b1 :1b<CR>
nnoremap b2 :2b<CR>
nnoremap b3 :3b<CR>
nnoremap b4 :4b<CR>
nnoremap b5 :5b<CR>
nnoremap b6 :6b<CR>
nnoremap b7 :7b<CR>
nnoremap b8 :8b<CR>
nnoremap b9 :9b<CR>
nnoremap b10 :10b<CR>
nnoremap bl :ls<CR>
nnoremap bn :bn<CR>
nnoremap bd :bd<CR>

" fold config
set foldmethod=expr
set foldignore=
set foldexpr=GetPotionFold(v:lnum)

function! IndentLevel(lnum)
    return indent(a:lnum) / &shiftwidth
endfunction

function! NextNonBlankLine(lnum)
    let numlines = line('$')
    let current = a:lnum + 1
    while current <= numlines
        if getline(current) =~? '\v\S'
            return current
        endif
        let current += 1
    endwhile
    return -2
endfunction

function! GetPotionFold(lnum)
    if getline(a:lnum) =~? '\v^\s*$'
        return '-1'
    endif
    let this_indent = IndentLevel(a:lnum)
    let next_indent = IndentLevel(NextNonBlankLine(a:lnum))
    if next_indent == this_indent
        return this_indent
    elseif next_indent < this_indent
        return this_indent
    elseif next_indent > this_indent
        return '>' . next_indent
    endif
endfunction

" Delete all white space in the end of line
noremap <leader><space> :execute "%s/\\s\\+$//g"<CR>
noremap <leader><CR> :execute "%s/\\r\\+$//g"<CR>
noremap <leader><Tab> :execute "%s/\\t/    /g"<CR>

" arrow key is evil!!
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" split window and move between
nnoremap <D-d> :vs<CR>
nnoremap <D-D> :sp<CR>
nnoremap <D-[> <C-w>h
nnoremap <D-]> <C-w>l

" cp map
nnoremap <silent> <Plug>ChangeTwoCharPosition xp
            \:call repeat#set("\<Plug>ChangeTwoCharPosition")<CR>
nnoremap cp <Plug>ChangeTwoCharPosition

" insert one line without stay in insert mode
noremap <C-o> o<esc><CR>

" insert one space without stay in insert mode
noremap <C-i> i <esc>

" vimgrep
noremap <leader>g :execute "vimgrep /" . expand("<cWORD>") . "/j *" <Bar> cw<CR>

" change this word to uppercase
inoremap <leader>u <esc>vawUea

