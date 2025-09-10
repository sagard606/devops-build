# Step 1: Build React app
FROM node:18 AS build

WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# Step 2: Serve with Nginx
FROM nginx:alpine

# Copy build output to Nginx html dir
COPY --from=build /app/build /usr/share/nginx/html

# Copy optional Netlify redirects config (if exists)
COPY _redirects /usr/share/nginx/html/_redirects

# Expose port 80
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
