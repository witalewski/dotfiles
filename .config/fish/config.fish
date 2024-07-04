fish_add_path /opt/homebrew/bin/

starship init fish | source

set -U fish_greeting

# Android
set -gx JAVA_HOME "/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home"
set -gx ANDROID_HOME "$HOME/Library/Android/sdk"
fish_add_path "$ANDROID_HOME/emulator"
fish_add_path "$ANDROID_HOME/platform-tools"

# Volta
set -gx VOLTA_HOME "$HOME/.volta"
fish_add_path "$VOLTA_HOME/bin"


if status is-interactive
    # Commands to run in interactive sessions can go here

    abbr ni "npm install"
    abbr y yarn
    abbr ys "yarn start"

    abbr g git
    abbr ga "git add"
    abbr gaa "git add --all"
    abbr gbr "git branch"
    abbr gc "git commit"
    abbr gc- "git checkout -"
    abbr gca "git commit --amend"
    abbr gcb "git checkout -b"
    abbr gco "git checkout"
    abbr gd "git diff"
    abbr gds "git diff --staged"
    abbr gf "git fetch"
    abbr gl "git pull"
    abbr glg "git log --stat"
    abbr glgg "git log --graph"
    abbr glo "git log --oneline"
    abbr gm "git merge"
    abbr gp "git push"
    abbr gpf "git push --force"
    function gpsup
        git push --set-upstream origin $(git rev-parse --abbrev-ref HEAD)
    end
    abbr gr "git reset"
    abbr grh "git reset --hard"
    abbr grb "git rebase"
    abbr grba "git rebase --abort"
    abbr grbi "git rebase --interactive"
    abbr grbc "git rebase --continue"
    abbr grbs "git rebase --skip"
    abbr gst "git status"
    abbr gt "git tag"

    abbr s source
    abbr sf "source ~/.config/fish/config.fish"


end
