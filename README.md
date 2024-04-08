# Information
This theme is designed based on the to match the [Nord](https://www.nordtheme.com/) style guide.

It is designed to match the official Nord [Tmux Theme](https://github.com/nordtheme/tmux) and [Vim Theme](https://github.com/nordtheme/vim).

## Preview
![Theme Preview](theme-preview.png)

## Dependencies
1. Zsh

2. Setup [Oh-My-Zsh](https://github.com/ohmyzsh/ohmyzsh)

3. A [Nord](https://www.nordtheme.com/ports) color theme for your preferred terminal emulator.

4. Some [Nerd Font](https://github.com/ryanoasis/nerd-fonts) as your default terminal emulator font

## Installation
1. Clone the repository
```bash
git clone https://github.com/PheonixScale9094/nord-powerline-zsh.git ~/.oh-my-zsh/nord-powerline-zsh
```

2. Change the following line to your ~/.zshrc file
```
ZSH_THEME="nord-powerline-zsh/nord-powerline"
```

3. Add the following line to your ~/.zshrc file
```
setopt promptsubst
```
