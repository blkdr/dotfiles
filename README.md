# These are my personal dotfiles

* zsh (+ oh-my-zsh)
* vim (+ vundle)
* awesomewm +4

Note that this files are my personal configuration for my work environment so some things should be modified to satisfy your needs.

Which things? I'll try to explain some of them and add some screenshots (which ill be adding soon).

## Clone repository

```
$ mkdir ~/Projects
$ https://github.com/blkdr/dotfiles.git
```

My config takes `~/Projects/dotfiles` as their home folder. If you want to change it you must replace the directory on these files:

```
Comming soon
```

And also apply those changes to the command lines used below.

## How to install

My `awesomewm` and `termite` config uses the `lemon` font from the `artwiz` fonts.

If you want to use another font you need to update the font variable on these files: `termite/config and `awesome/themes/powerarrow-dark/theme.lua`

### Install the artwiz fonts

For archlinux run

```
# pacman -S artwiz-fonts
```

For another fonts which can you prefer:

```
# pacman -S powerline-fonts
```

For other distributions:

```
$ git clone https://github.com/powerline/fonts.git
$ sh fonts/install.sh
$ rm -r fonts
```

## Now you need to link the neccesary files

### ZSH config

Install `zsh` and [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)

```
# pacman -S zsh
$ sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

Install [antigen](https://getantibody.github.io/install/)

```
$ curl -sL git.io/antibody | sh -s
```

Install [NVM](https://github.com/creationix/nvm#install-script)

```
$ curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
```
Note: the version could be outdated. Please verify the current version in the previous link.

Now you must set `zsh` as your default shell:

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

### Termite

```
# pacman -S termite
```

Link the configuration

```
$ ln -s ~/Projects/dotfiles/termite ~/.config/
```

### VIM

Install a clipboard capable vim version. In archlinux you need to install `gvim` instead of `vim` (`gvim` ships the `vim` cli package)

```
# pacman -S gvim
```

Install [vundle](https://github.com/VundleVim/Vundle.vim) and link the config

```
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
$ ln -s ~/.vimrc ~/Projects/dotfiles/.vimrc
```

Open `vim` and run `:so%` (to source the .vimrc file) and then `:PluginInstall`

After installing the plugins you can re run `vim` and you'll be fine.

My vim config bring these shortcuts and features:

* Default `<leader>` is mapped to `,`
* NerdTree (toggle with `<C-f>`)
* Highlight search (toggle with `F3`)
* Show differences between last saved version of the file and the current file (toggle with `F4`)
* Fix file indentation with `F7`
* Close all buffers but the current one with `F10`
* `<C-m>` will put the current buffer at fullscreen
* `<C-n>` will restore buffers after one being at fullscreen
* You can navigate faster by holding `<C>` with the default movement with `h` `j` `k` `l`
* `d` `D` `x` `X` will delete the selected text. For copy you need to press for example `<leader>d`
* You can edit the `~/.vimrc` file at anytime inside vim by pressing `<leader>ev`
* To source the `~/.vimrc` at anytime inside vim use `<leader>sv`
* Other features that you can view/modify through the `~/.vimrc` file

### i3lock

You need to install the `i3lock` package 

```
# pacman -S i3lock
```

And grant executable permissions to the script on this repository

```
$ chmod +x ~/Projects/dotfiles/i3lock/lock
```

### Awesomewm config

```
$ ln -s ~/Projects/dotfiles/awesome ~/.config
```

Then reload awesomewm with Ctrl + Win + R

The bar is hidden by default but you can toggle it with `<Win-b>`.

The menu is only accessible with `<Win-w>`
