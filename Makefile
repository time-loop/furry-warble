# This file is a helper if you want to actually run the container and tests.
# You can use it as a guideline to see where things are and how they're run.
# You should not change this file as part of the exercise.
run:
	docker-compose up --build

# Yes this is the hardcoded secret. No, this is not where you need to fix it.
test:
	curl --verbose 'http://dev:swordfish123@localhost:8080'

setup:
	pip3 install awscli docker-compose
	aws configure
