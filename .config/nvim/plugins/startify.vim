function! s:center(lines) abort
  let longest_line   = max(map(copy(a:lines), 'strwidth(v:val)'))
  let centered_lines = map(copy(a:lines),
        \ 'repeat(" ", (&columns / 2) - (longest_line / 2)) . v:val')
  return centered_lines
endfunction

function s:suckless()
  return [
        \ { 'line': 'st - simple terminal', 'cmd': ':e ~/repos/st/config.h' },
        \ { 'line': 'dwm - dynamic window manager', 'cmd': ':e ~/repos/dwm/config.h' },
        \ { 'line': 'dmenu - menu launcher', 'cmd': ':e ~/repos/dmenu/config.h' },
        \ { 'line': 'dwmblocks - modular bar', 'cmd': ':e ~/repos/dwmblocks/config.h' },
        \ ]
endfunction

let s:header= [
        \"       %%%%%  %%%%%  %%%%%",
        \"       %%%%%  %%%%%  %%%%%",
        \"       %%%%%  %%%%%  %%%%%",
        \"       %%%%%  %%%%%  %%%%%",
        \"       %%%%%  %%%%%  %%%%%",
        \"       %%%%%  %%%%%  %%%%%",
        \"       %%%%%  %%%%%  %%%%%",
        \"       %%%%%  %%%%%  %%%%%",
        \"       %%%%%  %%%%%  %%%%%",
        \"      %%%%%%  %%%%%  %%%%%%         888   000   000   X   X L",
        \"     %%%%%%   %%%%%   %%%%%%       8   8 0   0 0   0   X X  L",
        \"    %%%%%%    %%%%%    %%%%%%       888  0   0 0   0    X   L",
        \"  %%%%%%      %%%%%      %%%%%%    8   8 0   0 0   0   X X  L",
        \"%%%%%%        %%%%%        %%%%%%   888   000   000   X   X LLLLL",
        \]

let g:startify_change_to_dir = 1
let g:startify_custom_header = s:center(s:header) " Center the header
let g:startify_files_number = 5

let g:startify_bookmarks = ['~/repos/gpmc/gpmc.c']

let g:startify_lists = [
      \ { 'type': 'files',     'header': ['   Recent Files']        },
      \ { 'type': 'sessions',  'header': ['   Sessions']            },
      \ { 'type': 'bookmarks', 'header': ['   Bookmarks']           },
      \ { 'type': 'commands',  'header': ['   Commands']            },
      \ { 'type': function('s:suckless'), 'header': ['   Suckless'] },
      \ ]
