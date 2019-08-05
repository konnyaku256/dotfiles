# Install via Homebrew.
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew bundle --file=Brewfile

# Link any dotfiles
for f in .??*
do
    # The following is excluded.
    [[ "$f" == ".git" ]] && continue
    [[ "$f" == ".gitignore" ]] && continue
    [[ "$f" == ".config" ]] && continue
    [[ "$f" == ".DS_Store" ]] && continue

    echo "$f"
    ln -s $HOME/dotfiles/$f $HOME/$f
done

ln -s $HOME/dotfiles/.config/git/ignore $HOME/.config/git/ignore


# Link the Visual Studio Code settings.json.
VSCODE_SETTING_DIR=~/Library/Application\ Support/Code/User
rm $VSCODE_SETTING_DIR/settings.json
ln -s $HOME/dotfiles/vscode/settings.json $VSCODE_SETTING_DIR/settings.json

# Install the Visual Studio Code Extentions.
cat $HOME/dotfiles/vscode/extensions.txt | while read line
do
    code --install-extension $line
done