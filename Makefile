
up: dep
	ANSIBLE_CONFIG=./ansible.cfg ansible-playbook playbook.yml

dep:
	ansible-galaxy install geerlingguy.nodejs
	ansible-galaxy install gantsign.golang



neovim: ## Config: Neovim 
	ANSIBLE_CONFIG=./ansible.cfg ansible-playbook playbook.yml --tags "neovim"

prompt: ## Config: Terminal prompt
	ANSIBLE_CONFIG=./ansible.cfg ansible-playbook playbook.yml --tags "prompt"

wm: ## Config: Windows Manager
	ANSIBLE_CONFIG=./ansible.cfg ansible-playbook playbook.yml --tags "wm"

wp: ## Config: Wallpaper
	ANSIBLE_CONFIG=./ansible.cfg ansible-playbook playbook.yml --tags "wp"

