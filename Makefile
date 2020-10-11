build: 
	@echo "=============Build And Starting Service Locally============="
	docker build -f  Dockerfile -t ocsen-nodejs .
	docker-compose up -d
up:
	@echo "=============Starting Service Locally============="
	docker-compose up -d

logs:
	docker-compose logs -f

down:
	docker-compose down

clean: down
	@echo "=============Cleaning Up============="
	rm -f ocsen-nodejs
	docker rmi ocsen-nodejs
	docker system prune -f
	docker volume prune -f