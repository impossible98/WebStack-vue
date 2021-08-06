# Home

## Project setup
```
yarn install
```

### Compiles and hot-reloads for development
```
yarn serve
```

### Compiles and minifies for production
```
yarn build
```

### Lints and fixes files
```
yarn lint
```

## Docker

```
docker run --detach \
    --env PUID=1000 \
    --env PGID=1000 \
    --name home \
    --publish 10086:80 \
    --restart always \
    impossible98/home
```
