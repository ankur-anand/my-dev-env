set nocompatible                          "We want the latest Vim settings/options.

so ~/.vim/plugins.vim

set backspace=indent,eol,start                                          "Make backspace behave like every other editor.
let mapleader = ','                   "The default is \, but a comma is much better.
set number                "Let's activate line numbers.
set noerrorbells visualbell t_vb=                     "No damn bells!
set autowriteall                                                        "Automatically write the file when switching buffers.
set complete=.,w,b,u              "Set our desired autocompletion matching.



"-------------Visuals--------------"
set t_CO=256                "Use 256 colors. This is useful for Terminal Vim.
set guifont=Fira\ Code:h17            "Set the default font family and size.
set guioptions-=e             "We don't want Gui tabs.
set linespace=15                      "Macvim-specific line-height.

set guioptions-=l                                                       "Disable Gui scrollbars.
set guioptions-=L
set guioptions-=r
set guioptions-=R

"We'll fake a custom left padding for each window.
hi LineNr guibg=bg
set foldcolumn=2
hi foldcolumn guibg=bg

"Get rid of ugly split borders.
hi vertsplit guifg=bg guibg=bg




"-------------Search--------------"
set hlsearch                "Highlight all matched terms.
set incsearch               "Incrementally highlight, as we type.




"-------------Split Management--------------"
set splitbelow                "Make splits default to below...
set splitright                "And to the right. This feels more natural.

"We'll set simpler mappings to switch between splits.
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

"-----------------JavaScript Management----------------"
let g:javascript_plugin_jsdoc = 1
let g:jsx_ext_required = 0 " Allow JSX in normal JS files

"-------------Mappings--------------"
"Make it easy to edit the Vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <Leader>es :e ~/.vim/snippets/

"Add simple highlight removal.
nmap <Leader><space> :nohlsearch<cr>

"Quickly browse to any tag/symbol in the project.
"Tip: run ctags -R to regenerated the index.
nmap <Leader>f :tag<space>




"-------------Plugins--------------"
"/
"/ CtrlP
"/
let g:ctrlp_custom_ignore = 'node_modules\DS_Store\|git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'


"/
"/ NERDTree
"/
let NERDTreeHijackNetrw = 0
let NERDTreeQuitOnOpen = 1

"Make NERDTree easier to toggle.
map <silent> <C-n> :NERDTreeToggle<CR>
"/
"/ Greplace.vim
"/
set grepprg=ag                "We want to use Ag for the search.

let g:grep_cmd_opts = '--line-numbers --noheading'

"----------UI---------------------------"
set laststatus=2               " enable airline even if no splits
  let g:airline_theme='luna'
  let g:airline_powerline_fonts=1
  let g:airline_enable_branch=1
  let g:airline_enable_syntastic=1
  let g:airline_powerline_fonts = 1
  let g:airline_left_sep = ''
  let g:airline_right_sep = ''
  let g:airline#extensions#tabline#enabled = 0
  
"----------------UI END -----------------------------"


""" UI Tweaks ==========================
"set t_Co=256 " Force 256 colors

" Turn off menu in gui
set guioptions="agimrLt"
" Turn off mouse click in gui
set mouse=""


"set t_ut= " improve screen clearing by using the background color
"------------------------
" Syntax: highlighting
"------------------------
colorscheme molokai
syntax on
"set enc=utf-8
"set term=screen-256color
"let $TERM='screen-256color'

" Highlighting line or number follows vvvvv
"
set cul " highlight current line
" If you want to just highlight the line number:
" hi clear CursorLine
" augroup CLClear
"   autocmd! ColorScheme * hi clear CursorLine
" augroup END
" hi CursorLineNR cterm=bold
" augroup CLNRSet
"     autocmd! ColorScheme * hi CursorLineNR cterm=bold
" augroup END



" Show trailing whitespace and spaces before a tab:
:highlight ExtraWhitespace ctermbg=red guibg=red
:autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\\t/
""" End UI Tweaks ======================

" NO ARROW KEYS COME ON
map <Left> :echo "no!"<cr>
map <Right> :echo "no!"<cr>
map <Up> :echo "no!"<cr>
map <Down> :echo "no!"<cr>

" Custom split opening / closing behaviour
map <C-C> :q<CR>


"-------------Auto-Commands--------------"
"Automatically source the Vimrc file on save.

augroup autosourcing
  autocmd!
  autocmd BufWritePost .vimrc source %
augroup END




"-------------Tips and Reminders--------------"
" - Press 'zz' to instantly center the line where the cursor is located.    
