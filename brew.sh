brew tap buo/cask-upgrade homebrew/python homebrew/science homebrew/services
brew update
brew upgrade

# install brew stuff
brew install autojump docker-clean heroku libpng mono nginx node postgresql redis yarn wget python python3 sqlmap taglib tree ccat archey colordiff

# install brew cask stuff
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlimagesize qlvideo quicklookapk qladdict macdown betterzipql neteasemusic teamviewer google-chrome slack lingon-x shadowsocksx-ng appzapper iterm2 scroll-reverser dash unity postico rowanj-gitx dropbox alfred docker visual-studio-code spectacle alarm-clock lyricsx qq nylas-mail kitematic db-browser-for-sqlite burp-suite jupyter-notebook-ql oversight vlc vox font-source-code-pro-for-powerline font-fira-code google-cloud-sdk cheatsheet usage

# install brew cask stuff (optional)
brew cask install wireshark texmaker mactex skype spotify appcode clion pycharm webstorm clip-studio-paint telegram insomnia kaleidoscope

brew cleanup
brew cask cleanup
