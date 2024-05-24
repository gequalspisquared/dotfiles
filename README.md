# My dotfiles
This repo contains dotfiles for my system, as well as directions 
and commands for installing everything.

## Requirements
Ensure the following are installed on your system:

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

### stow 
```
sudo apt install stow
```

### zsh
```
sudo apt install zsh
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
First, install rust from [rustup](https://rustup.rs).
```
sudo apt install git tmux stow zsh eza bat
git clone git@github.com:neovim/neovim.git
cd neovim
sudo apt-get install ninja-build gettext cmake unzip curl build-essential
make CMAKE_BUILD_TYPE=Release
sudo make install
cd ..
rm -rf neovim
curl -sS https://starship.rs/install.sh | sh
cargo isntall eza
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
```

## Optional tools
I'd also highly recommend install ripgrep and entr.

### ripgrep
```
sudo apt install ripgrep
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

## Installing dotfiles
After installing the required dependencies, ```git clone``` this repo 
to your $HOME, cd into it, and run ```stow .```.
```
cd
git clone git@github.com:gequalspisquared/dotfiles.git
cd dotfiles
stow .
```

After running this, it would be a good idea to install the tmux 
plugins. To do this, create a tmux session with ```tmux``` and 
run ```<C-Space>I``` to install the plugins.\\

And that is it! Everything should now be configured the way I like
it on any system. Feel free to fork this repo and tailor it to 
suit your needs.