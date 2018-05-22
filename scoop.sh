set-executionpolicy unrestricted -s cu
iex (new-object net.webclient).downloadstring('https://get.scoop.sh')

scoop install sudo 7zip coreutils curl git grep openssh sed wget vim grep concfg pshazz nodejs yarn less go
concfg import material

scoop bucket add extras 
scoop bucket add nerd-fonts
scoop install vscode anaconda3 hyper kitematic now-cli p4merge postman shadowsocks slack telegram gcloud
sudo scoop install FiraCode-NF SourceCodePro-NF
