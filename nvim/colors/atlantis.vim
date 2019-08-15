" Legos - colorscheme for Vim
" Author: Denver Smith
" License: MIT

highlight clear
if exists('syntax_on')
    syntax reset
endif

set background=dark

let g:legos_italics_enabled = get(g:, 'legos_italics_enabled', 0)

" Default Colors
let s:black1 = '#233442'
let s:black2 = '#212a31'
let s:blue1 = '#a3d2d8'
let s:blue2 = '#769596'
let s:blue3 = '#7294b7'
let s:blue4 = '#7ca6c7'
let s:gray1 = '#727072'
let s:gray3 = '#4e6577'
let s:gray4 = '#767d90'
let s:green1 = '#4fada9'
let s:pink1 = '#d37b9e'
let s:pink2 = '#c75e70'
let s:pink3 = '#b37e97'
let s:white1 = '#c7d9e0'
let s:yellow1 = '#f2b514'

" Highlighting function
function! s:HL(group, fg, bg, attr)
    let l:attr = a:attr
    if !g:atlantis_italics_enabled && l:attr ==# 'italic'
        let l:attr = 'none'
    endif
    if !empty(a:fg)
        exec 'hi ' . a:group . ' guifg=' . a:fg
    endif
    if !empty(a:bg)
        exec 'hi ' . a:group . ' guibg=' . a:bg
    endif
    if !empty(a:attr)
        exec 'hi ' . a:group . ' gui=' . l:attr . ' cterm=' . l:attr
    endif
endfun

" Vim Editor
"call s:HL('Cursor',                         s:gray1,    s:gray5,    '')
"call s:HL('CursorColumn',                   '',         s:gray1,    '')
"call s:HL('DiffAdd',                        s:color2,    s:gray1,    'none')
"call s:HL('DiffChange',                     s:color3,   s:gray1,    'none')
"call s:HL('DiffDelete',                     s:color1,      s:gray1,    'none')
"call s:HL('DiffText',                       s:color4,     s:gray1,    'none')
"call s:HL('FoldColumn',                     s:gray4,    s:gray1,    '')
"call s:HL('Folded',                         s:gray3,    s:gray1,    '')
"call s:HL('IncSearch',                      s:color3,   '',         '')
"call s:HL('MatchParen',                     s:gray4,    s:color6,     'bold')
"call s:HL('ModeMsg',                        s:color2,    '',         '')
"call s:HL('MoreMsg',                        s:color2,    '',         '')
"call s:HL('Pmenu',                          s:gray5,    s:gray3,    '')
"call s:HL('Pmenu', s:black1, s:white1, 'none')
"call s:HL('PmenuSbar',                      '',         s:gray1,    '')
"call s:HL('PmenuSel',                       s:gray1,    s:color6,     '')
"call s:HL('PmenuThumb',                     '',         s:gray4,    '')
"call s:HL('Question',                       s:color4,     '',         'none')
"call s:HL('SignColumn',                     s:gray5,    s:gray1,    '')
"call s:HL('SpellBad',                       s:color1,      s:gray1,    'undercurl')
"call s:HL('SpellCap',                       s:color4,     s:gray1,    'undercurl')
"call s:HL('StatusLineNC', s:black1, s:white1, 'none')
"call s:HL('TabLineSel',                     s:color3,   s:gray3,    'none')
"call s:HL('Title', s:black1, s:white1, 'none')
"call s:HL('WarningMsg',                     s:color1,      '',         '')
"call s:HL('WildMenu',                       s:gray1,    s:color6,	    '')
call s:HL('ErrorMsg', s:black1, s:pink2, 'bold')
call s:HL('ColorColumn', s:black1, s:gray1, '')
call s:HL('CursorLine', '', s:black2, 'none')
call s:HL('CursorLineNr', s:pink1, s:black1, 'bold')
call s:HL('Directory', s:blue3, '', 'none')
call s:HL('LineNr', s:gray1, s:black2, 'none')
call s:HL('Nontext', s:pink1, s:black1, 'none')
call s:HL('Normal', s:white1, s:black1, 'none')
call s:HL('Search', '', s:yellow1, 'bold')
call s:HL('StatusLineNC', s:black1, s:yellow1, 'bold')
call s:HL('SpecialKey', s:green1, s:black1, 'none')
call s:HL('StatusLine', s:gray1, s:black2, 'none')
call s:HL('TabLine', s:white1, s:green1, '')
call s:HL('TabLineFill', s:white1, s:green1, '')
call s:HL('VertSplit', s:gray3, s:green1, '')
call s:HL('Visual', '', s:gray3, 'none')

" Vim docs
call s:HL('helpHeader', s:pink1, s:black1, 'none')
call s:HL('helpSectionDelim', s:pink1, s:black1, 'none')
call s:HL('helpBar', s:blue3, s:black1, 'none')
call s:HL('helpHyperTextJump', s:blue3, s:black1, 'none')

" General Syntax
"call s:HL('PreProc', s:white1, 'none', 'none')
"call s:HL('Structure', s:white1, 'none', 'none')
call s:HL('Character', s:yellow1, 'none', 'none')
call s:HL('Comment', s:gray3, 'none', 'italic')
call s:HL('Constant', s:blue1, 'none', 'none')
call s:HL('Define', s:green1, 'none', 'none')
call s:HL('Delimiter', s:pink1, 'none', 'none')
call s:HL('Error', '#ff0000', 'none', 'bold')
call s:HL('Function', s:blue4, 'none', 'bold')
call s:HL('Identifier', s:pink1, 'none', 'none')
call s:HL('Include', s:pink3, 'none', 'none')
call s:HL('Keyword', s:pink2, 'none', 'none')
call s:HL('Macro', s:white1, 'none', 'none')
call s:HL('Number', s:yellow1, 'none', 'none')
call s:HL('Operator', s:gray1, 'none', 'none')
call s:HL('Special', s:white1, 'none', 'none')
call s:HL('Statement', s:white1, 'none', 'none')
call s:HL('String', s:blue2, 'none', 'none')
call s:HL('Todo', s:yellow1, s:gray3, 'bold')
call s:HL('Type', s:blue3, 'none', 'bold')
call s:HL('Underlined', s:white1, 'none', 'none')

" Nerd Tree
call s:HL('NERDTreeExecFile', s:white1, 'none', 'none')


" Vimscript
call s:HL('vimCommand', s:green1, 'none', 'none')
call s:HL('vimEnvVar', s:blue4, 'none', 'none')
call s:HL('vimHiAttrib', s:yellow1, 'none', 'none')
call s:HL('vimHiCtermColor', s:yellow1, 'none', 'none')
call s:HL('vimIsCommand', s:pink3, 'none', 'none')
call s:HL('vimLet', s:green1, 'none', 'none')
call s:HL('vimNotation', s:blue3, 'none', 'none')
call s:HL('vimOperParen', s:blue3, 'none', 'none')
call s:HL('vimOption', s:blue3, 'none', 'bold')
call s:HL('vimUserFunc', s:blue4, 'none', 'bold')
call s:HL('vimVar', s:blue4, 'none', 'none')

" Markdown
call s:HL('markdownBold', s:white1, 'none', 'none')
call s:HL('markdownCode', s:white1, 'none', 'none')
call s:HL('markdownCodeBlock', s:white1, 'none', 'none')
call s:HL('markdownCodeDelimiter', s:white1, 'none', 'none')
call s:HL('markdownH1', s:white1, 'none', 'none')
call s:HL('markdownH2', s:white1, 'none', 'none')
call s:HL('markdownH3', s:white1, 'none', 'none')
call s:HL('markdownH4', s:white1, 'none', 'none')
call s:HL('markdownH5', s:white1, 'none', 'none')
call s:HL('markdownH6', s:white1, 'none', 'none')
call s:HL('markdownHeadingDelimiter', s:white1, 'none', 'none')
call s:HL('markdownHeadingRule', s:white1, 'none', 'none')
call s:HL('markdownId', s:white1, 'none', 'none')
call s:HL('markdownItalic', s:white1, 'none', 'none')
call s:HL('markdownListMarker', s:white1, 'none', 'none')
call s:HL('markdownOrderedListMarker', s:white1, 'none', 'none')
call s:HL('markdownRule', s:white1, 'none', 'none')
call s:HL('markdownUrl', s:white1, 'none', 'none')
call s:HL('markdownUrlTitleDelimiter', s:white1, 'none', 'none')

" Elixir
"call s:HL('elixirBlock', s:gray1, 'none', 'none')

" Ruby
call s:HL('rubyConditional', s:pink3, 'none', 'none')
call s:HL('rubyControl', s:green1, 'none', 'none')
call s:HL('rubyAccess', s:yellow1, 'none', 'none')
call s:HL('erubyDelimiter', s:yellow1, 'none', 'none')
call s:HL('rubyAttribute', s:pink1, 'none', 'none')
call s:HL('rubyBoolean', s:pink1, 'none', 'none')


" Javascript
"call s:HL('javascriptNumber', '', '', '')
"call s:HL('javascriptRequire', '', '', '')
"call s:HL('javascriptReserved', '', '', '')
call s:HL('javascriptArrowFunc', s:pink2, '', 'bold')
call s:HL('javascriptArrowFuncArg', s:blue1, '', 'none')
call s:HL('javascriptArrowFuncDef', s:pink2, '', 'bold')
call s:HL('javascriptBlock', s:white1, '', 'none')
call s:HL('javascriptBraces', s:blue2, '', '')
call s:HL('javascriptClassBlock', s:blue2, '', '')
call s:HL('javascriptBrackets', s:white1, '', '')
call s:HL('javascriptClassExtends', s:green1, '', 'none')
call s:HL('javascriptClassKeyword', s:green1, '', 'none')
call s:HL('javascriptConditional', s:green1, '', 'none')
call s:HL('javascriptConditionalElse', s:green1, '', 'none')
call s:HL('javascriptFuncArg', s:blue1, '', 'none')
call s:HL('javascriptIdentifier', s:blue4, '', 'none')
call s:HL('javascriptIdentifierName', s:white1, '', 'none')
call s:HL('javascriptMethodName', s:blue4, '', 'none')
call s:HL('javascriptNull', s:yellow1, '', '')
call s:HL('javascriptObjectLabel', s:blue1, '', 'none')
call s:HL('javascriptOpSymbol', s:gray1, '', '')
call s:HL('javascriptOpSymbols', s:gray1, '', 'none')
call s:HL('javascriptParenTagLiteral', s:gray1, '', 'none')
call s:HL('javascriptParens', s:gray1, '', 'none')
call s:HL('javascriptProp', s:white1, '', 'none')
call s:HL('javascriptReturn', s:pink3, '', 'none')
call s:HL('javascriptRepeat', s:pink3, '', 'none')
call s:HL('javascriptString', s:blue2, '', 'none')
call s:HL('javascriptVariable', s:green1, '', 'none')
call s:HL('javascriptGlobal', s:blue3, '', 'none')
call s:HL('javascriptConsoleMethod', s:white1, '', 'none')

" XML (Also JSX)
call s:HL('xmlTag', s:pink1, 'none', 'none')
call s:HL('xmlEndTag', s:pink1, 'none', 'none')
call s:HL('xmlTagName', s:blue3, 'none', 'none')
call s:HL('xmlAttrib', s:pink3, 'none', 'italic')

" HTML
call s:HL('htmlArg', s:pink3, 'none', 'italic')
call s:HL('htmlEndTag', s:pink1, 'none', 'none')
call s:HL('htmlLink', s:white1, 'none', 'none')
call s:HL('htmlSpecialTagName', s:blue3, 'none', 'none')
call s:HL('htmlTag', s:pink1, 'none', 'none')
call s:HL('htmlTagName', s:blue3, 'none', 'none')
call s:HL('htmlTitle', s:white1, 'none', 'none')
call s:HL('htmlH1', s:white1, 'none', 'none')
call s:HL('htmlH2', s:white1, 'none', 'none')
call s:HL('htmlH3', s:white1, 'none', 'none')
call s:HL('htmlH4', s:white1, 'none', 'none')
call s:HL('htmlH5', s:white1, 'none', 'none')
call s:HL('htmlH6', s:white1, 'none', 'none')

" CSS
call s:HL('cssTagName', s:green1, 'none', 'bold')
call s:HL('cssClassName', s:green1, 'none', 'none')
call s:HL('cssIdentifier', s:green1, 'none', 'none')
call s:HL('cssBraces', s:pink3, 'none', 'none')
call s:HL('cssImportant', s:pink2, 'none', 'none')
call s:HL('cssPseudoClass', s:pink2, 'none', 'none')

" JSON
call s:HL('jsonKeyword', s:blue3, 'none', 'none')
call s:HL('jsonQuote', s:pink1, 'none', 'none')
call s:HL('jsonBraces', s:gray1, 'none', 'none')

