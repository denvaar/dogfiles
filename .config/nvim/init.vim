set nocompatible
filetype off
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'SirVer/ultisnips'
Plugin 'othree/yajs.vim'
Plugin 'mxw/vim-jsx'
"Plugin 'mhartington/oceanic-next'
Plugin 'elixir-editors/vim-elixir'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'slim-template/vim-slim.git'

set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_clear_cache_on_exit = 0

let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
let g:UltiSnipsSnippetDir='~/.config/nvim/UltiSnips'
let g:UltiSnipsSnippetDirectories=["~/.config/nvim/UltiSnips", "UltiSnips"]

set runtimepath+=~/.config/nvim
call vundle#end()
filetype plugin indent on

" ================
" General Settings
" ================

set autoindent
set expandtab
set tabstop=4
set shiftwidth=4
set hlsearch

set background=dark
"let g:solarized_visibility="high"
"let g:solarized_contrast="high"
"let g:solarized_termcolors=256
"let g:solarized_termtrans=1

if (has("termguicolors"))
  set termguicolors
endif

set nu
set rnu
syntax enable


nnoremap <C-]> <C-w><C-]><C-w>T

"colorscheme OceanicNext
"colorscheme solarized
"colorscheme stormpetrel
colorscheme quantum
"colorscheme stellarized_dark
"colorscheme carbonized-dark


"" Remove all text except what matches the current search result
"" The opposite of :%s///g (which clears all instances of the current search).
function! ClearAllButMatches()
    let old = @c
    let @c=""
    %s//\=setreg('C', submatch(0), 'l')/g
    %d _
    put c
    0d _
    let @c = old
endfunction


highlight Search guibg=SteelBlue1
highlight Visual guibg=MediumTurquoise guifg=Purple3
set cursorline

augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END


highlight Comment cterm=italic gui=italic


function TrimWhiteSpace()
  %s/\s*$//
  ''
:endfunction

autocmd BufWritePre * :call TrimWhiteSpace()

exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
set list

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" ==============
" HTML Settings
" ==============
autocmd FileType html setlocal shiftwidth=2 tabstop=2
highlight htmlArg cterm=italic gui=italic

" ===========
" JS Settings
" ===========
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2

" =============
" Ruby Settings
" =============
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
autocmd FileType slim setlocal shiftwidth=2 tabstop=2

" ===============
" Python Settings
" ===============
autocmd FileType python highlight OverLength ctermbg=181 ctermfg=Black guibg=#dc322f
autocmd FileType python match OverLength /\%81v.\+/
