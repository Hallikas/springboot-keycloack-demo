docker run -i -t --rm \
	--env DB_VENDOR=h2 \
	--env KEYCLOAK_USER=admin \
	--env KEYCLOAK_PASSWORD=admin \
	-p 8080:8080 \
	--name keycloak jboss/keycloak:latest
