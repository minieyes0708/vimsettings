" choose a favorite key to show/hide quickmenu
noremap <silent><F12> :call quickmenu#toggle(0)<cr>

" enable cursorline (L) and cmdline help (H)
let g:quickmenu_options = "HL"

" clear all the items
call g:quickmenu#reset()

call g:quickmenu#append('# Directories', '')
call g:quickmenu#append('python',               'edit ~/AppData/Local/Programs/Python/Python39/minieyes | normal cd',           '~/AppData/Local/Programs/Python/Python39/minieyes')
call g:quickmenu#append('.bashrc.d',            'edit ~/.bashrc.d | normal cd',                                                 '~/.bashrc.d')
call g:quickmenu#append('.vimrc.d',             'edit ~/.vimrc.d | normal cd',                                                  '~/.vimrc.d')
call g:quickmenu#append('docs',                 'edit ~/OneDrive/文件/docs | normal cd',                                        '~/OneDrive/文件/docs')

call g:quickmenu#append('# Git', '')
call g:quickmenu#append('git log',              '!TortoiseGitProc.exe -command log',                                            'git log')
call g:quickmenu#append('git diff',             '!TortoiseGitProc.exe -command diff',                                           'git diff')
call g:quickmenu#append('git pull',             '!TortoiseGitProc.exe -command pull',                                           'git pull')
call g:quickmenu#append('git push',             '!TortoiseGitProc.exe -command push',                                           'git push')
call g:quickmenu#append('git blame',            '!TortoiseGitProc.exe -command blame -path %',                                  'git push')
call g:quickmenu#append('git commit',           '!TortoiseGitProc.exe -command commit',                                         'git commit')
call g:quickmenu#append('git revert',           '!TortoiseGitProc.exe -command revert',                                         'git revert')
call g:quickmenu#append('git log current file', '!TortoiseGitProc.exe -command log -path %',                                    'git log current file')
