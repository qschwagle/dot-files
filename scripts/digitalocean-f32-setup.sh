USERNAME=qschwagle

# create the user and modify add the authorized keys
useradd -G wheel $USERNAME
cp -r ~/.ssh /home/$USERNAME
chown -r $USERNAME:$USERNAME /home/$USERNAME/.ssh
chmod 600 /home/$USERNAME/.ssh/authorized_keys

# Software I need and updates
dnf update -y
dnf install rust gcc vim nvim -y

# Firewall -- separate task
dnf install firewalld -y
firwall-cmd --add-server=sshd
systemctl enable firewalld
systemctl start firewalld

# Still need to remove root, disable passwords, and enable keys on ssh



# install plug.vim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
