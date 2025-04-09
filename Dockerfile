FROM alpine:latest

# Install nginx
RUN apk --no-cache add nginx

# Copy custom HTML file to nginx's default directory
COPY index.html /usr/share/nginx/html/index.html
COPY default.conf /etc/nginx/http.d/default.conf

# Expose port 80
EXPOSE 80

# Run nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
