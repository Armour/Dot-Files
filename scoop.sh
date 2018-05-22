set-executionpolicy unrestricted -s cu
iex (new-object net.webclient).downloadstring('https://get.scoop.sh')
scoop install sudo 7zip coreutils curl git grep openssh sed wget vim grep concfg pshazz nodejs yarn less go
scoop bucket add extras
scoop install vscode anaconda3 hyper
concfg import material
