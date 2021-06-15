" enable to display tips in the cmdline
let g:quickui_show_tip = 1"

call quickui#menu#reset()
call quickui#menu#install('&Projects', [
            \ [ "&Open",
            \ "call quickui#listbox#open(["..
            \ "['[&1] .bashrc.d',                   'cd ~/.bashrc.d | Files'],"..
            \ "['[&2] .vimrc.d',                    'cd ~/.vimrc.d | Files'],"..
            \ "['[&3] .vifm',                       'cd ~/.vifm | Files'],"..
            \ "['[&4] Pattern Editor',              'cd D:/minieyes_chen/program/PatternEditor | Files'],"..
            \ "['[&5] python',                      'cd D:/minieyes_chen/program/python | Files'],"..
            \ "['[&6] IVE4',                        'cd D:/minieyes_chen/program/IVE4_SW | Files'],"..
            \ "['[&7] RGB LUT',                     'cd D:/minieyes_chen/program/RGBLUT | Files'],"..
            \ "['[&8] CUP',                         'cd D:/minieyes_chen/program/CUP/CUP | Files'],"..
            \ "['[&9] MCR2FlashBMP',                'cd D:/minieyes_chen/program/MCR2FlashBmp | Files'],"..
            \ "['[&a] FPGA NewABTable For P.E.',    'cd D:/minieyes_chen/fpga/nora/NewABTable_ForPatternEditor/rtl | Files'],"..
            \ "['[&b] IVE4S_FPGA',                  'cd D:/minieyes_chen/fpga/IVE4S_FPGA/rtl | Files'],"..
            \ "['[&c] IVE4S_FW',                    'cd D:/minieyes_chen/firmware/IVE4S_FW | Files'],"..
            \ "['[&d] WebDocs',                     'cd G:/MD/Projects/IVE/WebDocs | Files'],"..
            \ "['[&e] eACT2.0',                     'cd D:/minieyes_chen/program/eACT2.0 | Files'],"..
            \ "['[&f] miniCSLibrary',               'cd D:/minieyes_chen/program/miniCSLibrary | Files'],"..
            \ "['[&g] IE Tuning ProjectDlls',       'cd D:/minieyes_chen/program/IETuning/ProjectDlls | Files'],"..
            \ "['[&h] miniLibrary',                 'cd D:/minieyes_chen/program/miniLibrary | Files'],"..
            \ "['[&i] MCR2V',                       'cd D:/minieyes_chen/program/MCR2V | Files'],"..
            \ "['[&l] GenInfo',                     'cd D:/minieyes_chen/program/GenInfo | Files'],"..
            \ "['[&m] CheckRegisterTable',          'cd D:/minieyes_chen/program/CheckRegisterTable | Files'],"..
            \ "['[&n] credential_dll_VC',           'cd D:/minieyes_chen/program/credential_dll_VC | Files'],"..
            \ "['[&o] ColorSenseVC',                'cd D:/minieyes_chen/program/ColorSenseVC | Files'],"..
            \ "['[&p] LightIVE-IdealModel',         'cd D:/minieyes_chen/program/LightIVE-IdealModel | Files'],"..
            \ "['[&o] V1.x',                        'cd C:/Users/nvt02863/Desktop/V1.x | Files'],"..
            \ "['[&r] matlab',                      'cd D:/minieyes_chen/program/matlab | Files'],"..
            \ "], {'title': 'Projects'})"
            \ ],
            \])

call quickui#menu#install('&Buffer', [
            \ ['&Only',                             'call BufOnly']
            \])

call quickui#menu#install('&Git', [
            \ ['git l&og',                          '!TortoiseGitProc.exe -command log' ],
            \ ['git &diff',                         '!TortoiseGitProc.exe -command diff' ],
            \ ['git &pull',                         '!TortoiseGitProc.exe -command pull' ],
            \ ['git &push',                         '!TortoiseGitProc.exe -command push' ],
            \ ['git &blame',                        '!TortoiseGitProc.exe -command blame -path %' ],
            \ ['git &commit',                       '!TortoiseGitProc.exe -command commit' ],
            \ ['git &revert',                       '!TortoiseGitProc.exe -command revert' ],
            \ ['git log current &file',             '!TortoiseGitProc.exe -command log -path %' ],
            \])

call quickui#menu#install('&Terminal', [
            \ ['cmd',                               'call quickui#terminal#open("cmd.exe", {"title": "cmd.exe"})' ],
            \ ['py',                                'call quickui#terminal#open("py.exe",  {"title": "py.exe"})' ],
            \])

call quickui#menu#install('P&ython', [
            \ ['&run',                              'call quickui#terminal#open("py.exe "..expand("%"), {"title": expand("%")})' ],
            \ ['run and -&i',                       'call quickui#terminal#open("py.exe -i "..expand("%"), {"title": expand("%")})' ],
            \ ], '<auto>', 'python')

noremap <space><space> :call quickui#menu#open()<cr>

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
