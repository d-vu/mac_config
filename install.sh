cat > install.sh <<'EOF'
#!/usr/bin/env bash
set -euo pipefail

# Ensure dotfiles repo is in ~/dotfiles
if [ "$(pwd)" != "$HOME/dotfiles" ]; then
  echo "Run this from ~/dotfiles"
  exit 1
fi

# 1) Link shell + git config
ln -sf "$HOME/dotfiles/.zshrc" "$HOME/.zshrc"
ln -sf "$HOME/dotfiles/.gitconfig" "$HOME/.gitconfig"

# 2) Ensure iTerm2 prefs folder exists (actual prefs files should already be in it)
mkdir -p "$HOME/dotfiles/iterm2"

echo "Done: linked .zshrc and .gitconfig. iTerm2 prefs folder present at ~/dotfiles/iterm2"
echo "Next: on the Mac, open iTerm2 → Settings → General → Preferences → Load prefs from ~/dotfiles/iterm2"
EOF

chmod +x install.sh
