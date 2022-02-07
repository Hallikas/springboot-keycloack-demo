docker run --rm --name gradle -v $(pwd):/app bitnami/gradle build
echo -n "PRESS ENTER";read
echo quit | openssl s_client -showcerts -servername keycloak.apps.gamehost.fi -connect keycloak.apps.gamehost.fi:443 > keycloak.crt
docker rmi demo
docker build -t demo .
