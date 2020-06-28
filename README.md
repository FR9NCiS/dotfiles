# fr9ncis' custom dotfiles

- Scripts and custom programs are placed in `~/.local/bin/`
-  Library files and modules are placed in `~/.local/lib/` (e.g. node_modules)
- [XDG Base Directory Specification](https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html) -> Usage of ~/.config instead of ~ (clean home directory; most config files in one TLD)

## [Suckless](https://suckless.org/) programs

These programs are modified via their respectable header/source files and then recompiled. Just clone my custom forks (URLs below) and ```sudo make install``` and you're good to go.

- [dwm](https://github.com/fr9ncis/dwm) (dynamic window manager)
- [st](https://github.com/fr9ncis/st) (terminal emulator)
- [dmenu](https://github.com/fr9ncis/dmenu) (menu launcher; used for all kinds of things)
