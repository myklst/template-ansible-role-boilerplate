.PHONY: molecule-lint
molecule-lint:
	set -e       && \
	yamllint .   && \
	ansible-lint && \
	flake8

.PHONY: molecule-test
molecule-test:
	molecule test
