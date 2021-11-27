
up: dep
	ANSIBLE_CONFIG=./ansible.cfg ansible-playbook playbook.yml

dep:
	ansible-galaxy install --force geerlingguy.nodejs
	ansible-galaxy install --force gantsign.golang



terminal: ## Config: Terminal, altracity 
	ANSIBLE_CONFIG=./ansible.cfg ansible-playbook playbook.yml --tags "terminal"

neovim: ## Config: Neovim editor
	ANSIBLE_CONFIG=./ansible.cfg ansible-playbook playbook.yml --tags "neovim"

prompt: ## Config: Terminal prompt
	ANSIBLE_CONFIG=./ansible.cfg ansible-playbook playbook.yml --tags "prompt"

wm: ## Config: Windows Manager, i3-gaps
	ANSIBLE_CONFIG=./ansible.cfg ansible-playbook playbook.yml --tags "wm"

wp: ## Config: Wallpaper
	ANSIBLE_CONFIG=./ansible.cfg ansible-playbook playbook.yml --tags "wp"

golang: ## Go
	ANSIBLE_CONFIG=./ansible.cfg ansible-playbook playbook.yml --tags "golang"


