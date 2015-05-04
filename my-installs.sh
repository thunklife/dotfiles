add-apt-repository ppa:mpstark/elementary-tweaks-daily
add-apt-repository ppa:ubuntu-mozilla-daily-firefox-aurora
add-apt-repository -y ppa:hvr/ghc 
apt-get update
apt-get install elementary-tweaks
apt-get install chromium-browser
apt-get install emacs24
apt-get install firefox
apt-get install python-software-properties
apt-get install software-properties-common
apt-get install cabal-install-1.20 ghc-7.8.4 happy-1.19.4 alex-3.1.3
apt-get install zsh
chsh -s /bin/zsh
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
curl -sL https://deb.nodesource.com/setup_iojs_1.x | sudo  bash -
apt-get install iojs
cabal install cabal-install
cabal update
cabal install ghc-mod hlint stylish-haskell

npm install -g tern
npm install -g babel
npm install -g vault
npm install -g eslint
