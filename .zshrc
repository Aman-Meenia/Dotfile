
# history setup
HISTFILE=$HOME/.zhistory
SAVEHIST=10000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify


# completion using arrow keys (based on history)
# bindkey '^[[A' history-search-backward
# bindkey '^[[B' history-search-forward
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh



# Fuzzy finder 
eval "$(fzf --zsh)"

# zoxide the alternative to cd 
eval "$(zoxide init zsh)"
alias cd="z"





# neofetch
# neofetch

# fastfetch (Neofetch Alternative)
fastfetch


# starship
eval "$(starship init zsh)"


# Alias
# Eza alternative to ls 
alias ls="eza --color=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions"
# eza (better `ls`)
alias l="eza -lg --level=2 --icons"
# alias ls="eza --icons"
alias ll="eza -lg --icons"
alias la="eza -lag --icons"
alias lt="eza -lTg --icons"
alias lt1="eza -lTg --level=1 --icons"
alias lt2="eza -lTg --level=2 --icons"
alias lt3="eza -lTg --level=3 --icons"
alias lta="eza -lTag --icons"
alias lta1="eza -lTag --level=1 --icons"
alias lta2="eza -lTag --level=2 --icons"
alias lta3="eza -lTag --level=3 --icons"


alias ld="lazydocker"
alias lg="lazygit"
alias n="nvim"
alias c="clear"
alias e="exit"
alias ta="tmux attach -t"
alias td="tmux detach"
alias tl="tmux ls"
alias tn="tmux new -s"
alias tk="tmux kill-session -t"
alias f='yazi'
alias pn='pnpm'



# Copy updated template to single file
# alias ct ='updatetemplate && cp template.cpp  '
copy_template() {
  updatetemplate && cp template.cpp "$1.cpp" && echo "Template copied successfully to $1.cpp"
}

alias ct='copy_template'

 # Update template.cpp with current date

alias updatetemplate='sed -i "" "s/Created:.*/Created: $(date)/" template.cpp'

# Copy updated template to multiple files
alias copy='updatetemplate && cp template.cpp a.cpp && cp template.cpp b.cpp && cp template.cpp c.cpp && cp template.cpp d.cpp && cp template.cpp e.cpp && cp template.cpp f.cpp && cp template.cpp g.cpp && echo "Template copied successfully!"'
# alias copy="cp template.cpp a.cpp && cp template.cpp b.cpp && cp template.cpp c.cpp && cp template.cpp d.cpp && cp template.cpp e.cpp && cp template.cpp f.cpp"

# To run c++ code
run() {
  # Check if the file exists
  if [[ -f "$1.cpp" ]]; then
    # Compile the C++ file
    g++ -std=c++20 "$1.cpp" -o "$1" && ./$1 || echo "Compilation failed!"
  else
    echo "File $1.cpp not found!"
  fi
}



# for opeing tmux session at start
# if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
#     tmux attach -t default || tmux new -s default
# fi


# bun completions
[ -s "/Users/aman/.bun/_bun" ] && source "/Users/aman/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"



# Andriod studio
# echo 'export PATH=$PATH:$ANDROID_HOME/platform-tools' >> ~/.bash_profile
# source ~/.bash_profile
# export ANDROID_HOME=$HOME/Library/Android/sdk
# export PATH=$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$PATH

# export ANDROID_HOME=/path/to/your/Android/sdk
# export PATH=$PATH:$ANDROID_HOME/tools
# export PATH=$PATH:$ANDROID_HOME/platform-tools

export PATH=$PATH:~/Library/Android/sdk/platform-tools
export ANDROID_HOME=~/Library/Android/sdk
export PATH="$HOME/.bin:$PATH"
export PATH="~/Library/Android/sdk/platform-tools":$PATH
export PATH=$PATH:$ANDROID_HOME/cmdline-tools\latest\bin
# Set ANDROID_HOME environment variable
export ANDROID_HOME=/Users/aman/Library/Android/sdk

# Add platform-tools to your PATH
export PATH=$PATH:$ANDROID_HOME/platform-tools


# Added by Windsurf
export PATH="/Users/aman/.codeium/windsurf/bin:$PATH"
