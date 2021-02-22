USERNAME=qschwagle

# create the user and modify add the authorized keys
#cp -r ~/.ssh /home/$USERNAME
#chown -r $USERNAME:$USERNAME /home/$USERNAME/.ssh
#chmod 600 /home/$USERNAME/.ssh/authorized_keys

# Software I need and updates
sudo dnf update -y
sudo dnf install rust cargo gcc vim neovim clang -y

# Firewall -- separate task
sudo dnf install firewalld -y
sudo firwall-cmd --add-server=sshd
sudo systemctl enable firewalld
sudo systemctl start firewalld

# Still need to remove root, disable passwords, and enable keys on ssh



# install plug.vim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
