execute pathogen#infect()
syntax on
filetype plugin indent on

" Set autorefresh when this file is edited
:set autoread
" Set auto source
autocmd! bufwritepost ~/.vimrc source %
" Initiate ctags
:set tags=~/mytags
" Hide status line
set laststatus=0
" Set up fzf
set rtp+=/usr/local/opt/fzf
" KEY MAPS
" F1 key is reserved as help function
:let mapleader = ","
:noremap <F2>  :UndotreeToggle<CR>
:noremap <F5> :!open -a Safari %<CR><CR>
:noremap <F7>  :tabp <Enter>
:noremap <F8>  :tabn <Enter>
:noremap <F10> :tabc <Enter>
:inoremap jk <esc>
:inoremap <esc> <nop>
" Toggle Tagbar
:noremap <leader>t :TagbarToggle<CR>
" Add global youcompleteme conf
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

" Turn off ycm syntax check
let g:ycm_show_diagnostics_ui = 0

" Add html autocomplete to vim and sassy support
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
:set omnifunc=csscomplete#CompleteCSS
autocmd BufNewFile,BufRead *.scss set ft=scss.css
          
let g:mta_use_matchparen_group = 1

" Show line number
:set number
:set ruler

" Automatically close the tags
imap ,/ </<C-X><C-O>

" Add docstring support
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab
nmap <silent> <C-d> <Plug>(pydocstring)

" Remap the weird nerdtree tab bug
map <leader>e :vertical resize 25<CR>

" Change tab to four spaces
:set tabstop=4
:set shiftwidth=4
:set expandtab
:set autoindent
" :set smartindent " Disable it if indentation has problems

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

" these "Ctrl mappings" work well when Caps Lock is mapped to Ctrl
nmap <silent> t<C-n> :TestNearest<CR> " t Ctrl+n
nmap <silent> t<C-f> :TestFile<CR>    " t Ctrl+f
nmap <silent> t<C-s> :TestSuite<CR>   " t Ctrl+s
nmap <silent> t<C-l> :TestLast<CR>    " t Ctrl+l
nmap <silent> t<C-g> :TestVisit<CR>   " t Ctrl+g
