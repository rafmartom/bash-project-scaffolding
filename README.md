# bash-project-scaffolding

Bash scripting project scaffolding with CLI handlers and unit testing Dockerized

A proof of concept or starting point for new projects setting the Scafolding of a bash scripting project with CLI handlers and unit testing ran on docker


## Usage


### First time

`docker compose build`

### Run the tests

`docker compose run --rm tests`

### Run a determined script

```
docker compose run --rm --entrypoint /bin/bash shell ./bin/do --help
$ docker compose run --rm --entrypoint /bin/bash shell ./bin/do --greet "MyName"
Hello, MyName!
```


## Customization

1 . Change name of app in the Dockerfile and in the docker-compose.yaml dockerfile= directives
2 . Add new functions by adding "modules" as new files on ./src/module_name.sh (you may even want to add a general./src/helpers.sh , or split it by subdirectories according to a pseudo-class system)
3 . Source those new modules in the CLI handlers, `source "${CURRENT_DIR}"/../src/new-module.sh`
4 . Create new CLI handlers by adding files on `./bin/new-verb` , `chmod +x ./bin/new-verb`
5 . Add Unit tests for each module `./tests/new-module.bats` then add a command in the tests service of the compose file `command: ["tests/new-module.bats"]`
6 . Anytime you use a new dependency, add it in the `app.Dockerfile` and rebuild the image.
