#!/bin/bash
#
<<task
Diploy dejango app and the handle the code for errors
task

#clonnig code

code_clone() {

	echo "Clonnig the fjango app"
	git clone https://github.com/shrutisakharkar/django-notes-app.git
}

install_requirements() {
	
	echo "Installing dependancies"
	sudo apt update
	sudo apt install docker.io nginx -y

}

required_restarts() {

	sudo systemctl enable docker 
	sudo systemctl enable nginx

}

deploy() {
	
	docker build -t notes-app .
	docker run -dp 8000:8000 notes-app:latest

}

echo "-------------Deployment started----------------------"
if ! code_clone; then
	echo "the code dir already exists"
	cd django-notes-app
fi
install_requirements
required_restarts
deploy
echo"---------Deployment done----------"
