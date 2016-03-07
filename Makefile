.PHONY: env clean deploy

env:
	virtualenv env -p python2
	env/bin/pip install -r requirements.txt

deploy:
	env/bin/ansible-playbook -i production site.yml --ask-become-pass

clean:
	rm -rf env
