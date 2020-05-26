" Automatically rebuild and install suckless programs
autocmd BufWritePost config.h,config.def.h !sudo make clean install
