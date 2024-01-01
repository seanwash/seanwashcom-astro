# Stage 1: Build the Astro app
FROM node:latest as build

WORKDIR /app

COPY package*.json ./

RUN npm install

# Copy the rest of your app's source code
COPY . .

RUN npm run build

# Stage 2: Serve the app with Caddy
FROM caddy:latest

COPY --from=build /app/dist /srv

COPY Caddyfile /etc/caddy/Caddyfile
