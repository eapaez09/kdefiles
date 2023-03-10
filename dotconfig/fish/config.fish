# function fish_prompt -d "Write out the prompt"
#     # This shows up as USER@HOST /home/user/ >, with the directory colored
#     # $USER and $hostname are set by fish, so you can just use them
#     # instead of using `whoami` and `hostname`
#     printf '%s@%s %s%s ' $hostname \
#         (set_color $fish_color_cwd) (prompt_pwd) (set_color $fish_color_cwd)
# end
#

function sudo --description "Replacement for Bash 'sudo !!' command to run last command using sudo."
    if test "$argv" = !!
    eval command sudo $history[1]
else
    command sudo $argv
    end
end

alias grep="grep --color=auto"
alias cat="bat --style=plain --paging=never"
alias ls="exa --group-directories-first"
alias tree="exa -T"
alias la="exa -la --group-directories-first"
alias l="exa -l"
alias v="nvim ."
alias sv="sudo nvim ."
alias vi="nvim $1"
alias svi="sudo nvim $1"
alias git-user="git config --global user.name $1"
alias git-mail="git config --global user.email $1"
alias git-creds="git config --global credential.helper store"
alias arch-rebuild="sh $HOME/Documents/kdefiles/arch/pacman-sync.sh"

export XDG_SESSION_TYPE=X11
export XDG_CURRENT_DESKTOP=i3

function fish_greeting
end


