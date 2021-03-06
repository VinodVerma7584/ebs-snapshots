.PHONY: snapshots
SHELL = /bin/bash

snapshots:
	docker build -t snapshotmanager .
	docker run \
		-e AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY} \
		-e AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID} \
		snapshotmanager \
		ansible-playbook -i localhost, snapshots.yml
