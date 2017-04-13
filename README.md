# Welcome

## Installation Instructions

1. Install docker for free from:
   * https://www.docker.com/community-edition
   * NOTE: If on Windows, choose to install Git Bash from Docker installer.

2. We'll be executing a few commands. Open a bash terminal (or Git Bash if you're on windows), clone this Git repo somewhere, and then navigate/cd into the project folder.

3. Setup your docker microservice:
   1. Build the base image for this microservice with the following command: `docker build -t ktc_base -f Dockerfile-base .`. This will help speed up subsequent builds.
   2. Spin up all the docker containers by typing `docker-compose up`. Docker will deploy the container based on the settings in `docker-compose.yml`. HINT: add `-d` at the end to run the container in the background (no printing).
   3. You should be able to see the website by opening a browser and going to `http://localhost:8000`.

* __HINT 1:__ Press `Ctrl + C` to exit the web server's console; your container will still be running in the background.
* __HINT 2:__ To see all the images that were built or fetched from Docker Hub, type `docker images`.
* __HINT 3:__ Executing docker-compose essentially instantiated two containers (i.e. services). When you type `docker ps -a`, you'll see all the active and inactive containers.

4. Whenever you make a code change, you'll need to build and re-deploy the docker image for your microservice:
   1. Build the docker image by typing `docker build -t ktc_web .`. This will essentially layer your code on top of the ktc_base image.
   2. Re-deploy the updated ktc_web image by typing `docker-compose up`. Docker will notice a change in the image and will redeploy the container based on the settings in `docker-compose.yml`.
   3. You should be able to see the changes from `http://localhost:8000` after a few seconds.

* __HINT 1:__ To streamline this process, try this one-liner: `docker build -t ktc_web . && docker-compose up -d`.
* __HINT 2:__ To automate this on Linux, try using the "watch" command to monitor a change in the project folder and execute the one-liner above when a change is detected.

5. Stopping the microservices:
   * To stop the containers, type: `docker-compose down`
   * To stop and remove the containers, type: `docker-compose rm -f`
   * To stop and remove the containers, networks, images, and volumes, simply type: `docker-compose down`



