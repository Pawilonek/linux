

```shell script
# Update linux 
sudo apt update
sudo apt upgrade

# Install starship prompt
sudo sh -c "$(curl -fsSL https://starship.rs/install.sh)"

# Run ansible magic
sudo apt install -y ansible
sudo apt install -y make
make
```

ANSIBLE_CONFIG=./ansible.cfg ansible-playbook playbook.yml




```shell script

# To sync git config:
rsync -rtuv /mnt/c/Users/pawel.kaminski/.gitconfig /home/pawilonek/.gitconfig

# To sync .kube config
rsync -rtuv /mnt/c/Users/pawel.kaminski/.kube/* /home/pawilonek/.kube/


# To sync ssh keys:
rsync -rtuv /mnt/c/Users/pawel.kaminski/.ssh/* /home/pawilonek/.ssh/ --chmod=600


# ssh-key-permissions.sh
chmod 700 ~/.ssh
chmod 644 ~/.ssh/authorized_keys
chmod 644 ~/.ssh/known_hosts
chmod 644 ~/.ssh/config
chmod 600 ~/.ssh/id_rsa
chmod 644 ~/.ssh/id_rsa.pub
```



To get windows username on WSL:
https://www.reddit.com/r/bashonubuntuonwindows/comments/8dhhrr/is_it_possible_to_get_the_windows_username_from/


Fonts:
Font Awesome: https://github.com/FortAwesome/Font-Awesome/tree/master/otfs



Reload i3:
i3-msg reload
i3-msg restart




Todo:

* https://github.com/dandavison/delta#installation
A nice tool to check changes made in git repository



Disable ~/.motd
https://raymii.org/s/tutorials/Disable_dynamic_motd_and_motd_news_spam_on_Ubuntu_18.04.html
