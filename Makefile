run:
	docker-compose up --build

# Consider fixing this.
test:
	curl --verbose 'http://dev:swordfish123@localhost:8080'

setup:
	pip3 install awscli docker-compose
	aws configure
