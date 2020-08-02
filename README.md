# Vue.js App in Docker

## Project setup
```
npm install
```

### Compiles and hot-reloads for development
```
npm run serve
```

### Compiles and minifies for production
```
npm run build
```

### Lints and fixes files
```
npm run lint
```

### Build Docker image
```
docker build -t vue/demo:latest .
```

### Run Docker image
```
docker run -d --name vue-demo -p 8000:80 vue/demo
```

### Test
```
curl localhost:8000
```
