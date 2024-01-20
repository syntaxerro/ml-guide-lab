build-image:
	docker compose build
	docker compose up -d

run: build-image build-docs

build-docs:
	docker compose exec -it ml0-guide-app mkdocs build

down:
	docker compose down

bash:
	docker compose exec -it ml0-guide-app bash

root:
	docker compose exec -u 0:0 -it ml0-guide-app bash