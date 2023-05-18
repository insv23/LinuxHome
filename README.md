# LinuxHome

Backup $HOME files of Linux machines

```
.vim/
.zsh/
.gitignore
.p10k.zsh
.tmux.conf
.vimrc
.zshrc
```

# How to use

## Initial

```sh
cd ~
vim .gitignore
```

Contents in `.gitignore`

```
*
```

```
git init

git add .zshrc --force
git add .vim/ --force
git submodule add -f https://github.com/romkatv/powerlevel10k.git .zsh/powerlevel10k
git submodule add -f https://github.com/zsh-users/zsh-autosuggestions .zsh/zsh-autosuggestions
git submodule add -f https://github.com/marlonrichert/zsh-autocomplete.git .zsh/zsh-autocomplete
git submodule add -f https://github.com/zsh-users/zsh-syntax-highlighting.git .zsh/zsh-syntax-highlighting
git add .gitignore --force
git add .p10k.zsh --force
git add .tmux.conf --force
git add .vimrc --force

git commit -m "230503-TencetCloud"
git branch -M main
git remote add origin https://github.com/insv23/LinuxHome.git
git push -u origin main
```

## Sync to local new machine

On new machine.

### Switch bash to zsh

```
apt update
apt install zsh -y
apt install git -y
chsh -s /bin/zsh
```

### Sync to local

```
cd ~
git init
git remote add origin https://github.com/insv23/LinuxHome.git
git config core.sparsecheckout true
```

```
vim .git/info/sparse-checkout
```

Contents in `.git/info/sparse-checkout`

```
.vim/*
.zsh/*
.gitignore
.p10k.zsh
.tmux.conf
.vimrc
.zshrc
```

```
git pull origin main
git submodule init
git submodule update
```

## Submit after modification

Assuming we have made changes to `.zshrc` file on host A.

```
git add .zshrc
git commit -m "230503-HA-add proxy"
git push
```

On host B,

```
git pull
```
