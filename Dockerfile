# Use nginx to serve static website
FROM nginx:alpine

# Set working directory (optional)
WORKDIR /usr/share/nginx/html

# Remove default nginx static files
RUN rm -rf ./*

# Copy your portfolio files (index.html, style.css, script.js, etc.)
COPY . .

# Expose port 80
EXPOSE 80

# Start nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
