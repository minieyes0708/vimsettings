" choose a favorite key to show/hide quickmenu
noremap <silent><F12> :call quickmenu#toggle(0)<cr>

" enable cursorline (L) and cmdline help (H)
let g:quickmenu_options = "HL"

" clear all the items
call g:quickmenu#reset()

call g:quickmenu#append('# Directories', '')
call g:quickmenu#append('.bashrc.d',                'edit ~/.bashrc.d | normal cd',                                                 '~/.bashrc.d')
call g:quickmenu#append('.vimrc.d',                 'edit ~/.vimrc.d | normal cd',                                                  '~/.vimrc.d')
call g:quickmenu#append('.vifm',                    'edit ~/.vifm | normal cd',                                                     '~/.vimrc.d')
call g:quickmenu#append('Pattern Editor',           'edit D:/minieyes_chen/program/PatternEditor | normal cd',                      'D:/minieyes/program/PatternEditor')
call g:quickmenu#append('python',                   'edit D:/minieyes_chen/program/python | normal cd',                             'D:/minieyes_chen/program/python')
call g:quickmenu#append('IVE4',                     'edit D:/minieyes_chen/program/IVE4_SW | normal cd',                            'D:/minieyes_chen/program/IVE4_SW')
call g:quickmenu#append('RGB LUT',                  'edit D:/minieyes_chen/program/RGBLUT | normal cd',                             'D:/minieyes_chen/program/RGBLUT')
call g:quickmenu#append('CUP',                      'edit D:/minieyes_chen/program/CUP/CUP | normal cd',                            'D:/minieyes_chen/program/CUP/CUP')
call g:quickmenu#append('MCR2FlashBMP',             'edit D:/minieyes_chen/program/MCR2FlashBmp | normal cd',                       'D:/minieyes_chen/program/MCR2FlashBmp')
call g:quickmenu#append('FPGA NewABTable For P.E.', 'edit D:/minieyes_chen/fpga/nora/NewABTable_ForPatternEditor/rtl | normal cd',  'D:/minieyes_chen/fpga/nora/NewABTable_ForPatternEditor/rtl')
call g:quickmenu#append('IVE4S_FPGA',               'edit D:/minieyes_chen/fpga/IVE4S_FPGA/rtl | normal cd',                        'D:/minieyes_chen/fpga/IVE4S_FPGA/rtl')
call g:quickmenu#append('IVE4S_FW',                 'edit D:/minieyes_chen/firmware/IVE4S_FW | normal cd',                          'D:/minieyes_chen/firmware/IVE4S_FW')
call g:quickmenu#append('WebDocs',                  'edit G:/MD/Projects/IVE/WebDocs | normal cd',                                  'G:/MD/Projects/IVE/WebDocs')
call g:quickmenu#append('eACT2.0',                  'edit D:/minieyes_chen/program/eACT2.0 | normal cd',                            'D:/minieyes_chen/program/eACT2.0')
call g:quickmenu#append('miniCSLibrary',            'edit D:/minieyes_chen/program/miniCSLibrary | normal cd',                      'D:/minieyes_chen/program/miniCSLibrary')
call g:quickmenu#append('IE Tuning ProjectDlls',    'edit D:/minieyes_chen/program/IETuning/ProjectDlls | normal cd',               'D:/minieyes_chen/program/IETuning/ProjectDlls')
call g:quickmenu#append('miniLibrary',              'edit D:/minieyes_chen/program/miniLibrary | normal cd',                        'D:/minieyes_chen/program/miniLibrary')
call g:quickmenu#append('MCR2V',                    'edit D:/minieyes_chen/program/MCR2V | normal cd',                              'D:/minieyes_chen/program/MCR2V')
call g:quickmenu#append('GenInfo',                  'edit D:/minieyes_chen/program/GenInfo | normal cd',                            'D:/minieyes_chen/program/GenInfo')
call g:quickmenu#append('CheckRegisterTable',       'edit D:/minieyes_chen/program/CheckRegisterTable | normal cd',                 'D:/minieyes_chen/program/CheckRegisterTable')
call g:quickmenu#append('credential_dll_VC | normal cddit D:/minieyes_chen/program/credential_dll_VC | normal cd',                  'D:/minieyes_chen/program/credential_dll_VC')
call g:quickmenu#append('ColorSenseVC',             'edit D:/minieyes_chen/program/ColorSenseVC | normal cd',                       'D:/minieyes_chen/program/ColorSenseVC')
call g:quickmenu#append('LightIVE-IdealModel',      'edit D:/minieyes_chen/program/LightIVE-IdealModel | normal cd',                'D:/minieyes_chen/program/LightIVE-IdealModel')
call g:quickmenu#append('V1.x',                     'edit C:/Users/nvt02863/Desktop/V1.x | normal cd',                              'C:/Users/nvt02863/Desktop/V1.x')
call g:quickmenu#append('matlab',                   'edit D:/minieyes_chen/program/matlab | normal cd',                             'D:/minieyes_chen/program/matlab')

call g:quickmenu#append('# Git', '')
call g:quickmenu#append('git log',                  '!TortoiseGitProc.exe -command log',                                            'git log')
call g:quickmenu#append('git diff',                 '!TortoiseGitProc.exe -command diff',                                           'git diff')
call g:quickmenu#append('git pull',                 '!TortoiseGitProc.exe -command pull',                                           'git pull')
call g:quickmenu#append('git push',                 '!TortoiseGitProc.exe -command push',                                           'git push')
call g:quickmenu#append('git blame',                '!TortoiseGitProc.exe -command blame -path %',                                  'git push')
call g:quickmenu#append('git commit',               '!TortoiseGitProc.exe -command commit',                                         'git commit')
call g:quickmenu#append('git revert',               '!TortoiseGitProc.exe -command revert',                                         'git revert')
call g:quickmenu#append('git log current file',     '!TortoiseGitProc.exe -command log -path %',                                    'git log current file')
