nmap <C-S-P> :CtrlPCommandPalette<CR>
nmap <space><space> :CtrlPCommandPalette<CR>

let g:ctrlp_commandpalette_autoload_commands = 0

function ctrlp_commandpalette#update()
    let g:commandPalette = {}
    for cmd_mapping in systemlist('cat ' .. $HOME .. '/.config/nvim/command-palette.txt')
        let items = split(cmd_mapping, ':')
        let g:commandPalette[items[0]] = trim(items[1])
    endfor
endfunction
call ctrlp_commandpalette#update()
