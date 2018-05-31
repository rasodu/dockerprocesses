include .env
PHONY =

PHONY += status
status:
	docker-compose ps

PHONY += start
start:
	docker-compose up -d $(START_SERVICES)

PHONY += clean
clean:
	docker-compose down

PHONY += clean_deep
clean_deep: clean
	docker container prune -f
	docker network prune -f
	docker volume prune -f

PHONY += clean_images
clean_images: clean_deep
	docker rmi $$(docker images -q --no-trunc)

.PHONY: $(PHONY)
