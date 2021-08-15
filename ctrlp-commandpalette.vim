nmap <space><space> :CtrlPCommandPalette<CR>

let g:ctrlp_commandpalette_autoload_commands = 0
let g:commandPalette = {
            \ 'bash'                    : 'edit term://bash',
            \ 'vifm'                    : 'edit term://bash -c vifm',
            \ 'Show Invisible Chars'    : 'set list',
            \ 'Hide Invisible Chars'    : 'set nolist',
            \ 'Toggle Indent Lines'     : 'IndentLinesToggle',
\}
