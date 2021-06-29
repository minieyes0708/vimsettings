" enable to display tips in the cmdline
let g:quickui_show_tip = 1"

call quickui#menu#reset()
call quickui#menu#install('&Projects', [
            \ [ "&Open",
            \ "call quickui#listbox#open(["..
            \ "['[&1] .bashrc.d',                   'cd ~/.bashrc.d | Files'],"..
            \ "['[&2] .vimrc.d',                    'cd ~/.vimrc.d | Files'],"..
            \ "['[&3] .vifm',                       'cd ~/.vifm | Files'],"..
            \ "['[&4] .vim',                        'cd ~/.vim | Files'],"..
            \ "['[&5] Pattern Editor',              'cd D:/minieyes_chen/program/PatternEditor | Files'],"..
            \ "['[&6] python',                      'cd D:/minieyes_chen/program/python | Files'],"..
            \ "['[&7] IVE4',                        'cd D:/minieyes_chen/program/IVE4_SW | Files'],"..
            \ "['[&8] RGB LUT',                     'cd D:/minieyes_chen/program/RGBLUT | Files'],"..
            \ "['[&9] CUP',                         'cd D:/minieyes_chen/program/CUP/CUP | Files'],"..
            \ "['[&a] MCR2FlashBMP',                'cd D:/minieyes_chen/program/MCR2FlashBmp | Files'],"..
            \ "['[&b] FPGA NewABTable For P.E.',    'cd D:/minieyes_chen/fpga/nora/NewABTable_ForPatternEditor/rtl | Files'],"..
            \ "['[&c] IVE4S_FPGA',                  'cd D:/minieyes_chen/fpga/IVE4S_FPGA/rtl | Files'],"..
            \ "['[&d] IVE4S_FW',                    'cd D:/minieyes_chen/firmware/IVE4S_FW | Files'],"..
            \ "['[&e] WebDocs',                     'cd G:/MD/Projects/IVE/WebDocs | Files'],"..
            \ "['[&f] eACT2.0',                     'cd D:/minieyes_chen/program/eACT2.0 | Files'],"..
            \ "['[&g] miniCSLibrary',               'cd D:/minieyes_chen/program/miniCSLibrary | Files'],"..
            \ "['[&i] IE Tuning ProjectDlls',       'cd D:/minieyes_chen/program/IETuning/ProjectDlls | Files'],"..
            \ "['[&m] miniLibrary',                 'cd D:/minieyes_chen/program/miniLibrary | Files'],"..
            \ "['[&n] MCR2V',                       'cd D:/minieyes_chen/program/MCR2V | Files'],"..
            \ "['[&o] GenInfo',                     'cd D:/minieyes_chen/program/GenInfo | Files'],"..
            \ "['[&p] CheckRegisterTable',          'cd D:/minieyes_chen/program/CheckRegisterTable | Files'],"..
            \ "['[&q] credential_dll_VC',           'cd D:/minieyes_chen/program/credential_dll_VC | Files'],"..
            \ "['[&r] ColorSenseVC',                'cd D:/minieyes_chen/program/ColorSenseVC | Files'],"..
            \ "['[&s] LightIVE-IdealModel',         'cd D:/minieyes_chen/program/LightIVE-IdealModel | Files'],"..
            \ "['[&t] V1.x',                        'cd C:/Users/nvt02863/Desktop/V1.x | Files'],"..
            \ "['[&u] matlab',                      'cd D:/minieyes_chen/program/matlab | Files'],"..
            \ "], {'title': 'Projects'})"
            \ ],
            \ [ "&Peek",
            \ "call quickui#listbox#open(["..
            \ "['[&1] .bashrc.d',                   'Files ~/.bashrc.d'],"..
            \ "['[&2] .vimrc.d',                    'Files ~/.vimrc.d'],"..
            \ "['[&3] .vifm',                       'Files ~/.vifm'],"..
            \ "['[&4] .vim',                        'Files ~/.vim'],"..
            \ "['[&5] Pattern Editor',              'Files D:/minieyes_chen/program/PatternEditor'],"..
            \ "['[&6] python',                      'Files D:/minieyes_chen/program/python'],"..
            \ "['[&7] IVE4',                        'Files D:/minieyes_chen/program/IVE4_SW'],"..
            \ "['[&8] RGB LUT',                     'Files D:/minieyes_chen/program/RGBLUT'],"..
            \ "['[&9] CUP',                         'Files D:/minieyes_chen/program/CUP/CUP'],"..
            \ "['[&a] MCR2FlashBMP',                'Files D:/minieyes_chen/program/MCR2FlashBmp'],"..
            \ "['[&b] FPGA NewABTable For P.E.',    'Files D:/minieyes_chen/fpga/nora/NewABTable_ForPatternEditor/rtl'],"..
            \ "['[&c] IVE4S_FPGA',                  'Files D:/minieyes_chen/fpga/IVE4S_FPGA/rtl'],"..
            \ "['[&d] IVE4S_FW',                    'Files D:/minieyes_chen/firmware/IVE4S_FW'],"..
            \ "['[&e] WebDocs',                     'Files G:/MD/Projects/IVE/WebDocs'],"..
            \ "['[&f] eACT2.0',                     'Files D:/minieyes_chen/program/eACT2.0'],"..
            \ "['[&g] miniCSLibrary',               'Files D:/minieyes_chen/program/miniCSLibrary'],"..
            \ "['[&i] IE Tuning ProjectDlls',       'Files D:/minieyes_chen/program/IETuning/ProjectDlls'],"..
            \ "['[&m] miniLibrary',                 'Files D:/minieyes_chen/program/miniLibrary'],"..
            \ "['[&n] MCR2V',                       'Files D:/minieyes_chen/program/MCR2V'],"..
            \ "['[&o] GenInfo',                     'Files D:/minieyes_chen/program/GenInfo'],"..
            \ "['[&p] CheckRegisterTable',          'Files D:/minieyes_chen/program/CheckRegisterTable'],"..
            \ "['[&q] credential_dll_VC',           'Files D:/minieyes_chen/program/credential_dll_VC'],"..
            \ "['[&r] ColorSenseVC',                'Files D:/minieyes_chen/program/ColorSenseVC'],"..
            \ "['[&s] LightIVE-IdealModel',         'Files D:/minieyes_chen/program/LightIVE-IdealModel'],"..
            \ "['[&t] V1.x',                        'Files C:/Users/nvt02863/Desktop/V1.x'],"..
            \ "['[&u] matlab',                      'Files D:/minieyes_chen/program/matlab'],"..
            \ "], {'title': 'Browser Projects'})"
            \ ],
            \ ])

call quickui#menu#install('&Git', [
            \ ['git l&og',                          '!TortoiseGitProc.exe -command log&' ],
            \ ['git &diff',                         '!TortoiseGitProc.exe -command diff&' ],
            \ ['git p&ull',                         '!TortoiseGitProc.exe -command pull&' ],
            \ ['git pus&h',                         '!TortoiseGitProc.exe -command push&' ],
            \ ['git &blame',                        '!TortoiseGitProc.exe -command blame -path %&' ],
            \ ['git &commit',                       '!TortoiseGitProc.exe -command commit&' ],
            \ ['git &revert',                       '!TortoiseGitProc.exe -command revert&' ],
            \ ['git log current &file',             '!TortoiseGitProc.exe -command log -path %&' ],
            \ ])

call quickui#menu#install('&Terminal', [
            \ ['&cmd',                               'call quickui#terminal#open("cmd.exe", {"title": "cmd.exe"})' ],
            \ ['&py',                                'call quickui#terminal#open("py.exe",  {"title": "py.exe"})' ],
            \ ])

call quickui#menu#install('&Compiler', [
            \ ['setup &msbuild',                   'set errorformat=\ %#%f(%l):\ %m | set makeprg=msbuild\ /nologo\ /v:q\ /property:GenerateFullPaths=true' ],
            \ ])

call quickui#menu#install('P&ython', [
            \ ['&run',                              'call quickui#terminal#open("py.exe "..expand("%"), {"title": expand("%")})' ],
            \ ['run and -&i',                       'call quickui#terminal#open("py.exe -i "..expand("%"), {"title": expand("%")})' ],
            \ ], '<auto>', 'python')

call quickui#menu#install('&Vim', [
            \ ['&source',                           'source %' ],
            \ ], '<auto>', 'vim')

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
