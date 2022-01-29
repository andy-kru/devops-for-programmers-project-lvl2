touch-vault-password-file:
	touch vault-password

env-prepare:
	cp -n .env.example .env || true

install:
	ansible-galaxy role install -r requirements.yml
	ansible-galaxy collection install -r requirements.yml

setup:
	touch-vault-password-file env-prepare install

deploy:
	ansible-playbook -i inventory.ini -v --vault-password-file vault-password playbook.yml

encrypt-vault:
	ansible-vault encrypt $(FILE) --vault-password-file vault-password

decrypt-vault:
	ansible-vault decrypt $(FILE) --vault-password-file vault-password

view-vault:
	ansible-vault view $(FILE) --vault-password-file vault-password
