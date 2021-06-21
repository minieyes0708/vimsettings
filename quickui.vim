" enable to display tips in the cmdline
let g:quickui_show_tip = 1"

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

call quickui#menu#install('P&ython', [
            \ ['&run',                          'call quickui#terminal#open("py.exe "..expand("%"), {"title": expand("%")})' ],
            \ ['run and -&i',                   'call quickui#terminal#open("py.exe -i "..expand("%"), {"title": expand("%")})' ],
            \ ], '<auto>', 'python')

call quickui#menu#install('&Vim', [
            \ ['&source',                       'source %' ],
            \ ], '<auto>', 'vim')

call quickui#menu#install('&Typescript', [
            \ ['&setup compiler',               'set makeprg=tsc | set errorformat=%f:%l:%c\ -\ %m' ],
            \ ['&make',                         'make %' ],
            \ ], '<auto>', 'typescript')

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
