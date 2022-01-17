command! -nargs=* LuaFuncCommand call minieyes#lua#call(<f-args>)
command! -nargs=* ColorBackup call minieyes#color#backup(<f-args>)
command! -nargs=* ColorRestore call minieyes#color#restore(<f-args>)
