lint:
	pylint --rcfile .pylintrc --recursive=y .
	yamllint .
	ANSIBLE_LIBRARY=plugins/modules ansible-lint -c .ansible-lint.yml

build:
	bash scripts/build.sh
	echo 'ARCHIVE CONTENT:'
	tar --list -f oxlorg-molecule_pve-*.tar.gz
