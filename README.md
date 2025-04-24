
This repo contains dotfiles for my system, as well as directions 
and commands for installing everything.

## Requirements
Ensure the following are installed on your system:

### Any Nerd Font
I suggest [JetBrainsMono Nerd Font](https://www.nerdfonts.com/font-downloads).
After downloading the fonts, unzip the downloaded folder and cd into 
it. Then install the fonts
```
sudo cp *.ttf /usr/share/fonts/
sudo fc-cache -fv
```

### Git
```
sudo apt install git
```

### Neovim (> v0.9.0)
I recommend building from [source](https://github.com/neovim/neovim/blob/master/INSTALL.md#install-from-source)
since many package managers use a very old version of neovim.
```
git clone git@github.com:neovim/neovim.git
cd neovim
sudo apt-get install ninja-build gettext cmake unzip curl build-essential
make CMAKE_BUILD_TYPE=Release
sudo make install
cd ..
rm -rf neovim
```

### tmux
```
sudo apt install tmux
```

### tpm
```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

### stow 
```
sudo apt install stow
```

### zsh
```
sudo apt install zsh
chsh -s /usr/bin/zsh
```

### oh-my-zsh
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### starship
```
curl -sS https://starship.rs/install.sh | sh
```

### eza
First, install rust from [rustup](https://rustup.rs) then run
```
cargo install eza
```

### bat
```
sudo apt install bat
```

### zoxide
```
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
```

### All together
First, install rust from [rustup](https://rustup.rs) as well 
as any Nerd Font.
```
sudo apt-get install ninja-build gettext cmake unzip curl build-essential
sudo apt install git tmux stow zsh bat
chsh -s /usr/bin/zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone git@github.com:neovim/neovim.git
cd neovim
make CMAKE_BUILD_TYPE=Release
sudo make install
cd ..
rm -rf neovim
curl -sS https://starship.rs/install.sh | sh
cargo install eza
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
```

## Optional tools
I'd also highly recommend installing ripgrep, fzf, and entr.

### ripgrep
```
sudo apt install ripgrep
```

### fzf
```
sudo apt install fzf
```

### entr
```
git clone https://github.com/eradman/entr
cd entr
./configure
make test
sudo make install
cd ..
rm -rf entr
```

## Ghostty
I use Ghostty as my terminal emulator. 

```
sudo apt-get install ghostty
```

## Installing dotfiles
After installing the required dependencies, ```git clone``` this repo 
to your $HOME, cd into it, and run ```stow .```.
```
cd
git clone --recurse-submodules git@github.com:gequalspisquared/dotfiles.git
cd dotfiles
stow .
```

After running this, it would be a good idea to install the tmux 
plugins. To do this, create a tmux session with ```tmux``` and 
run ```<C-Space>I``` to install the plugins. Also restart the 
terminal and zsh should now be the default shell.\

And that is it! Everything should now be configured the way I like
it on any system. Feel free to fork this repo and tailor it to 
suit your needs.
