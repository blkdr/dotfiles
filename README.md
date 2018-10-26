# dotFiles
These are my personal dotfiles for zsh and awesomewm +4

# How to install

## Install the artwiz fonts

For archlinux run

```
# pacman -S artwiz-fonts
```

You can also install the powerline fonts for better options:

```
# pacman -S powerline-fonts
```

For other distributions can be installed with this:

```
$ git clone https://github.com/powerline/fonts.git
$ sh fonts/install.sh
$ rm -r fonts
```

## Now you need to link the neccesary files

* ZSH config

Install `zsh` and (oh-my-zsh)[https://github.com/robbyrussell/oh-my-zsh]

Install `antigen`

```
$ curl -sL git.io/antibody | sh -s
```

Install NVM

```
$ curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
```

You must set `zsh` as your default shell:

```
$ chsh -s /bin/zsh
```

You may reboot in order to use zsh or type `zsh` when opening a new terminal until you reboot.

Remove the default zsh plugins and themes and link this config

```
$ rm -r ~/.oh-my-zsh/custom/themes
$ ln -s ~/Projects/dotfiles/.oh-my-zsh-themes/* ~/.oh-my-zsh/custom/themes/
$ ln -s ~/Projects/dotfiles/{.shell_aliases,.shell_colors,.shell_helpers,.zshrc} ~/
```

And reload the config

```
$ source ~/.zshrc
```

* Install termite from official or 3rd party repositories.

Backup your termite config if any before proceed

```
$ ln -s ~/Projects/dotfiles/termite ~/.config/
```

* i3lock

Install the `i3lock` package and grant executable permissions

```
$ chmod +x ~/Projects/dotfiles/i3lock/lock
```

* Awesomewm config

```
$ ln -s ~/Projects/dotfiles/awesome ~/.config
```

Then reload awesomewm with Ctrl + Win + R

