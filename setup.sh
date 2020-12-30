# Homebrew
## Homebrewのインストール
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
## brew bundle: Brewfileからパッケージを一括でインストールする
brew bundle --file=Brewfile


# dotfilesのシンボリックリンクを貼る（.zshrc, .vimrc, etc.）
for f in .??*
do
    # ただし、以下は除きます
    [[ "$f" == ".git" ]] && continue
    [[ "$f" == ".gitignore" ]] && continue
    [[ "$f" == ".config" ]] && continue
    [[ "$f" == ".DS_Store" ]] && continue

    echo "$f"
    ln -s $HOME/dotfiles/$f $HOME/$f
done

# .gitignoreのグローバル設定
ln -s $HOME/dotfiles/.config/git/ignore $HOME/.config/git/ignore


# Visual Studio Code
## settings.jsonのシンボリックリンクを貼る
VSCODE_SETTING_DIR=~/Library/Application\ Support/Code/User
rm $VSCODE_SETTING_DIR/settings.json
ln -s $HOME/dotfiles/vscode/settings.json $VSCODE_SETTING_DIR/settings.json

## extensions.txtから拡張機能を一括でインストールする
cat $HOME/dotfiles/vscode/extensions.txt | while read line
do
    code --install-extension $line
done


# デフォルトのログインシェルをzshに変更する
chsh -s /usr/local/bin/zsh