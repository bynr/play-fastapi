build:
	DOCKER_BUILDKIT=1 docker build -t bynr/play-fastapi .

run:
	docker run -v app:/app -d -p 80:80 --name fast bynr/play-fastapi /start-reload.sh

follow:
	docker logs -f fast

rm:
	docker rm -f fast

bash:
	docker exec -it fast bash

logs:
	docker logs fast

query:
	curl http://localhost:80/items/5?q=somequery

doc:
	@echo "go to docs at http://127.0.0.1/docs"
	@echo "go to docs at http://127.0.0.1/redoc"
