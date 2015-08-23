# Command Line Tools
*Curated Resources for Customisation and Productivity*

## Package Manager
- [Homebrew](http://brew.sh) 
- [Linuxbrew](http://brew.sh/linuxbrew/)

## Terminal Multiplexer
- [Tmux](http://tmux.github.io) 🍺
  - [Install without root access](https://gist.github.com/albd/d397678a499f6d434558)
  - [Tmux Plugin Manager](https://github.com/tmux-plugins/tmux-sensible)
  - [Tmux sensible](https://github.com/tmux-plugins/tmux-sensible)
  - [Dim inactive windows](https://github.com/blueyed/vim-diminactive)

## Shell
- [Zsh](http://reasoniamhere.com/2014/01/11/outrageously-useful-tips-to-master-your-z-shell/) 🍺
  - [Oh My Zsh](http://ohmyz.sh)
  - [newline after prompt](https://github.com/robbyrussell/oh-my-zsh/wiki/themes#ys)
  - completion of filenames, command flags, history, git/kill commands
  - [zsh-autosuggestions](https://github.com/tarruda/zsh-autosuggestions) (Fish style)
  - [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) (Fish style)
- [Fish](http://fishshell.com) 🍺
- [Hotkeys](http://cupfullofcode.com/blog/2013/07/03/efficient-command-line-navigation/index.html)
  - [Readline](http://readline.kablamo.org/emacs.html) (Emacs)
  - [Vi(m)](http://dougblack.io/words/zsh-vi-mode.html)

## Terminal Emulator
- Emulators
  - OSX Terminal 
  - [iTerm2](http://iterm2.com) 
  - Terminator
  - Gnome Terminal
  - [cmder](http://gooseberrycreative.com/cmder/) ⊞
- Themes
  - [Base16](https://github.com/chriskempson/base16)
  - [Gotham](https://github.com/whatyouhide/gotham-contrib)
  - [iTerm Colors](https://github.com/bahlo/iterm-colors) collection
- [Fonts](http://wesbos.com/programming-fonts/)
  - [Inconsolata](https://github.com/Determinant/inconsolata_for_powerline_mod) (Tmux & Powerline mod version)
- Mouse
  - [MouseTerm plus](https://github.com/saitoha/mouseterm-plus) mouse support for Tmux in OSX Terminal
- Window management
  - [BetterSnapTool alternatives](http://alternativeto.net/software/bettersnaptool/) 
  - Tiling Window Managers: [Xmonad](http://xmonad.org/tour.html), [i3](http://i3wm.org)

## Source Control
- [Git](https://help.github.com/articles/generating-ssh-keys/) 🍺
  - [Pretty git log](https://coderwall.com/p/euwpig/a-better-git-log)
  - simple git status: `git config --global sb 'status -sb'`
  - [git command aliases](https://github.com/CallumHoward/cli-tools/blob/master/dotfiles/callums.zshrc#L230)

## File Manager
- [Ranger](http://ranger.nongnu.org) 🍺
  - [ranger-cd](https://gist.github.com/dbohdan/6257642)
  - [ra](https://github.com/CallumHoward/cli-tools/blob/master/dotfiles/callums.zshrc#L222) `alias ra="ranger"` (add to `.zshrc`)
  - [mkcd](https://github.com/CallumHoward/cli-tools/blob/master/dotfiles/callums.zshrc#L208): `mkcd() { mkdir -p "$@" && cd "$@"; }` (add to `.zshrc`)

## Remote Computing
- SSH
  - aliases in `~/.ssh/config`
  - [generate ssh keys](https://www.digitalocean.com/community/tutorials/how-to-set-up-ssh-keys--2)
- [Mosh](https://mosh.mit.edu)
- [Pair Programming](http://www.pairprogramwith.me)
  - [tmate](http://tmate.io) 🍺
  - [Wemux](https://github.com/zolrath/wemux) 🍺

## Debugger
- [LLDB](http://lldb.llvm.org/lldb-gdb.html) GDB for OSX 

## Search (grep)
- [Ag the Silver Searcher](https://github.com/ggreer/the_silver_searcher) 🍺

## Text Editor
- [Vim](https://youtu.be/5FDtnnTt_zg) 🍺
  - [spf13-vim](http://vim.spf13.com)
  - [vim-cheatsheet](https://github.com/CallumHoward/cli-tools/blob/master/vimcheatsheet.pdf)
- [Emacs](https://cl.ly/azzO/download/talk-summary.pdf) 🍺
  - [spacemacs](https://github.com/syl20bnr/spacemacs/)
- [Nano](http://readline.kablamo.org/emacs.html)

## Python [REPL](https://en.wikipedia.org/wiki/Read–eval–print_loop)
- [Ptpython](https://github.com/jonathanslenders/ptpython/) (includes ptipython)
- [iPython](http://ipython.org) 🍺
- [ByPython](http://bpython-interpreter.org) 🍺

## System Monitor
- [htop](https://github.com/CallumHoward/cli-tools/blob/master/dotfiles/callums.zshrc#L226) 🍺

## Web Browser
- [w3m](http://www.howtogeek.com/103574/how-to-browse-from-the-linux-terminal-with-w3m/) 🍺

## Misc CLI tricks
- ssh alias
- stream into file with >
- sudo !!
- tail -f / [less +F](https://www.reddit.com/r/linux/comments/30skg1/stop_using_tail_f_mostly/)
- [bash script "strict mode"](http://redsymbol.net/articles/unofficial-bash-strict-mode/)
- [Xargs](http://www.xaprb.com/blog/2009/05/01/an-easy-way-to-run-many-tasks-in-parallel/) 🍺/
  [GNU Parallel](http://www.gnu.org/software/parallel/) 🍺

## Further Reading
- [The Text Triumvirate](http://www.drbunsen.org/the-text-triumvirate/)
- [Linux Beards](http://i.imgur.com/EsBFyxE.jpg)

###### Key
🍺  Available through Homebrew  
   Available on Mac OSX only 
⊞   Available on Windows only
