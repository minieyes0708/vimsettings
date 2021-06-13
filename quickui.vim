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
    \ [ 'python',               'edit ~/AppData/Local/Programs/Python/Python39/minieyes | normal cd' ],
    \ [ '.bashrc.d',            'edit ~/.bashrc.d | normal cd' ],
    \ [ '.vimrc.d',             'edit ~/.vimrc.d | normal cd' ],
    \ [ 'docs',                 'edit ~/OneDrive/文件/docs | normal cd' ],
\ ]
noremap <A-S-P> :call quickui#listbox#open(minieyes#projects_list, {'title': 'go to project'})<cr>
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
