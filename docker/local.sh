docker stop keycloak-radius-plugin
docker rm keycloak-radius-plugin
docker build -t keycloak-radius-plugin .
docker run --env-file .example.radius.env -p 8080:8080/tcp -p 1812:1812/udp -p 1813:1813/udp --name=keycloak-radius-plugin keycloak-radius-plugin start-dev
set -e