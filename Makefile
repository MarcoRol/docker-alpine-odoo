build:
	@docker build -t x0rzkov/odoo:alpine3.10 .

run:
	@docker run -ti -p 8080:8080 x0rzkov/odoo:alpine3.10
