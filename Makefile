
up: dep
	ANSIBLE_CONFIG=./ansible.cfg ansible-playbook playbook.yml

dep:
	ansible-galaxy install geerlingguy.nodejs
	ansible-galaxy install gantsign.golang



neovim:
	ANSIBLE_CONFIG=./ansible.cfg ansible-playbook playbook.yml --tags "neovim"

prompt:
	ANSIBLE_CONFIG=./ansible.cfg ansible-playbook playbook.yml --tags "prompt"

