set-executionpolicy unrestricted -s cu
iex (new-object net.webclient).downloadstring('https://get.scoop.sh')
scoop install 7zip coreutils curl git grep openssh sed wget vim grep yarn concfg pshazz
concfg import solarized small
