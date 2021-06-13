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
    \ ['.bashrc.d',                'edit ~/.bashrc.d | normal cd'],
    \ ['.vimrc.d',                 'edit ~/.vimrc.d | normal cd'],
    \ ['.vifm',                    'edit ~/.vifm | normal cd'],
    \ ['Pattern Editor',           'edit D:/minieyes_chen/program/PatternEditor | normal cd'],
    \ ['python',                   'edit D:/minieyes_chen/program/python | normal cd'],
    \ ['IVE4',                     'edit D:/minieyes_chen/program/IVE4_SW | normal cd'],
    \ ['RGB LUT',                  'edit D:/minieyes_chen/program/RGBLUT | normal cd'],
    \ ['CUP',                      'edit D:/minieyes_chen/program/CUP/CUP | normal cd'],
    \ ['MCR2FlashBMP',             'edit D:/minieyes_chen/program/MCR2FlashBmp | normal cd'],
    \ ['FPGA NewABTable For P.E.', 'edit D:/minieyes_chen/fpga/nora/NewABTable_ForPatternEditor/rtl | normal cd'],
    \ ['IVE4S_FPGA',               'edit D:/minieyes_chen/fpga/IVE4S_FPGA/rtl | normal cd'],
    \ ['IVE4S_FW',                 'edit D:/minieyes_chen/firmware/IVE4S_FW | normal cd'],
    \ ['WebDocs',                  'edit G:/MD/Projects/IVE/WebDocs | normal cd'],
    \ ['eACT2.0',                  'edit D:/minieyes_chen/program/eACT2.0 | normal cd'],
    \ ['miniCSLibrary',            'edit D:/minieyes_chen/program/miniCSLibrary | normal cd'],
    \ ['IE Tuning ProjectDlls',    'edit D:/minieyes_chen/program/IETuning/ProjectDlls | normal cd'],
    \ ['miniLibrary',              'edit D:/minieyes_chen/program/miniLibrary | normal cd'],
    \ ['MCR2V',                    'edit D:/minieyes_chen/program/MCR2V | normal cd'],
    \ ['GenInfo',                  'edit D:/minieyes_chen/program/GenInfo | normal cd'],
    \ ['CheckRegisterTable',       'edit D:/minieyes_chen/program/CheckRegisterTable | normal cd'],
    \ ['credential_dll_VC',        'edit D:/minieyes_chen/program/credential_dll_VC | normal cd'],
    \ ['ColorSenseVC',             'edit D:/minieyes_chen/program/ColorSenseVC | normal cd'],
    \ ['LightIVE-IdealModel',      'edit D:/minieyes_chen/program/LightIVE-IdealModel | normal cd'],
    \ ['V1.x',                     'edit C:/Users/nvt02863/Desktop/V1.x | normal cd'],
    \ ['matlab',                   'edit D:/minieyes_chen/program/matlab | normal cd'],
\ ]
noremap <C-S-P> :call quickui#listbox#open(minieyes#projects_list, {'title': 'go to project'})<cr>
" }}}

" Git {{{
let minieyes#git_cmd_list = [
            \ ['git log',               '!TortoiseGitProc.exe -command log' ],
            \ ['git diff',              '!TortoiseGitProc.exe -command diff' ],
            \ ['git pull',              '!TortoiseGitProc.exe -command pull' ],
            \ ['git push',              '!TortoiseGitProc.exe -command push' ],
            \ ['git blame',             '!TortoiseGitProc.exe -command blame -path %' ],
            \ ['git commit',            '!TortoiseGitProc.exe -command commit' ],
            \ ['git revert',            '!TortoiseGitProc.exe -command revert' ],
            \ ['git log current file',  '!TortoiseGitProc.exe -command log -path %' ],
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
