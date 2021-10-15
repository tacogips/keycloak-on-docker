## build

```
git submodule init
git submodule update
make build
```


## docker push
docker push tacogips/keycloak-sandbox:latest


## About Docker image
## supported env vals
- DB_ADDR
- DB_PORT
- DB_USER
- DB_PASSWORD
- DB_DATABASE

## not supported env vals
- DB_VENDOR (only postgresql available)
- KEYCLOAK_USER
- KEYCLOAK_PASSWORD
- KEYCLOAK_FRONTEND_URL

# Link
https://github.com/keycloak/keycloak-containers

##  keycloack src
git submodule add https://github.com/tacogips/keycloak
