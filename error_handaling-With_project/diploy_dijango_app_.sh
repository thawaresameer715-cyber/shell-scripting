#!/bin/bash
#
<<task
Diploy dejango app and the handle the code for errors
task

#clonnig code

code_clone() {

	echo "Clonnig the fjango app"
	git clone https://github.com/thawaresameer715-cyber/Shell-Scripting-Django-notes-.git
}

install_requirements() {
	
	echo "Installing dependancies"
	sudo apt update
	sudo apt install docker.io nginx -y

}

required_restarts() {

	sudo chmod 777 /var/run/docker.sock
	sudo systemctl enable docker 
	sudo systemctl enable nginx

}

deploy() {
	
	cd Shell-Scripting-Django-notes-/django-notes-app
	docker build -t notes-app . #creating docker image using docker file
	docker run -dp 8000:8000 notes-app:latest # running the docker image

}

echo "-------------Deployment started----------------------"

#Error handling
if ! code_clone; then
	echo "the code dir already exists"
	cd django-notes-app
fi

if ! install_requirements; then 
	echo "installation failed"
	exit 1
fi
required_restarts
deploy
echo"---------Deployment done----------"
