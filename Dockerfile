# Build Phase
FROM node:alpine AS builder

WORKDIR /webapp

COPY package.json .
RUN npm install

COPY . .
RUN npm run build

# Run phase
FROM nginx
COPY --from=builder /webapp/build /usr/share/nginx/html
