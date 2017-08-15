# CSESoc Commandline Tools Workshop 2017

## Git
- aliases in `.gitconfig` 
- [Hub](https://hub.github.com)  
- [Use ssh keys for authentication](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/)  

```shell
ls -la | grep '^lrw' | perl -pne 's/\s+(?=[^\n])/,/g' | cut -f 9 -d, | grep '^\.'
```


## Remote Computing

### [SSH](https://github.com/CallumHoward/cli-tools/blob/master/ssh_guide.md)
- [SSH Guide](https://github.com/CallumHoward/cli-tools/blob/master/ssh_guide.md)
  - no password
  - aliases in `.ssh/config`
  - scp can use aliases too
  - hushlogin
  - kill connection with `~.`

- [Mosh](https://mosh.mit.edu)

- [Pair Programming](http://www.pairprogramwith.me)
  - [Cloud9](http://c9.io)
  - [tmate](http://tmate.io) 🍺
  - [Wemux](https://github.com/zolrath/wemux) 🍺


## Bash
config file: `.bashrc`  
[readline](http://readline.kablamo.org/emacs.html) (and macOS support)  
`!!`  
Meta-. Meta-[1-9]  
Ctrl-r Ctrl-s  `[[ $- == *i* ]] && stty -ixon ` —> .bashrc  
[hstr](https://github.com/dvorka/hstr)  
Ctrl-z suspend, `fg` resume  
`cd -`  
Ctrl-L > `clear`  


## Zsh
config file: `.zshrc`
- completion of filenames, command flags, history, git/kill commands
- shared command history
- autocorrection
- cd abbreviations


## [Oh My Zsh](http://ohmyz.sh)
- [themes](https://github.com/robbyrussell/oh-my-zsh/wiki/themes)
- [more themes](https://github.com/robbyrussell/oh-my-zsh/wiki/External-themes)
- [zsh-autosuggestions](https://github.com/tarruda/zsh-autosuggestions) (Fish style)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) (Fish style)
- [history-search-multiword](https://github.com/zdharma/history-search-multi-word)
- `cd -[1-9]`
- cd into folder names directly
- `..` and `...`



## Text Editor
- [Vim](https://youtu.be/5FDtnnTt_zg)
  - [Neovim](http://neovim.io)
  - [vim-cheatsheet](https://github.com/CallumHoward/cli-tools/blob/master/vimcheatsheet.pdf)

- [Emacs](https://cl.ly/azzO/download/talk-summary.pdf)
  - [spacemacs](https://github.com/syl20bnr/spacemacs/)

- [micro](https://micro-editor.github.io)

- [Readline](http://readline.kablamo.org/emacs.html)

- [Universal ctags](https://ctags.io)


## Misc
`sed` —> `perl -pne`  
`xargs`


## Tmux
Sessions, windows, panes  
Prefix  
`.tmux.conf`  
last command (Prefix-b)  


## Terminal Emulators
- Emulators
  - MacOS Terminal 
  - [iTerm2](http://iterm2.com) 
  - [Hyper](https://hyper.sh)
  - [Upterm](https://github.com/railsware/upterm)
  - [Terminator](https://launchpad.net/terminator)
  - Gnome Terminal
  - [cmder](http://gooseberrycreative.com/cmder/) ⊞

- Themes
  - [Base16](https://github.com/chriskempson/base16)
  - [Gotham](https://github.com/whatyouhide/gotham-contrib)
  - [iTerm Colors](https://github.com/bahlo/iterm-colors) collection

- [Fonts](http://wesbos.com/programming-fonts/)
  - [Inconsolata](https://github.com/Determinant/inconsolata_for_powerline_mod) (Tmux & Powerline mod version)
  - [Adobe Source Code Pro](http://adobe-fonts.github.io/source-code-pro/)


## Documentation
- [Dash](https://kapeli.com/dash)
- [Zeal](https://zealdocs.org)

## System Monitor
- [htop](https://github.com/CallumHoward/cli-tools/blob/master/dotfiles/callums.zshrc#L226)
- [gtop](https://github.com/aksakalli/gtop)


## Rust Utils
- [ripgrep](https://github.com/BurntSushi/ripgrep)
- [skim](https://github.com/lotabout/skim)
- [exa](https://the.exa.website)
- [walker](https://github.com/CallumHoward/walker)


## Python
- [iPython](http://ipython.org)
- [bpython](http://bpython-interpreter.org)
- [Ptpython](https://github.com/jonathanslenders/ptpython/) (includes ptipython)


## Further Reading
- [Callum's Dotfiles](https://github.com/CallumHoward/dotfiles)


