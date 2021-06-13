" enable to display tips in the cmdline
let g:quickui_show_tip = 1"

" Menu {{{
" noremap <space><space> :call quickui#menu#open()<cr>
" call quickui#menu#reset()
" call quickui#menu#install('&File', [
            " \ [ "&New File\tCtrl+n", 'echo 0' ],
            " \ [ "E&xit\tAlt+x", 'echo 6' ],
            " \ ])
" }}}

" Projects {{{
let minieyes#projects_list = [
    \ ['[&1] .bashrc.d',                'cd ~/.bashrc.d | edit .'],
    \ ['[&2] .vimrc.d',                 'cd ~/.vimrc.d | edit .'],
    \ ['[&3] .vifm',                    'cd ~/.vifm | edit .'],
    \ ['[&4] Pattern Editor',           'cd D:/minieyes_chen/program/PatternEditor | edit .'],
    \ ['[&5] python',                   'cd D:/minieyes_chen/program/python | edit .'],
    \ ['[&6] IVE4',                     'cd D:/minieyes_chen/program/IVE4_SW | edit .'],
    \ ['[&7] RGB LUT',                  'cd D:/minieyes_chen/program/RGBLUT | edit .'],
    \ ['[&8] CUP',                      'cd D:/minieyes_chen/program/CUP/CUP | edit .'],
    \ ['[&9] MCR2FlashBMP',             'cd D:/minieyes_chen/program/MCR2FlashBmp | edit .'],
    \ ['[&a] FPGA NewABTable For P.E.', 'cd D:/minieyes_chen/fpga/nora/NewABTable_ForPatternEditor/rtl | edit .'],
    \ ['[&b] IVE4S_FPGA',               'cd D:/minieyes_chen/fpga/IVE4S_FPGA/rtl | edit .'],
    \ ['[&c] IVE4S_FW',                 'cd D:/minieyes_chen/firmware/IVE4S_FW | edit .'],
    \ ['[&d] WebDocs',                  'cd G:/MD/Projects/IVE/WebDocs | edit .'],
    \ ['[&e] eACT2.0',                  'cd D:/minieyes_chen/program/eACT2.0 | edit .'],
    \ ['[&f] miniCSLibrary',            'cd D:/minieyes_chen/program/miniCSLibrary | edit .'],
    \ ['[&g] IE Tuning ProjectDlls',    'cd D:/minieyes_chen/program/IETuning/ProjectDlls | edit .'],
    \ ['[&h] miniLibrary',              'cd D:/minieyes_chen/program/miniLibrary | edit .'],
    \ ['[&i] MCR2V',                    'cd D:/minieyes_chen/program/MCR2V | edit .'],
    \ ['[&l] GenInfo',                  'cd D:/minieyes_chen/program/GenInfo | edit .'],
    \ ['[&m] CheckRegisterTable',       'cd D:/minieyes_chen/program/CheckRegisterTable | edit .'],
    \ ['[&n] credential_dll_VC',        'cd D:/minieyes_chen/program/credential_dll_VC | edit .'],
    \ ['[&o] ColorSenseVC',             'cd D:/minieyes_chen/program/ColorSenseVC | edit .'],
    \ ['[&p] LightIVE-IdealModel',      'cd D:/minieyes_chen/program/LightIVE-IdealModel | edit .'],
    \ ['[&o] V1.x',                     'cd C:/Users/nvt02863/Desktop/V1.x | edit .'],
    \ ['[&r] matlab',                   'cd D:/minieyes_chen/program/matlab | edit .'],
\ ]
noremap <C-S-P> :call quickui#listbox#open(minieyes#projects_list, {'title': 'go to project'}, )<cr>
" }}}

" Git {{{
let minieyes#git_cmd_list = [
            \ ['[&1] git log',               '!TortoiseGitProc.exe -command log' ],
            \ ['[&2] git diff',              '!TortoiseGitProc.exe -command diff' ],
            \ ['[&3] git pull',              '!TortoiseGitProc.exe -command pull' ],
            \ ['[&4] git push',              '!TortoiseGitProc.exe -command push' ],
            \ ['[&5] git blame',             '!TortoiseGitProc.exe -command blame -path %' ],
            \ ['[&6] git commit',            '!TortoiseGitProc.exe -command commit' ],
            \ ['[&7] git revert',            '!TortoiseGitProc.exe -command revert' ],
            \ ['[&8] git log current file',  '!TortoiseGitProc.exe -command log -path %' ],
            \]
noremap <C-S-G> :call quickui#listbox#open(minieyes#git_cmd_list, {'title': 'Git Commands'})<cr>
" }}}

" Terminal {{{
let minieyes#terminal_cmd_list = [
    \ ['cmd',                   'call quickui#terminal#open("cmd.exe", {"title": "cmd.exe"})' ],
    \ ['py',                    'call quickui#terminal#open("py.exe",  {"title": "py.exe"})' ],
\]
noremap <C-S-J> :call quickui#listbox#open(minieyes#terminal_cmd_list, {'title': 'Terminal Commands'})<cr>
" }}}

" Display Messages {{{
function! DisplayMessages()
    let x = ''
    redir => x
    silent! messages
    redir END
    let x = substitute(x, '[\n\r]\+\%$', '', 'g')
    let content = filter(split(x, "\n"), 'v:key != ""')
    let opts = {"close":"button", "title":"Vim Messages"}
    call quickui#textbox#open(content, opts)
endfunc
" }}}
