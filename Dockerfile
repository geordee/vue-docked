# build
FROM  node:14-buster-slim as builder

WORKDIR /build
COPY . .
RUN npm install && npm run build

# package
FROM nginx

COPY --from=builder /build/dist /usr/share/nginx/html
