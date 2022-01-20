command! -nargs=* ColorBackup call minieyes#color#backup(<f-args>)
command! -nargs=* ColorRestore call minieyes#color#restore(<f-args>)
command! -nargs=* Config call minieyes#nvim#config(<f-args>)
command! -nargs=* LuaFuncCommand call minieyes#lua#call(<f-args>)
