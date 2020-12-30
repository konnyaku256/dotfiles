# konnyaku256/dotfiles
This is my dotfiles repository for macOS.
You can quickly setup my development environment.

## How to setup
dotfilesのクローン先はホームディレクトリ下がおすすめです。
```sh
$ cd ~
$ git clone https://github.com/konnyaku256/dotfiles.git
$ cd dotfiles
$ ./setup.sh
```

## 設定ファイル更新時のチートシート
- `~/.*` のdotfiles系はこのリポジトリのルートを更新
- `brew bundle dump` でBrewfileを更新
- `./vscode/settings.json` を更新
- `code --list-extensions > ./vscode/extentions.txt` でextentions.txtを更新

## dotfiles
.zshrc, .vimrcなどのdotfilesはこのリポジトリのルートに配置しておきます。
あとは、setup.shがlnコマンドでいい感じにシンボリックリンクを貼ってくれます。

## Homebrew
macOSで使っているほとんどのアプリはHomebrewでパッケージ管理しています。

### Brewfile
次のコマンドでHomebrewで管理している全てのパッケージをBrewfileとして書き出すことができます。

```sh
$ brew bundle dump
```

また、Brewfileからパッケージを一括でインストールできます。

```sh
$ brew bundle
```

> 初回実行時は`brew bundle`が自動でインストールされます。

https://github.com/Homebrew/homebrew-bundle

## Visual Studio Code
メインで使用しているコーディングエディタです。

### settings.json
エディタ全般の設定は `settings.json` で管理できます。
`$HOME/Library/Application\ Support/Code/User/settings.json` にシンボリックリンク貼ってます。

### Extensions
次のコマンドでVisual Studio Codeで管理している全ての拡張機能をextentions.txtとして書き出すことができます。

```sh
$ code --list-extensions > ./vscode/extentions.txt
```

また、extensions.txtから拡張機能を一括でインストールできます。
```sh
$ cat ./vscode/extensions.txt | while read line
> do
>     code --install-extension $line
> done
```

https://code.visualstudio.com/docs/editor/extension-gallery#_command-line-extension-management


## iTerm2
メインで使用しているターミナルです。
最近、[One Dark](https://github.com/atom/one-dark-ui)というカラースキームを導入してみましたが、なかなかよかったです。

https://github.com/one-dark/iterm-one-dark-theme

### 設定
General -> Preferences
1. Check 'Load preferences from a custom folder or URL'
2. Set path '~/dotfiles'