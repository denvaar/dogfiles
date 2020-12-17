set nocompatible
filetype off
let runtimepath=$VIM_RUNTIME . '/bundle/Vundle.vim'
execute 'set rtp+=' . runtimepath
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'SirVer/ultisnips'
Plugin 'othree/yajs.vim'
Plugin 'mxw/vim-jsx'
Plugin 'elixir-editors/vim-elixir'
Plugin 'mhinz/vim-mix-format'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'leafgarland/typescript-vim'
Plugin 'peitalin/vim-jsx-typescript'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'to': './install --bin' }
Plugin 'junegunn/fzf.vim'
Plugin 'haishanh/night-owl.vim'
Plugin 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'yaml', 'html'] }
Plugin 'kaicataldo/material.vim'

call vundle#end()
filetype plugin indent on

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

set backspace=indent,eol,start

set nu
set rnu
syntax enable

set fillchars+=vert:█
set background=dark
set t_Co=256
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
let &t_ZH="\<Esc>[3m"
let &t_ZR="\<Esc>[23m"
set hlsearch
set autoindent
set expandtab
set tabstop=4
set shiftwidth=4
set cursorline
exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
set list
if (has("termguicolors"))
  set termguicolors
endif

let g:material_terminal_italics = 1
let g:material_theme_style = 'ocean'
colorscheme quantum

" let g:atlantis_terminal_italics = 1
" colorscheme atlantis

highlight Comment cterm=italic gui=italic
highlight LineNr guifg=#50b7b0
"guibg=#22263a
highlight CursorLineNR guifg=#61f967 guibg=#22263a
highlight htmlArg cterm=italic gui=italic
highlight tsxAttrib gui=italic
highlight xmlAttrib gui=italic
highlight link tsxCloseTagName tsxTagName
"highlight CursorLine guibg=#23303c

let g:mix_format_on_save = 1

function TrimWhiteSpace()
  %s/\s*$//
  ''
:endfunction

autocmd BufWritePre * :call TrimWhiteSpace()
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

function FormatCode()
  let l:winview = winsaveview()
  mark `
  normal! gg=G
  normal ``
  call winrestview(l:winview)
:endfunction
autocmd BufWritePre *.html.leex,*.html.eex :call FormatCode()

autocmd BufEnter * :syntax sync fromstart " Fix syntax highlighting bug after save


map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>


let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6, 'highlight': 'Comment', 'border': 'sharp' } }

nnoremap <silent> <C-p> :FZF<CR>

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
let g:UltiSnipsSnippetDir='~/.config/nvim/UltiSnips'
let g:UltiSnipsSnippetDirectories=["~/.config/nvim/UltiSnips", "UltiSnips"]


autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType typescript.tsx setlocal shiftwidth=2 tabstop=2
autocmd BufNewFile,BufRead *.tsx,*.ts set filetype=typescript.tsx
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
autocmd FileType slim setlocal shiftwidth=2 tabstop=2
autocmd FileType python highlight OverLength ctermbg=181 ctermfg=Black guibg=#dc322f
autocmd FileType python match OverLength /\%81v.\+/

