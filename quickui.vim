" enable to display tips in the cmdline
let g:quickui_show_tip = 1"

call quickui#menu#reset()
call quickui#menu#install('&Projects', [
    \ [ "&Open", "call quickui#listbox#open(["..
        \ "[ '[&1] python',             'cd ~/AppData/Local/Programs/Python/Python39/minieyes | Explore' ],"..
        \ "[ '[&2] .bashrc.d',          'cd ~/.bashrc.d | Explore' ],"..
        \ "[ '[&3] .vimrc.d',           'cd ~/.vimrc.d | Explore' ],"..
        \ "[ '[&4] docs',               'cd ~/OneDrive/文件/docs | Explore' ],"..
    \"], {'title': 'go to project'})" ],
\ ])
call quickui#menu#install('&Git', [
    \ ['git l&og',                      '!TortoiseGitProc.exe -command log' ],
    \ ['git &diff',                     '!TortoiseGitProc.exe -command diff' ],
    \ ['git p&ull',                     '!TortoiseGitProc.exe -command pull' ],
    \ ['git pus&h',                     '!TortoiseGitProc.exe -command push' ],
    \ ['git &blame',                    '!TortoiseGitProc.exe -command blame -path %' ],
    \ ['git &commit',                   '!TortoiseGitProc.exe -command commit' ],
    \ ['git &revert',                   '!TortoiseGitProc.exe -command revert' ],
    \ ['git log current f&ile',         '!TortoiseGitProc.exe -command log -path %' ],
\ ])
call quickui#menu#install('&Terminal', [
    \ ['&cmd',                          'call quickui#terminal#open("cmd.exe", {"title": "cmd.exe"})' ],
    \ ['&py',                           'call quickui#terminal#open("py.exe",  {"title": "py.exe"})' ],
\ ])
noremap <space><space> :call quickui#menu#open()<cr>
