# zsh_config

I'm using [OhMyZsh](https://ohmyz.sh/)

## Install with curl
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

Download this:
> https://github.com/romkatv/powerlevel10k

`git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k`


## Enabling Plugins (zsh-autosuggestions & zsh-syntax-highlighting)
- Download zsh-fzf-history-search
`git clone https://github.com/joshskidmore/zsh-fzf-history-search ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-fzf-history-search`

 - Download zsh-autosuggestions by

 `git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions`

 - Download zsh-syntax-highlighting by

 `git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting`

 - `vim ~/.zshrc` find `plugins=(git)`

 - Append `zsh-autosuggestions & zsh-syntax-highlighting` to  `plugins()` like this

 `plugins=(git zsh-autosuggestions zsh-syntax-highlighting)`

## Extra kubestuff

   `mkdir -p ~/.oh-my-zsh/custom/plugins/kubectl-autocomplete/`
   `kubectl completion zsh > ~/.oh-my-zsh/custom/plugins/kubectl-autocomplete/kubectl-autocomplete.plugin.zsh`

- Your plugins should then look like this:

 `plugins=(git zsh-autosuggestions zsh-syntax-highlighting kubectl-autocomplete)`

 - Reopen terminal (May need to source aswell: 'source .zshrc')
