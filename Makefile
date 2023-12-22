# Define the docker-compose command
DC = docker-compose

# Start services: First start metrics, then the main docker-compose
up:
	$(DC) -f docker-compose.metrics.yml up -d
	$(DC) up -d

# Stop the main docker-compose services
down:
	$(DC) down

# Stop the metrics services
down-metrics:
	$(DC) -f docker-compose.metrics.yml down

# Stop all services
down-all:
	$(DC) down
	$(DC) -f docker-compose.metrics.yml down

# Logs for the main docker-compose services
logs:
	$(DC) logs

# Logs for the metrics services
logs-metrics:
	$(DC) -f docker-compose.metrics.yml logs

# Combined logs
logs-all:
	$(DC) logs
	$(DC) -f docker-compose.metrics.yml logs

# Reset environment: Remove all containers, networks, and volumes
clean:
	$(DC) -f docker-compose.metrics.yml down -v
	$(DC) down -v
