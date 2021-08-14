" enable to display tips in the cmdline
let g:quickui_show_tip = 1

call quickui#menu#reset()
call quickui#menu#install('&Projects', [
            \ [ "&Open", "call quickui#listbox#open(["..
            \ "[ '[&1] python',                 'cd ~/AppData/Local/Programs/Python/Python39/minieyes | Files' ],"..
            \ "[ '[&2] .bashrc.d',              'cd ~/.bashrc.d | Files' ],"..
            \ "[ '[&3] .vimrc.d',               'cd ~/.vimrc.d | Files' ],"..
            \ "[ '[&4] .vifm',                  'cd ~/.vifm | Files' ],"..
            \ "[ '[&5] .vim',                   'cd ~/.vim | Files' ],"..
            \ "[ '[&6] docs',                   'cd ~/OneDrive/文件/docs | Files' ],"..
            \ "[ '[&7] 桌面',                   'cd ~/OneDrive/桌面 | Files' ],"..
            \ "[ '[&8] htdocs',                 'cd L:/XAMPPPortable/htdocs | Files' ],"..
            \ "[ '[&9] cgi-bin',                'cd L:/XAMPPPortable/cgi-bin | Files' ],"..
            \ "[ '[&a] doc programs',           'cd ~/OneDrive/文件/programs | Files' ],"..
            \ "[ '[&b] snippets',               'cd ~/.vim/bundle/vim-snippets/ultisnips | Files' ],"..
            \ "[ '[&c] neovim',                 'cd ~/AppData/Local/nvim | Files' ],"..
            \ "], {'title': 'go to project'})" ],
            \ [ "&Peek", "call quickui#listbox#open(["..
            \ "[ '[&1] python',                 'Files ~/AppData/Local/Programs/Python/Python39/minieyes' ],"..
            \ "[ '[&2] .bashrc.d',              'Files ~/.bashrc.d' ],"..
            \ "[ '[&3] .vimrc.d',               'Files ~/.vimrc.d' ],"..
            \ "[ '[&4] .vifm',                  'Files ~/.vifm' ],"..
            \ "[ '[&5] .vim',                   'Files ~/.vim' ],"..
            \ "[ '[&6] docs',                   'Files ~/OneDrive/文件/docs' ],"..
            \ "[ '[&7] 桌面',                   'Files ~/OneDrive/桌面' ],"..
            \ "[ '[&8] htdocs',                 'Files L:/XAMPPPortable/htdocs' ],"..
            \ "[ '[&9] cgi-bin',                'Files L:/XAMPPPortable/cgi-bin' ],"..
            \ "[ '[&a] doc programs',           'Files ~/OneDrive/文件/programs' ],"..
            \ "[ '[&b] snippets',               'Files ~/.vim/bundle/vim-snippets/ultisnips' ],"..
            \ "[ '[&c] neovim',                 'Files ~/AppData/Local/nvim' ],"..
            \ "], {'title': 'browse project'})" ],
            \ ])

call quickui#menu#install('&Git', [
            \ ['git l&og',                      '!START TortoiseGitProc.exe -command log' ],
            \ ['git &diff',                     '!START TortoiseGitProc.exe -command diff' ],
            \ ['git p&ull',                     '!START TortoiseGitProc.exe -command pull' ],
            \ ['git pus&h',                     '!START TortoiseGitProc.exe -command push' ],
            \ ['git &fetch',                    '!START TortoiseGitProc.exe -command fetch' ],
            \ ['git &blame',                    '!START TortoiseGitProc.exe -command blame -path %' ],
            \ ['git &commit',                   '!START TortoiseGitProc.exe -command commit' ],
            \ ['git &revert',                   '!START TortoiseGitProc.exe -command revert' ],
            \ ['git log current f&ile',         '!START TortoiseGitProc.exe -command log -path %' ],
            \ ])

call quickui#menu#install('&Terminal', [
            \ ['&bash',                         'call quickui#terminal#open("bash.exe", {"title": "bash.exe"})' ],
            \ ['&cmd',                          'call quickui#terminal#open("cmd.exe",  {"title": "cmd.exe"})' ],
            \ ['&py',                           'call quickui#terminal#open("py.exe",   {"title": "py.exe"})' ],
            \ ['&vifm',                         'edit term://bash -c vifm' ],
            \ ])

call quickui#menu#install('P&ython', [
            \ ['&run',                          'call quickui#terminal#open("py.exe "..expand("%"), {"title": expand("%")})' ],
            \ ['run and -&i',                   'call quickui#terminal#open("py.exe -i "..expand("%"), {"title": expand("%")})' ],
            \ ], '<auto>', 'python')

call quickui#menu#install('&Vim', [
            \ ['&source',                       'source %' ],
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
