" enable to display tips in the cmdline
let g:quickui_show_tip = 1

function! quickui#SelectProject(callback)
    call fzf#run(fzf#wrap({'source': readfile($HOME .. '/.vimrc.d/quickui.projects'), 'center': 10, 'sink': function(a:callback)}))
endfunction

function! quickui#OpenProject(name)
    if a:name == 'D:/minieyes_chen/program'
        call fzf#run(fzf#wrap({'source': 'fd --type d --max-depth 1 --absolute-path --base-directory ' .. a:name, 'center': 10, 'sink': function('quickui#OpenProject')}))
    else
        execute 'cd ' .. a:name
        execute 'Files'
    endif
endfunction

function! quickui#PeekProject(name)
    if a:name == 'D:/minieyes_chen/program'
        call fzf#run(fzf#wrap({'source': 'fd --type d --max-depth 1 --absolute-path --base-directory ' .. a:name, 'center': 10, 'sink': function('quickui#PeekProject')}))
    else
        execute 'Files ' .. a:name
    end
endfunction

function! quickui#GotoProject(name)
    if a:name == 'D:/minieyes_chen/program'
        call fzf#run(fzf#wrap({'source': 'fd --type d --max-depth 1 --absolute-path --base-directory ' .. a:name, 'center': 10, 'sink': function('quickui#GotoProject')}))
    else
        execute 'cd ' .. a:name
    endif
endfunction

call quickui#menu#reset()
call quickui#menu#install('&Projects', [
            \ ["&Open", "call quickui#SelectProject('quickui#OpenProject')"],
            \ ["&Peek", "call quickui#SelectProject('quickui#PeekProject')"],
            \ ["&Goto", "call quickui#SelectProject('quickui#GotoProject')"],
            \ ])

call quickui#menu#install('&Git', [
            \ ['git l&og',                          '!START TortoiseGitProc.exe -command log' ],
            \ ['git &diff',                         '!START TortoiseGitProc.exe -command diff' ],
            \ ['git p&ull',                         '!START TortoiseGitProc.exe -command pull' ],
            \ ['git pus&h',                         '!START TortoiseGitProc.exe -command push' ],
            \ ['git &blame',                        '!START TortoiseGitProc.exe -command blame -path %' ],
            \ ['git &commit',                       '!START TortoiseGitProc.exe -command commit' ],
            \ ['git &revert',                       '!START TortoiseGitProc.exe -command revert' ],
            \ ['git log current &file',             '!START TortoiseGitProc.exe -command log -path %' ],
            \ ])

call quickui#menu#install('&Terminal', [
            \ ['&bash',                              'call quickui#terminal#open("bash",    {"title": "bash"})' ],
            \ ['&cmd',                               'call quickui#terminal#open("cmd.exe", {"title": "cmd"})' ],
            \ ['&py',                                'call quickui#terminal#open("py.exe",  {"title": "py"})' ],
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

noremap <space> :call quickui#menu#open()<cr>

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
