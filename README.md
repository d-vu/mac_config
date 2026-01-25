# Macbook Setup Checklist

## 1. Update Native Macbook Settings 1/2
- [ ] Increase track pad and scroll sensitivity
- [ ] Enable **Tap to click**
- [ ] Increase keyboard repeat speed
- [ ] **Reduce Motion** for desktop swipe
- [ ] Increase screen time out on lock screen preference

## 2. Get Terminal and Git set up
- [ ] cmd + space, **open Iterm**
- [ ] **Install home brew** run
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh) 
```
- [ ] **brew install --cask iterm2**
- [ ] **Pull down dotfiles git repo**
```
cd ~
git clone https://github.com/d-vu/dotfiles.git
```
- [ ] **Link Configs**
```
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
source ~/.zshrc
```
- [ ] **Install Oh my Zsh**
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
source ~/.zshrc
mkdir -p ~/dotfiles/iterm2
```
- [ ] **Point iterm2 to config folder**
1. Settings -> General -> Preferences
2. Load preferences ⌘⇧G → ~/dotfiles/iterm2
3. Confirm with ls ~/dotfiles/iterm2
- [ ] Install app from brewfile
```
cd ~/dotfiles
brew bundle
```

## 3. Update Native Macbook Settings 2/2
- [ ] Disable desktop hotkeys for **Rectangle** System Settings → Keyboard → Keyboard Shortcuts -> Mission Control
- [ ] Disable spot light hot key cmd +space

## 4. Set up navigation apps and apply custom config
- [ ] **Google Chrome**. Login into profile to get Credentials 
- [ ] **Alfred**
- [ ] **Raycast**
	- [ ] Log in
	- [ ] Cmd + space, Advanced, import the **.rayconfig** file
- [ ] **Rectangle**
	- [ ] Apply license key
	- [ ] import **.json** rectangle file

## 5. Set up rest of other applications
- [ ] Obsidian
	1. log in and sync
	2. allow custom plugin
- [ ] Todoist
- [ ] Istats-menu
- [ ] bartender
- [ ] protonvpn
- [ ] vlc
- [ ] handmirror