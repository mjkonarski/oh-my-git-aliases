alias g='git'

alias gst='g status'

alias gfe='g fetch'

alias gco='g checkout'
alias gcd='gco develop'
alias gcm='gco master'

alias ggpush='g push origin $(current_branch)'
alias ggpushf='ggpush --force-with-lease'
alias ggpusht='g push origin --tags'

alias gc='g commit'
alias gc!='gc --amend'
alias gca='gc -a'
alias gca!='gca --amend'

alias gl='g pull'
alias glr='gl --rebase'
alias glff='gl --ff-only'

alias gm='g merge'
alias gmff='gm --ff-only'
alias gmnff='gm --no-ff'

alias ga='g add'
alias gap='ga --patch'
alias gai='ga -i'

alias gb='g branch'
alias gba='g branch -a'

alias ggr='git grep'

alias grb='g rebase'
alias grbi='grb --interactive'
alias grbiod='grbi origin/develop'
alias grbiom='grbi origin/master'
alias grbc='grb --continue'
alias grba='grb --abort'

alias gt='g tag'

alias gre='g reset'
alias greh='gre --hard'
alias ggrh='greh origin/$(current_branch)'

grf() {
        gre @~ "$@" && gc! --no-verify --no-edit
}

alias gd='g diff'
alias gdo='gd origin/$(current_branch) $(current_branch)'

alias gcp='g cherry-pick'
alias gcpa='gcp --abort'
alias gcpc='gcp --continue'

alias gsts='git stash show --text'
alias gsta='g stash'
alias gstp='gsta pop'
alias gstd='gsta drop'

alias gcl='g clone'

alias gr='g remote'

# combos
alias gfgrh='gfe && ggrh'
alias gfrbiom='gfe && grbiom'

# https://github.com/robbyrussell/oh-my-zsh
function current_branch() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || \
  ref=$(git rev-parse --short HEAD 2> /dev/null) || return
  echo ${ref#refs/heads/}
}
