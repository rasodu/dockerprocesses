# dockerprocesses
Flow to allow docker to install software on developer machine

### Steps to install
- Install git and make
- Install docker and docker compose
- Use following instruction to start docker containers.
  ```bash
  git clone git@github.com:rasodu/dockerprocesses.git ~/.dockerprocesses
  cd ~/.dockerprocesses
  cp .env.example .env
  make start
  ```