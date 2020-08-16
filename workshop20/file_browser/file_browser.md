# File browser

## Terminal

### Ranger

Vim-inspired, multi-pane file manager written in Python.

![ranger-screenshot](ranger.jpg)

#### ranger-cd

Ranger can be used to change directories using this super useful snippet. Place this in `~/.zshrc`:

```zsh
function ranger-cd() {
    tempfile=$(mktemp /tmp/${tempfoo}.XXXXXX)
    ranger --choosedir="$tempfile" "${@:-$(pwd)}" < $TTY
    test -f "$tempfile" &&
    if [ "$(cat -- "$tempfile")" != "$(echo -n `pwd`)" ]; then
        cd -- "$(cat "$tempfile")"
    fi
    rm -f -- "$tempfile" > /dev/null 2>&1
}
```

#### File type icons

- [Ranger Devicons plugin](https://github.com/alexanderjeurissen/ranger_devicons)

#### Preview

##### atool

##### highlight

##### bat

##### glow

##### w3m

##### pdf2txt

##### mediainfo

### lf

Terminal file manager written in Go, heavily inspired by Ranger.

### Hunter

Fast terminal file manager written in Rust, heavily inspired by Ranger.

### nnn

Highly optimised C file manager.

## Text Editor

### Netrw

### NERDTree

### Ranger

### Conqueror of Completion Explorer

### Vinegar

### Dirvish
