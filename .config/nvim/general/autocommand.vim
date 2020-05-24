" Automatically rebuild and install suckless programs
autocmd BufWritePost config.def.h !sudo make install && make clean
