" enable to display tips in the cmdline
let g:quickui_show_tip = 1"

function! quickui#miniFiles(folder)
    if g:quickmenu#mini_is_peek == 0
        execute 'cd ' .. expand(a:folder)
        call fzf#run(fzf#wrap({'source': $FZF_DEFAULT_COMMAND .. ' --type f --base-directory ' .. g:quickmenu#mini_root_folder .. '/' .. a:folder, 'center': 10, 'sink': 'e'}))
    else
        call fzf#run(fzf#wrap({'source': $FZF_DEFAULT_COMMAND .. ' --type f --absolute-path --base-directory ' .. g:quickmenu#mini_root_folder .. '/' .. a:folder, 'center': 10, 'sink': 'e'}))
    endif
endfunc

function! quickui#miniProject(folder, is_peek)
    let g:quickmenu#mini_root_folder = a:folder
    let g:quickmenu#mini_is_peek = a:is_peek
    if g:quickmenu#mini_is_peek == 0
        execute 'cd ' .. expand(a:folder)
    endif
    call fzf#run(fzf#wrap({'source': 'fd --type d --max-depth 1 --base-directory ' .. a:folder, 'center': 10, 'sink': function('quickui#miniFiles')}))
endfunc

call quickui#menu#reset()
call quickui#menu#install('&Projects', [
            \ [ "&Open",
            \ "call quickui#listbox#open(["..
            \ "['[&0] program',                     'call quickui#miniProject(\"D:/minieyes_chen/program\", 0)'],"..
            \ "['[&1] .bashrc.d',                   'cd ~/.bashrc.d | Files'],"..
            \ "['[&2] .vimrc.d',                    'cd ~/.vimrc.d | Files'],"..
            \ "['[&3] .vifm',                       'cd ~/.vifm | Files'],"..
            \ "['[&4] .vim',                        'cd ~/.vim | Files'],"..
            \ "['[&5] FPGA NewABTable For P.E.',    'cd D:/minieyes_chen/fpga/nora/NewABTable_ForPatternEditor/rtl | Files'],"..
            \ "['[&6] IVE4S_FPGA',                  'cd D:/minieyes_chen/fpga/IVE4S_FPGA/rtl | Files'],"..
            \ "['[&7] IVE4S_FW',                    'cd D:/minieyes_chen/firmware/IVE4S_FW | Files'],"..
            \ "['[&8] WebDocs',                     'cd G:/MD/Projects/IVE/WebDocs | Files'],"..
            \ "['[&9] Charles_RGBLUTv2',            'cd C:/Users/nvt02863/Desktop/Charles_RGBLUTv2 | Files'],"..
            \ "], {'title': 'Projects'})"
            \ ],
            \ [ "&Peek",
            \ "call quickui#listbox#open(["..
            \ "['[&0] program',                     'call quickui#miniProject(\"D:/minieyes_chen/program\", 1)'],"..
            \ "['[&1] .bashrc.d',                   'Files ~/.bashrc.d'],"..
            \ "['[&2] .vimrc.d',                    'Files ~/.vimrc.d'],"..
            \ "['[&3] .vifm',                       'Files ~/.vifm'],"..
            \ "['[&4] .vim',                        'Files ~/.vim'],"..
            \ "['[&5] FPGA NewABTable For P.E.',    'Files D:/minieyes_chen/fpga/nora/NewABTable_ForPatternEditor/rtl'],"..
            \ "['[&6] IVE4S_FPGA',                  'Files D:/minieyes_chen/fpga/IVE4S_FPGA/rtl'],"..
            \ "['[&7] IVE4S_FW',                    'Files D:/minieyes_chen/firmware/IVE4S_FW'],"..
            \ "['[&8] WebDocs',                     'Files G:/MD/Projects/IVE/WebDocs'],"..
            \ "['[&9] Charles_RGBLUTv2',            'Files C:/Users/nvt02863/Desktop/Charles_RGBLUTv2'],"..
            \ "['[&a] Ultisnips snippets',          'Files ~/.vim/bundle/vim-snippets/UltiSnips'],"..
            \ "], {'title': 'Browser Projects'})"
            \ ],
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
