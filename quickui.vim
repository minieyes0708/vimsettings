" enable to display tips in the cmdline
let g:quickui_show_tip = 1"

noremap <space><space> :call quickui#menu#open()<cr>
call quickui#menu#reset()
call quickui#menu#install('&Projects', [
    \ [ "&Open",
        \ "call quickui#listbox#open(["..
            \ "['[&1] .bashrc.d',                'cd ~/.bashrc.d | Explore'],"..
            \ "['[&2] .vimrc.d',                 'cd ~/.vimrc.d | Explore'],"..
            \ "['[&3] .vifm',                    'cd ~/.vifm | Explore'],"..
            \ "['[&4] Pattern Editor',           'cd D:/minieyes_chen/program/PatternEditor | Explore'],"..
            \ "['[&5] python',                   'cd D:/minieyes_chen/program/python | Explore'],"..
            \ "['[&6] IVE4',                     'cd D:/minieyes_chen/program/IVE4_SW | Explore'],"..
            \ "['[&7] RGB LUT',                  'cd D:/minieyes_chen/program/RGBLUT | Explore'],"..
            \ "['[&8] CUP',                      'cd D:/minieyes_chen/program/CUP/CUP | Explore'],"..
            \ "['[&9] MCR2FlashBMP',             'cd D:/minieyes_chen/program/MCR2FlashBmp | Explore'],"..
            \ "['[&a] FPGA NewABTable For P.E.', 'cd D:/minieyes_chen/fpga/nora/NewABTable_ForPatternEditor/rtl | Explore'],"..
            \ "['[&b] IVE4S_FPGA',               'cd D:/minieyes_chen/fpga/IVE4S_FPGA/rtl | Explore'],"..
            \ "['[&c] IVE4S_FW',                 'cd D:/minieyes_chen/firmware/IVE4S_FW | Explore'],"..
            \ "['[&d] WebDocs',                  'cd G:/MD/Projects/IVE/WebDocs | Explore'],"..
            \ "['[&e] eACT2.0',                  'cd D:/minieyes_chen/program/eACT2.0 | Explore'],"..
            \ "['[&f] miniCSLibrary',            'cd D:/minieyes_chen/program/miniCSLibrary | Explore'],"..
            \ "['[&g] IE Tuning ProjectDlls',    'cd D:/minieyes_chen/program/IETuning/ProjectDlls | Explore'],"..
            \ "['[&h] miniLibrary',              'cd D:/minieyes_chen/program/miniLibrary | Explore'],"..
            \ "['[&i] MCR2V',                    'cd D:/minieyes_chen/program/MCR2V | Explore'],"..
            \ "['[&l] GenInfo',                  'cd D:/minieyes_chen/program/GenInfo | Explore'],"..
            \ "['[&m] CheckRegisterTable',       'cd D:/minieyes_chen/program/CheckRegisterTable | Explore'],"..
            \ "['[&n] credential_dll_VC',        'cd D:/minieyes_chen/program/credential_dll_VC | Explore'],"..
            \ "['[&o] ColorSenseVC',             'cd D:/minieyes_chen/program/ColorSenseVC | Explore'],"..
            \ "['[&p] LightIVE-IdealModel',      'cd D:/minieyes_chen/program/LightIVE-IdealModel | Explore'],"..
            \ "['[&o] V1.x',                     'cd C:/Users/nvt02863/Desktop/V1.x | Explore'],"..
            \ "['[&r] matlab',                   'cd D:/minieyes_chen/program/matlab | Explore'],"..
        \ "], {'title': 'Projects'})"
    \ ],
\])

call quickui#menu#install('&Git', [
        \ ['git l&og',               '!TortoiseGitProc.exe -command log' ],
        \ ['git &diff',              '!TortoiseGitProc.exe -command diff' ],
        \ ['git &pull',              '!TortoiseGitProc.exe -command pull' ],
        \ ['git pus&h',              '!TortoiseGitProc.exe -command push' ],
        \ ['git &blame',             '!TortoiseGitProc.exe -command blame -path %' ],
        \ ['git &commit',            '!TortoiseGitProc.exe -command commit' ],
        \ ['git &revert',            '!TortoiseGitProc.exe -command revert' ],
        \ ['git log current &file',  '!TortoiseGitProc.exe -command log -path %' ],
    \])

call quickui#menu#install('&Terminal', [
        \ ['cmd',                   'call quickui#terminal#open("cmd.exe", {"title": "cmd.exe"})' ],
        \ ['py',                    'call quickui#terminal#open("py.exe",  {"title": "py.exe"})' ],
    \])

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
