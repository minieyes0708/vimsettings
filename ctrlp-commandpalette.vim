nmap <space><space> :CtrlPCommandPalette<CR>

let g:ctrlp_commandpalette_autoload_commands = 0
let g:commandPalette = {
            \ 'cmd terminal'            : 'vsplit term://cmd',
            \ 'bash terminal'           : 'vsplit term://bash',
            \ 'python terminal'         : 'vsplit term://py',
            \ 'git log'                 : '!START TortoiseGitProc.exe -command log',
            \ 'git diff'                : '!START TortoiseGitProc.exe -command diff',
            \ 'git pull'                : '!START TortoiseGitProc.exe -command pull',
            \ 'git push'                : '!START TortoiseGitProc.exe -command push',
            \ 'git fetch'               : '!START TortoiseGitProc.exe -command fetch',
            \ 'git blame'               : '!START TortoiseGitProc.exe -command blame -path %',
            \ 'git commit'              : '!START TortoiseGitProc.exe -command commit',
            \ 'git revert'              : '!START TortoiseGitProc.exe -command revert',
            \ 'git compare'             : '!START TortoiseGitProc.exe -command showcompare -revision1:HEAD -revision2:HEAD',
            \ 'git log current file'    : '!START TortoiseGitProc.exe -command log -path %',
            \ 'set path to pwd'         : 'execute "set path=" .. getcwd() .. "\\\\**"',
            \ 'clear all buffers'       : '%bd | source ~/.vimrc.d/quickui.vim',
            \ 'Show Invisible Chars'    : 'set list',
            \ 'Hide Invisible Chars'    : 'set nolist',
            \ 'Toggle Indent Lines'     : 'IndentLinesToggle',
\}
