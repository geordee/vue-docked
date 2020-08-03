# build
FROM  node:14-buster-slim as builder

WORKDIR /build

# install dependencies
COPY package*.json ./
RUN npm install

# build for production
COPY . .
RUN npm run build

# package
FROM nginx:stable-alpine

COPY --from=builder /build/dist /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
