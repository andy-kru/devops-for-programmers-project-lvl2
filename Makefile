touch-vault-password-file:
	touch vault-password

install:
	ansible-galaxy install -r requirements.yml

setup:
	touch-vault-password-file install

deploy:
	ansible-playbook -i inventory.ini -v --vault-password-file vault-password playbook.yml

encrypt-vault:
	ansible-vault encrypt $(FILE) --vault-password-file vault-password

decrypt-vault:
	ansible-vault decrypt $(FILE) --vault-password-file vault-password

view-vault:
	ansible-vault view $(FILE) --vault-password-file vault-password
