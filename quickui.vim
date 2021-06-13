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
    \ [ '[&1] python',              'cd ~/AppData/Local/Programs/Python/Python39/minieyes | edit .' ],
    \ [ '[&2] .bashrc.d',           'cd ~/.bashrc.d | edit .' ],
    \ [ '[&3] .vimrc.d',            'cd ~/.vimrc.d | edit .' ],
    \ [ '[&4] docs',                'cd ~/OneDrive/文件/docs | edit .' ],
\ ]
noremap <C-S-P> :call quickui#listbox#open(minieyes#projects_list, {'title': 'go to project'})<cr>
" }}}

" Git {{{
let minieyes#git_cmd_list = [
    \ ['[&1] git log',              '!TortoiseGitProc.exe -command log' ],
    \ ['[&2] git diff',             '!TortoiseGitProc.exe -command diff' ],
    \ ['[&3] git pull',             '!TortoiseGitProc.exe -command pull' ],
    \ ['[&4] git push',             '!TortoiseGitProc.exe -command push' ],
    \ ['[&5] git blame',            '!TortoiseGitProc.exe -command blame -path %' ],
    \ ['[&6] git commit',           '!TortoiseGitProc.exe -command commit' ],
    \ ['[&7] git revert',           '!TortoiseGitProc.exe -command revert' ],
    \ ['[&8] git log current file', '!TortoiseGitProc.exe -command log -path %' ],
\]
noremap <C-S-G> :call quickui#listbox#open(minieyes#git_cmd_list, {'title': 'Git Commands'})<cr>
" }}}

" Terminal {{{
let minieyes#terminal_cmd_list = [
    \ ['cmd',                       'call quickui#terminal#open("cmd.exe", {"title": "cmd.exe"})' ],
    \ ['py',                        'call quickui#terminal#open("py.exe",  {"title": "py.exe"})' ],
\]
noremap <C-S-J> :call quickui#listbox#open(minieyes#terminal_cmd_list, {'title': 'Terminal Commands'})<cr>
" }}}

" vim: foldmethod=marker
