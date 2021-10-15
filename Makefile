KEYCLOAK_VERSION=13.0.1

init-submodule:
	git submodule init
	git submodule update

build-keycloak:
	rm -rf docker/keycloak
	cd keycloak; mvn -Pdistribution -pl distribution/server-dist -am -Dmaven.test.skip clean install
	cp keycloak/distribution/server-dist/target/keycloak-${KEYCLOAK_VERSION}.zip docker
	cd docker; unzip keycloak-${KEYCLOAK_VERSION}.zip;\
	rm keycloak-${KEYCLOAK_VERSION}.zip; \
	mv keycloak-${KEYCLOAK_VERSION} keycloak

docker-build:
	sudo docker build -t tacogips/keycloak-sandbox:latest ./docker

build: build-keycloak docker-build

