nmap <space><space> :CtrlPCommandPalette<CR>

let g:ctrlp_commandpalette_autoload_commands = 0
let g:commandPalette = {
	\ 'Toggle NERDTree'         : 'NERDTreeToggle',
	\ 'Run Python Script'       : '!py -3 %',
	\ 'Source Current File'     : 'source %',
	\ 'Show Invisible Chars'    : 'set list',
	\ 'Hide Invisible Chars'    : 'set nolist',
\}
