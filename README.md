# NOTE

all the files in this repository are from this repo [https://github.com/rabbitmq/rabbitmq-server](rabbitmq-server)

this is just a straight forward with the files i need to monitor rabbitmq with prometheus and grafana

- I updated the  "cadvisor" service to work with M1 chips (arm64)

## How It Works

The Makefile defines several targets for managing Docker Compose operations. Each target corresponds to a specific Docker Compose command, allowing for simplified control over the services.

- `make up` starts the services in the specified order (metrics first).
- `make down` and related commands stop services with options to target specific or all services.
- `make logs` and its variants provide easy access to service logs.

- `make clean` used to delete all service/containers and volumes

Ensure that you run these commands from the directory containing the Makefile and the Docker Compose files.
