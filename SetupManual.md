# Mac購入時のセットアップ手順書
Mac購入後にそれなり環境にセットアップするための、自分向け手順書

## 1.MacOS Default周り

### Mac OS のアップデート(手動)
Appleメニューから、Software updateする

### Xcodeのインストール(手動)
AppStoreからポチポチクリックする
補足：iOSアプリ開発しない場合は不要だけど、将来しそうなので入れとく。
インストールが終わったら、Xcodeを開くと、ライセンス承認画面が出るのでAgreeしておく。

### Xcode と Command Line toolsのインストール (コンパイラとかのため)
xcode-select --install
//この後、ポップアップが出るので、OKなどをぽちぽちクリックして進める。


## 2. 個別もの

### (任意)
AntiVirusソフトのインストール

### System defaultのrubyでhomebrewをインストール
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
   
### Brewfileから一気に全部インストール（自動）
以下、Brewfileのためbrewは省略してサブコマンドから記載。
BrewfileはGitHubか、dropboxへブラウザアクセスしてコピペ。（gitも専用アプリもまだ無いので）
インストールは `brew bundle`　で一発。
DLが途中でこけたら、そこまでをコメントアウトして再実行すべし。おそらく再開されるはず。

--- Beginning of Brewfile ---
#### homebrewリポジトリの追加
tap phinze/homebrew-cask
tap caskroom/homebrew-versions

#### インストール前にアップデート＆Formuraを更新
update
upgrade

#### homebrew-caskのインストール	
install brew-cask

#### CUI向け
install vim 
install curl
install wget
install rbenv
install ruby-build
install --disable-etcdir zsh
install git
install openssl
install node

#### GUI向け
##### Browsers
cask install google-chrome
cask install firefox
cask install opera
##### Storages
cask install dropbox
cask install google-drive
##### Editor
cask install sublime-text3
cask install atom
#### Dev
cask install virtualbox
cask install vagrant
cask install iterm2
##### Convenience
cask install alfred
cask alfred link
cask install keyremap4macbook
cask install xtrafinder
cask install menu-meters
cask install vlc
cask install evernote
--- End of BrewFile ---

## 3. その他MISC
dotfilesでカバーするのもあるけど、ひとまず覚えているとこだけ。

- google日本語入力のインストール
 - 日本語と半角カナを優先する設定に。
- sublimeのライセンス入力（旧マシンからはライセンス削除しておく）
- rbenv　で最新版を入れておく。（2014/5時点では2.1.2)
 - rbenv install 2.1.2
 - rbenv rehash
 - rbenv global 2.1.2
 - ruby -v
- ssh鍵を旧マシンからコピー || ssh鍵の新規作成
- .zshrcのpluginを自分用に
 - $ sudo vi /etc/shells
   で、 /usr/local/bin/zsh　を追加する。その後、oh-my-zshでカスタマイズ。dotfilesのコピでほぼ対応可能。
 - $ curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
- SystemPreferenceでcapslockをctrlに。keymapでcapslock2ctrl。
- menu-metersでNW I/O、RAM使用、CPU Usageを表示
- npm用にPATHを追加しておく。(zshrcとか)
 - export PATH="/usr/local/share/npm/bin:$PATH"

## メモ

- Office
- nodebrew
- clipmenu
- VMWare Fusion
- Karabinar
- Alfred
- Dropbox
- Xmind
- VNC
- VLC
- Slack
- Camtwist

- IDE
  - phpstorm
  - rubymine
  - intelliJ
  - WebStorm
  - VirtualBox
