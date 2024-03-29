# Aliases

# directory movement aliases
alias dotfiles='. cdoe -b "$DOTFILES_DIR/"'
alias school='. cdoe -b "$SCHOOL_DIR/"'
alias coding='. cdoe -b "$CODING_DIR/"'
alias temp='. cdoe -b "$TEMP_DIR/"'
alias rust='. cdoe -b "$CODING_DIR/rust/"'
alias pyth='. cdoe -b "$CODING_DIR/python/"'
alias web='. cdoe -b "$CODING_DIR/web/"'
alias dl='. cdoe -b "$HOME/Downloads/"'
alias c='. cdoe -b "$CODING_DIR/c++/"'
alias j='. cdoe -b "$CODING_DIR/java/"'
alias z='. cdoe -b "$CODING_DIR/zsh/"'

# repo: git@github.com:shanemcdo/rename_all
# dir: $CODING_DIR/rust/rename_all
# build: cargo build --release
alias rna="$CODING_DIR/rust/rename_all/target/release/rename_all"

# repo: git@github.com:shanemcdo/ConwaysGameOfLifeCpp.git
# dir: $CODING_DIR/c++/ConwaysGameOfLifeCpp
# branch: mac
# build: make all TARGET=bin/conway
alias conway="silent_bg $CODING_DIR/c++/ConwaysGameOfLifeCpp/bin/conway"

# repo: git@github.com:shanemcdo/TesseractV2.git
# dir: $CODING_DIR/c++/TesseractV2
# branch: mac
# build: make release
alias tess="open -a XQuartz&&\
sleep 1&&\
export DISPLAY=:0&&\
silent_bg $CODING_DIR/c++/TesseractV2/bin/tess"

# repo: git@github.com:shanemcdo/raylib_fib.git
# dir: $CODING_DIR/c++/fib
# build: make clean all TARGET=bin/fib
alias fib="silent_bg $CODING_DIR/c++/fib/bin/fib"

# repo: git@github.com:shanemcdo/ggez_fib.git
# dir: $CODING_DIR/rust/ggez_fib
# build: cargo build --release
alias rfib="silent_bg $CODING_DIR/rust/ggez_fib/target/release/ggez_fib"

# make a java project and run it in temp folder
alias java_make="javac *.java -d \"$TEMP_DIR\" && java -cp \"$TEMP_DIR\""

# make a c++ project and run it in temp folder
alias c++_make="clang++ */*.cpp -Iinclude -o\"$TEMP_DIR/test\" && \"$TEMP_DIR/test\""

# reload the zshrc
alias refresh=". ~/.zshrc"

# repo: git@github.com:shanemcdo/DrawShapes.git
# dir: $CODING_DIR/c++/shapes
# build: make release
# branch: mac
# shape drawing program
alias shapes="silent_bg $CODING_DIR/c++/shapes/bin/shapes"

# show nerd coding welcome screen
# reqs:
#     new_window - in this funcs.zsh
#     rain - in this funcs.zsh
#     cowsay - brew install cowsay
#     lolcat - brew install lolcat
#     neofetch - brew install neofetch
alias welcome="new_window \"clear && neofetch\" && new_window rain && clear && figlet \"Welcome Shane!\" | cowsay -n -fdragon | lolcat"

# show an ascii digitial clock
# reqs:
#     figlet - brew install figlet
#     toilet - brew install toilet
#     watch - brew install watch
alias aclock="watch -n1 --color \"date '+%D%n%T' | toilet -f bigmono12 -F border --gay\""

# repo: git@github.com:shanemcdo/roll_dice_py.git
# dir: $CODING_DIR/python/dice
# dice roll function
alias roll="$CODING_DIR/python/dice/main.py"

# repo: git@github.com:shanemcdo/cnake.git
# dir: $CODING_DIR/c++/cnake
# build: make TARGET=bin/cnake
# snake game written in c
alias cnake="$CODING_DIR/c++/cnake/bin/cnake"

# repo: git@github.com:shanemcdo/typing_test
# dir: $CODING_DIR/rust/typing_test
# build: cargo build --release
# Typing test written in rust
alias typing_test="$CODING_DIR/rust/typing_test/target/release/typing_test"

# default ls to with color
alias ls="ls --color=auto"

# default grep to with color
alias grep="grep --color=auto"

# hide cursor
alias hide_cursor='printf "\e[?25l"'

# show cursor
alias show_cursor='printf "\e[?25h"'

# simplified find command
alias gimme='find . -name'

# cdfl - change directory from list
# requires fzf
alias cdfl=". cdfl"

# copy current working directory
alias cpwd="pwd | pbcopy"

# open all chainsaw man chapters
alias csma="while csm; do ; done"
