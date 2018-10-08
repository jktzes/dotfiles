set nocompatible              
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/MatchTagAlways'
Plugin 'chrisbra/Recover.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'w0rp/ale'
Plugin 'chrisbra/csv.vim'
Plugin 'mattn/emmet-vim'
Plugin 'junegunn/fzf'
Plugin 'junegunn/goyo.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'scrooloose/nerdcommenter'
Plugin 'jktzes/nerdtree'
Plugin 'danro/rename.vim'
Plugin 'ervandew/supertab'
Plugin 'majutsushi/tagbar'
Plugin 'wincent/terminus'
Plugin 'SirVer/ultisnips'
Plugin 'mbbill/undotree'
Plugin 'tpope/vim-capslock'
Plugin 'alvan/vim-closetag'
Plugin 'ap/vim-css-color'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'junegunn/vim-easy-align'
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-fugitive'
Plugin 'farmergreg/vim-lastplace'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'tpope/vim-obsession'
Plugin 'sheerun/vim-polyglot'
Plugin 'heavenshell/vim-pydocstring'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-sleuth'
Plugin 'connorholyday/vim-snazzy'
Plugin 'tpope/vim-surround'
Plugin 'janko-m/vim-test'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'bronson/vim-visual-star-search'
Plugin 'itchyny/lightline.vim'
Plugin 'godlygeek/tabular'
Plugin 'airblade/vim-rooter'
Plugin 'ecomba/vim-ruby-refactoring'
Plugin 'mileszs/ack.vim'
Plugin 'tmhedberg/matchit'
Plugin 'vim-scripts/TaskList.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" Set autorefresh when this file is edited
:set autoread
" Set auto source
autocmd! bufwritepost ~/.vimrc source %
" ctags optimization
set autochdir
set tags=tags;
" open tag in new tab
:nnoremap <silent><C-]> <C-w><C-]><C-w>T
" Hide status line
set laststatus=2
augroup atcmds
    autocmd!
    autocmd FileType nerdtree syntax match NERDTreeHideCWD #^[</].*$# conceal
    autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
    autocmd BufNewFile,BufRead *.scss set ft=scss.css
    autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab
    " for C-like  programming where comments have explicit end
    " characters, if starting a new line in the middle of a comment automatically
    " insert the comment leader characters:
    autocmd FileType c,cpp,java set formatoptions+=ro
    autocmd FileType c set omnifunc=ccomplete#Complete
    
    " two space for html css and etc
    autocmd FileType html,xhtml,css,xml,xslt,rb set shiftwidth=2 softtabstop=2
    
    " two space indentation for some files
    autocmd FileType vim,lua,nginx set shiftwidth=2 softtabstop=2
    
    " for CSS, also have things in braces indented:
    autocmd FileType css set omnifunc=csscomplete#CompleteCSS
    
    " add completion for xHTML
    autocmd FileType xhtml,html set omnifunc=htmlcomplete#CompleteTags
    
    " add completion for XML
    autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
    
    " don't expand tabs to spaces for makefiles
    autocmd FileType make setlocal noexpandtab 
    
    " ensure normal tabs in assembly files
    " and set to NASM syntax highlighting
    autocmd FileType asm set noexpandtab shiftwidth=8 softtabstop=0 syntax=nasm
augroup end
"rails auto complete
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_rails = 1
" KEY MAPS
" F1 key is reserved as help function
let mapleader=" "
:inoremap jk <esc>
:inoremap JK <esc> 
"never remap <C-c> since it's the last resort to esc
:nmap vv :tabe ~/.vimrc <CR>
:cmap [ UltiSnipsEdit <CR>
map <F1> :tabp <CR>
imap <F1> :tabp <CR>
:noremap <F2>  :tabn<CR>
"in tmux <F3>: previous window
"in tmux <F4>: next window
:noremap <F5>  :UndotreeToggle<CR>
":noremap <F5>  :!open -a Safari %<CR><CR>
"in tmux <F6>: the master key
:cmap <F7> Tabularize /:\zs <CR>
:noremap <F8>  :FZF<CR>
":noremap <F9>
":noremap <F10> :tabc <CR>
:"noremap <F11> 
":noremap <F12> 
if exists(":Tabularize")
    nmap <Leader>a= :Tabularize /=<CR>
    vmap <Leader>a= :Tabularize /=<CR>
    nmap <Leader>a: :Tabularize /:\zs<CR>
    vmap <Leader>a: :Tabularize /:\zs<CR>
endif
" Toggle Tagbar
:noremap <leader>t :TagbarToggle<CR>
" Toggle todo list
map <leader>v <Plug>TaskList
" navigate like Firefox
nnoremap <C-t>     :tabnew<CR>
nnoremap <C-w>     :tabc<CR>
inoremap <C-t>     <Esc>:tabnew<CR>
" Add global youcompleteme conf
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

" Turn off ycm syntax check
let g:ycm_show_diagnostics_ui = 0

" Add html autocomplete to vim and sassy support
:set omnifunc=csscomplete#CompleteCSS
          
let g:mta_use_matchparen_group = 1

" Show line number
:set number
:set ruler

" Automatically close the tags
imap ,/ </<C-X><C-O>

" Add docstring support
nmap <silent> <C-d> <Plug>(pydocstring)

" Remap the weird nerdtree tab bug
map <leader>e :vertical resize 25<CR>


" Set highlight for search
:set hlsearch

" Enable system clipboard
:set clipboard=unnamed
map <C-x> :!pbcopy<CR>
vmap <C-c> :w !pbcopy<CR><CR>

" Highlight text after 80 chars
let s:activatedh = 0
function! ToggleH()
    if s:activatedh == 0
        let s:activatedh = 1
        match Search '\%>72v.\+'
    else
        let s:activatedh = 0
        match none
    endif
endfunction

nnoremap <leader>1 :call ToggleH()<CR>
" Open new files in tabs
let NERDTreeMapOpenInTab='<ENTER>'
" Set a key to toggle Always open NERDTree
:nnoremap <silent><Leader>c :NERDTreeTabsToggle<CR>

" UndotreeToggle Setup
" test if this works
if has("persistent_undo")
    set undodir=~/.undodir/
    set undofile
endif

if !exists('g:undotree_WindowLayout')
    let g:undotree_WindowLayout = 2
endif

if !exists('g:undotree_HighlightChangedText')
    let g:undotree_HighlightChangedText = 1
endif

if !exists('g:undotree_SetFocusWhenToggle')
    let g:undotree_SetFocusWhenToggle = 1
endif
" COLOR THEMES
syntax on
colorscheme snazzy
let g:lightline = {
\ 'colorscheme': 'snazzy',
\ }
" remove redundent info in status line
set noshowmode
" Font
:set guifont=Menlo\ for\ Powerline

" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml, *.js'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add slim support in emmet
let g:closetag_close_shortcut = '<leader>>'

let g:user_zen_settings = {
\  'haml': {
\    'extends': 'html',
\   },
\  'slim': {
\    'extends': 'html',
\   },
\}

"Add support for snippet
"If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', 'UltiSnips']
" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" After this is configured, :ALEFix will try and fix your JS code with ESLint.
let g:ale_fixers = {
\   'javascript': ['eslint'],
\}
" silent the ale as I make changes to the document
let g:ale_lint_on_text_changed = 'never' 
" disable lint on enter for ale 
let g:ale_lint_on_enter = 0
" only lint on save
let g:ale_lint_on_save = 1

" Change multicursor quit key
let g:multi_cursor_quit_key = '`'
" enable backspace for multicursor
set backspace=indent,eol,start

" these "Ctrl mappings" work well when Caps Lock is mapped to Ctrl
nmap <silent> t<C-n> :TestNearest<CR> " t Ctrl+n
nmap <silent> t<C-f> :TestFile<CR>    " t Ctrl+f
nmap <silent> t<C-s> :TestSuite<CR>   " t Ctrl+s
nmap <silent> t<C-l> :TestLast<CR>    " t Ctrl+l
nmap <silent> t<C-g> :TestVisit<CR>   " t Ctrl+g

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

let g:NERDCustomDelimiters = { 'c' : { 'left': '//','right': '' }, 'js': { 'left': '//','right': '' } }

let g:nerdtree_tabs_focus_on_files=1
" Show index number for tab
set showtabline=1  " 1 to show tabline only when more than one tab is present
set tabline=%!MyTabLine()  " custom tab pages line

function! s:find_git_root()
  return system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
endfunction

command! ProjectFiles execute 'Files' s:find_git_root()

function! MyTabLine()
        let s = '' " complete tabline goes here
        " loop through each tab page
        for t in range(tabpagenr('$'))
                " set highlight
                if t + 1 == tabpagenr()
                        let s .= '%#TabLineSel#'
                else
                        let s .= '%#TabLine#'
                endif
                " set the tab page number (for mouse clicks)
                let s .= '%' . (t + 1) . 'T'
                let s .= ' '
                " set page number string
                let s .= t + 1 . ' '
                " get buffer names and statuses
                let n = ''      "temp string for buffer names while we loop and check buftype
                let m = 0       " &modified counter
                let bc = len(tabpagebuflist(t + 1))     "counter to avoid last ' '
                " loop through each buffer in a tab
                for b in tabpagebuflist(t + 1)
                        " buffer types: quickfix gets a [Q], help gets [H]{base fname}
                        " others get 1dir/2dir/3dir/fname shortened to 1/2/3/fname
                        if getbufvar( b, "&buftype" ) == 'help'
                                let n .= '[H]' . fnamemodify( bufname(b), ':t:s/.txt$//' )
                        elseif getbufvar( b, "&buftype" ) == 'quickfix'
                                let n .= '[Q]'
                        else
                                let n .= pathshorten(bufname(b))
                        endif
                        " check and ++ tab's &modified count
                        if getbufvar( b, "&modified" )
                                let m += 1
                        endif
                        " no final ' ' added...formatting looks better done later
                        if bc > 1
                                let n .= ' '
                        endif
                        let bc -= 1
                endfor
                " add modified label [n+] where n pages in tab are modified
                if m > 0
                        let s .= '[' . m . '+]'
                endif
                " select the highlighting for the buffer names
                " my default highlighting only underlines the active tab
                " buffer names.
                if t + 1 == tabpagenr()
                        let s .= '%#TabLineSel#'
                else
                        let s .= '%#TabLine#'
                endif
                " add buffer names
                if n == ''
                        let s.= '[New]'
                else
                        let s .= n
                endif
                " switch to no underlining and add final space to buffer list
                let s .= ' '
        endfor
        " after the last tab fill with TabLineFill and reset tab page nr
        let s .= '%#TabLineFill#%T'
        " right-align the label to close the current tab page
        if tabpagenr('$') > 1
                let s .= '%=%#TabLineFill#%999Xclose'
        endif
        return s
endfunction
