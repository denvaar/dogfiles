hi clear
if exists('syntax_on')
  syntax reset
endif
let g:colors_name = 'primary'
let s:disable_italic = get(g:,'colorscheme_primary_disable_italic', 0)

"Set color palette with RGB colors
let s:RED    = '#EA4335'
let s:GREEN  = '#34A853'
let s:YELLOW = '#FBBC05'
let s:BLUE   = '#4285F4'
let s:BLUE2  = '#346e9c'
let s:BLACK  = '#052c35'
let s:DGREY  = '#656565'
let s:LGREY  = '#EEEEEE'
let s:WHITE  = '#FFFFFF'

"Set gui mode and italics
let s:M = 'gui'
let s:I = s:disable_italic ? 'none' : 'italic'

"Reverse greyscale for light vs dark modes
if &background == 'dark'
  let s:GREY0  = s:WHITE
  let s:GREY1  = s:LGREY
  let s:GREY2  = s:DGREY
  let s:BG     = s:BLACK
else  "light
  let s:GREY0  = s:BLACK
  let s:GREY1  = s:DGREY
  let s:GREY2  = s:LGREY
  let s:BG     = s:WHITE
endif


" Colors for Syntax Highlighting.
exe 'hi String       '.s:M.'bg=NONE'  .' '.s:M.'fg='.s:RED  .' '.s:M.'='.s:I
exe 'hi Character    '.s:M.'bg=NONE'  .' '.s:M.'fg='.s:RED  .' '.s:M.'='.s:I
exe 'hi Conditional  '.s:M.'bg=NONE'  .' '.s:M.'fg='.s:RED  .' '.s:M.'=bold'
exe 'hi Label        '.s:M.'bg=NONE'  .' '.s:M.'fg='.s:RED  .' '.s:M.'=bold'
exe 'hi Repeat       '.s:M.'bg=NONE'  .' '.s:M.'fg='.s:RED  .' '.s:M.'=bold'
exe 'hi Statement    '.s:M.'bg=NONE'  .' '.s:M.'fg='.s:RED  .' '.s:M.'=bold'
exe 'hi Keyword      '.s:M.'bg=NONE'  .' '.s:M.'fg='.s:RED  .' '.s:M.'=bold'
exe 'hi Exception    '.s:M.'bg=NONE'  .' '.s:M.'fg='.s:RED  .' '.s:M.'=bold'

exe 'hi Normal       '.s:M.'bg='.s:BLACK  .' '.s:M.'fg='.s:BLUE .' '.s:M.'=none'
exe 'hi Identifier   '.s:M.'bg=NONE'  .' '.s:M.'fg='.s:BLUE .' '.s:M.'=bold'
exe 'hi Function     '.s:M.'bg=NONE'  .' '.s:M.'fg='.s:BLUE .' '.s:M.'=bold'

exe 'hi Comment      '.s:M.'bg=NONE'  .' '.s:M.'fg=#4e6577'. ' '.s:M.'=none'
exe 'hi Typedef      '.s:M.'bg=NONE'  .' '.s:M.'fg='.s:GREEN.' '.s:M.'='.s:I
exe 'hi PreProc      '.s:M.'bg=NONE'  .' '.s:M.'fg='.s:GREEN.' '.s:M.'=bold'
exe 'hi Include      '.s:M.'bg=NONE'  .' '.s:M.'fg='.s:GREEN.' '.s:M.'=bold'
exe 'hi Define       '.s:M.'bg=NONE'  .' '.s:M.'fg='.s:GREEN.' '.s:M.'=bold'
exe 'hi Macro        '.s:M.'bg=NONE'  .' '.s:M.'fg='.s:GREEN.' '.s:M.'=bold'
exe 'hi Precondit    '.s:M.'bg=NONE'  .' '.s:M.'fg='.s:GREEN.' '.s:M.'=bold'
exe 'hi SpecialComment '.s:M.'bg=NONE'.' '.s:M.'fg=#4e6577'. ' '.s:M.'=bold'

exe 'hi Special      '.s:M.'bg=NONE'  .' '.s:M.'fg='.s:GREY0.' '.s:M.'=none'
exe 'hi Delimiter    '.s:M.'bg=NONE'  .' '.s:M.'fg='.s:GREY0.' '.s:M.'=none'
exe 'hi Debug        '.s:M.'bg=NONE'  .' '.s:M.'fg='.s:GREY0.' '.s:M.'=none'
exe 'hi SpecialChar  '.s:M.'bg=NONE'  .' '.s:M.'fg='.s:GREY0.' '.s:M.'=bold'
exe 'hi Title        '.s:M.'bg=NONE'  .' '.s:M.'fg='.s:GREY0.' '.s:M.'=bold'

exe 'hi Constant     '.s:M.'bg=NONE'  .' '.s:M.'fg='.s:GREY1.' '.s:M.'=none'
exe 'hi Boolean      '.s:M.'bg=NONE'  .' '.s:M.'fg='.s:GREY1.' '.s:M.'=none'
exe 'hi Number       '.s:M.'bg=NONE'  .' '.s:M.'fg='.s:GREY1.' '.s:M.'=none'
exe 'hi Float        '.s:M.'bg=NONE'  .' '.s:M.'fg='.s:GREY1.' '.s:M.'=none'
exe 'hi Operator     '.s:M.'bg=NONE'  .' '.s:M.'fg='.s:GREY1.' '.s:M.'=bold'
exe 'hi Tag          '.s:M.'bg=NONE'  .' '.s:M.'fg='.s:GREY1.' '.s:M.'=bold'
exe 'hi Ignore       '.s:M.'bg=NONE'  .' '.s:M.'fg='.s:GREY1.' '.s:M.'=none'
exe 'hi Underlined   '.s:M.'bg=NONE'  .' '.s:M.'fg='.s:GREY1 .' '.s:M.'=underline'

exe 'hi MatchParen   '.s:M.'bg='.s:RED .' '.s:M.'fg='.s:BG   .' '.s:M.'=none'
exe 'hi Error        '.s:M.'bg='.s:RED .' '.s:M.'fg='.s:BG   .' '.s:M.'=none'

exe 'hi Type         '.s:M.'bg=NONE' .' '.s:M.'fg='.s:YELLOW.' '.s:M.'=bold'
exe 'hi StorageClass '.s:M.'bg=NONE' .' '.s:M.'fg='.s:YELLOW.' '.s:M.'=bold'
exe 'hi Structure    '.s:M.'bg=NONE' .' '.s:M.'fg='.s:YELLOW.' '.s:M.'=bold'
exe 'hi Todo         '.s:M.'bg='.s:YELLOW.' '.s:M.'fg='.s:BG .' '.s:M.'=none'
exe 'hi WildMenu     '.s:M.'bg='.s:YELLOW.' '.s:M.'fg='.s:BG .' '.s:M.'=none'

exe 'hi DiffAdd      '.s:M.'bg='.s:BLUE .' '.s:M.'fg='.s:GREY0.' '.s:M.'=none'
exe 'hi DiffChange   '.s:M.'bg='.s:GREEN.' '.s:M.'fg='.s:GREY0.' '.s:M.'=none'
exe 'hi DiffDelete   '.s:M.'bg='.s:RED  .' '.s:M.'fg='.s:GREY0.' '.s:M.'=none'
exe 'hi DiffText     '.s:M.'bg='.s:GREY1.' '.s:M.'fg='.'NONE'.'  '.s:M.'=none'


" Colors for the User Interface.
exe 'hi Cursor       '.s:M.'bg='.s:GREY2.' '.s:M.'fg='.s:BG   .' '.s:M.'=bold'
exe 'hi Search       '.s:M.'bg='.s:YELLOW.' '.s:M.'fg='.s:BG  .' '.s:M.'=none'
exe 'hi IncSearch    '.s:M.'bg='.s:YELLOW.' '.s:M.'fg='.s:BG  .' '.s:M.'=none'
exe 'hi ColorColumn  '.s:M.'bg='.s:GREY2.' '.s:M.'fg='.'NONE' .' '.s:M.'=none'
exe 'hi SignColumn   '.s:M.'bg='.s:GREY2.' '.s:M.'fg='.s:YELLOW.' '.s:M.'=none'

exe 'hi WarningMsg   '.s:M.'bg='.s:BG   .' '.s:M.'fg='.s:RED  .' '.s:M.'=bold'
exe 'hi ErrorMsg     '.s:M.'bg='.s:BG   .' '.s:M.'fg='.s:RED  .' '.s:M.'=bold'
exe 'hi ModeMsg      '.s:M.'bg='.s:BG   .' '.s:M.'fg='.s:BLUE .' '.s:M.'=bold'
exe 'hi MoreMsg      '.s:M.'bg='.s:BG   .' '.s:M.'fg='.s:BLUE .' '.s:M.'=bold'
exe 'hi Question     '.s:M.'bg='.s:BG   .' '.s:M.'fg='.s:BLUE .' '.s:M.'=bold'
exe 'hi Directory    '.s:M.'bg='.s:BG   .' '.s:M.'fg='.s:GREEN.' '.s:M.'=none'
exe 'hi SpecialKey   '.s:M.'bg='.s:BG   .' '.s:M.'fg='.s:GREY0.' '.s:M.'=none'
exe 'hi Titled       '.s:M.'bg='.s:BG   .' '.s:M.'fg='.s:GREY0.' '.s:M.'=none'
exe 'hi NonText      '.s:M.'bg='.s:BG   .' '.s:M.'fg='.s:GREY1.' '.s:M.'=bold'
exe 'hi CursorLineNr '.s:M.'bg='.s:GREY2   .' '.s:M.'fg='.s:BLACK.' '.s:M.'=bold'

exe 'hi PmenuSel     '.s:M.'bg='.s:BLUE .' '.s:M.'fg='.s:GREY0.' '.s:M.'=none'
exe 'hi PmenuSBar    '.s:M.'bg='.s:GREY2.' '.s:M.'fg='.s:GREY0.' '.s:M.'=none'
exe 'hi PmenuThumb   '.s:M.'bg='.s:GREY0.' '.s:M.'fg='.s:BG   .' '.s:M.'=none'

exe 'hi Visual       '.s:M.'bg='.s:BLUE2.' '.s:M.'fg='.'NONE' .' '.s:M.'=none'
exe 'hi Pmenu        '.s:M.'bg='.s:GREY2.' '.s:M.'fg='.s:GREY0.' '.s:M.'=none'
exe 'hi Linenr       '.s:M.'bg=NONE'    .' '.s:M.'fg='.s:GREY1.' '.s:M.'=none'
exe 'hi VertSplit    '.s:M.'bg='.s:GREY1.' '.s:M.'fg='.s:GREY2.' '.s:M.'=none'
exe 'hi StatusLine   '.s:M.'bg='.s:BLUE2.' '.s:M.'fg='.s:GREY1.' '.s:M.'=bold'
exe 'hi StatusLineNC '.s:M.'bg='.s:GREY2.' '.s:M.'fg='.s:GREY1.' '.s:M.'=none'
exe 'hi Folded       '.s:M.'bg='.s:GREY2.' '.s:M.'fg='.s:GREY1.' '.s:M.'=none'
exe 'hi FoldColumn   '.s:M.'bg='.s:GREY2.' '.s:M.'fg='.s:GREY1.' '.s:M.'=none'

hi CursorLine guifg=NONE guibg=#403e46
