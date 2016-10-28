### DEVELOP

if you want to develop on contained repository:

    git pull --unshallow


then you can use 

    docker run -v host/directory:/container/repo/directory
    
this command allow you to create a folder on your host that link to repo files on your container


### Installation

    docker build -t azerothcore-wotlk . 
    
    
    
### Thanks

This project is based on

https://github.com/josefalcon/trinitycore-docker
