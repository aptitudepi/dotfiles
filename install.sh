sudo apt install git build-essential "*zsh*" yadm ruby ruby-dev gconf2 jq curl w3m
sudo gem install colorls
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
bash ~/.fzf/install
yadm clone --depth=5 https://github.com/aptitudepi/dotfiles.git
yadm decrypt
yadm submodule update --remote --merge
bash ~/.bash_it/install.sh
echo "export BASH_IT_THEME=\"powerline-plain\"" >> ~/.bashrc
echo "export BASH_IT_THEME=\"powerline-plain\"" >> ~/.zshrc
yadm config --global status.submoduleSummary true
curl -sS https://webinstall.dev/zoxide | bash
echo "source $(dirname $(gem which colorls))/tab_complete.sh" >> ~/.bashrc
echo "source $(dirname $(gem which colorls))/tab_complete.sh" >> ~/.zshrc
echo "alias ls='colorls -lA --sd'" >> ~/.zshrc
echo "alias lc='colorls -lA --sd'" >> ~/.bashrc
chsh -s $(which zsh)
wget http://ftp.gnu.org/gnu/coreutils/coreutils-9.0.tar.xz
tar xvJf coreutils-9.0.tar.xz
cd coreutils-9.0/
wget https://raw.githubusercontent.com/jarun/advcpmv/master/advcpmv-0.9-9.0.patch
patch -p1 -i advcpmv-0.9-9.0.patch
./configure
make
sudo mv ./src/cp /usr/local/bin/cp
sudo mv ./src/mv /usr/local/bin/mv
echo alias cp='/usr/local/bin/cp -g' >> ~/.bashrc
echo alias mv='/usr/local/bin/mv -g' >> ~/.bashrc
echo alias cp='/usr/local/bin/cp -g' >> ~/.zshrc
echo alias mv='/usr/local/bin/mv -g' >> ~/.zshrc
wget https://raw.githubusercontent.com/sdushantha/tmpmail/master/tmpmail
chmod -v +x tmpmail
sudo mv tmpmail /usr/bin/tmpmail
curl ix.io/client > ix
chmod +x ix
sudo mv ix /usr/bin
echo "export PATH=$PATH:~/.local/bin" >> .bashrc
echo "export PATH=$PATH:/usr/bin" >> .bashrc
echo "export PATH=$PATH:~/.local/bin" >> .zshrc
echo "export PATH=$PATH:/usr/bin" >> .zshrc
