# Macbook Setup Checklist

## 1. Update Native Macbook Settings 1/2
- [ ] Increase track pad and scroll sensitivity
- [ ] Enable **Tap to click**
- [ ] Increase keyboard repeat speed
- [ ] **Reduce Motion** for desktop swipe
- [ ] Lock screen Timeout
- [ ] Show battery percentage
- [ ] Autohide Dock
- [ ] Turn off true tone

## 2. Get Terminal and Git set up
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
brew install git
brew install --cask iterm2
open -a iTerm
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cd ~
git clone https://github.com/d-vu/mac_config.git
rm -f ~/.zshrc ~/.gitconfig
ln -s ~/mac_config/.zshrc ~/.zshrc
ln -s ~/mac_config/.gitconfig ~/.gitconfig
source ~/.zshrc
```
- [ ] **Point iterm2 to config folder**
1. Settings -> General -> Preferences
2. Load preferences ⌘⇧G → ~/mac_config/iterm2
3. Confirm with ls ~/mac_config/iterm2
- [ ] Install app from brewfile
```
cd ~/mac_config
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