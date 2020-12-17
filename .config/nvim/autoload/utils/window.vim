scriptencoding utf-8

function! utils#window#has_floating_window() abort
  " MenuPopupChanged was renamed to CompleteChanged -> https://github.com/neovim/neovim/pull/9819
  " https://github.com/neoclide/coc.nvim/wiki/F.A.Q#how-to-make-preview-window-shown-aside-with-pum
  return (exists('##MenuPopupChanged') || exists('##CompleteChanged')) && exists('*nvim_open_win') || (has('textprop') && has('patch-8.1.1522'))
endfunction

function! utils#window#create_floating_window() abort
  let s:buf = nvim_create_buf(v:false, v:true)

  let l:height = float2nr(&lines * 0.8)
  let l:width = float2nr(&columns * 0.9)
  let l:row = (&lines - l:height) / 2
  let l:col = (&columns - l:width) / 2
  let l:opts = {
        \ 'relative': 'editor',
        \ 'row': l:row,
        \ 'col': l:col,
        \ 'width': l:width,
        \ 'height': l:height,
        \ 'style': 'minimal'
        \ }

  let l:top = '▛' . repeat('▀', l:width - 2) . '▜'
  let l:mid = '▌' . repeat(' ', l:width - 2) . '▐'
  let l:bot = '▙' . repeat('▄', l:width - 2) . '▟'
  let l:lines = [l:top] + repeat([l:mid], l:height - 2) + [l:bot]

  call nvim_buf_set_lines(s:buf, 0, -1, v:true, l:lines)
  call nvim_open_win(s:buf, v:true, l:opts)

  set winhl=Normal:Floating

  let l:opts.row += 1
  let l:opts.height -= 2
  let l:opts.col += 2
  let l:opts.width -= 4

  call nvim_open_win(nvim_create_buf(v:false, v:true), v:true, l:opts)

  augroup FLOATING_WINDOW
    au!
    au BufWipeout <buffer> exe 'bw 's:buf
  augroup END
endfunction

function! utils#window#fzf_window() abort
  return utils#window#has_floating_window() ? { 'width': 0.9 , 'height': 0.8 } : 'enew'
endfunction

function! utils#window#toggle_term(cmd)
  if empty(bufname(a:cmd))
    call utils#create_floating_window()
    call termopen(a:cmd, { 'on_exit': function('OnTermExit') })
  else
    bwipeout!
  endif
endfunction
