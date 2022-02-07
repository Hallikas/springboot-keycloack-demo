FROM openjdk:11-jdk
WORKDIR /app
COPY ./build/libs/KeycloakDemo-0.0.1-SNAPSHOT.jar ./demo.jar
COPY keycloak.crt /usr/local/share/ca-certificates/
RUN (echo yes|keytool -trustcacerts -keystore /usr/local/openjdk-11/lib/security/cacerts -storepass changeit -importcert -alias keycloak --file /usr/local/share/ca-certificates/keycloak.crt)
EXPOSE 8080
ENTRYPOINT ["java","-jar","./demo.jar"]
