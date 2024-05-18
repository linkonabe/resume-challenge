
# Use the official Nginx image as the base image
FROM nginx:latest

# Copy HTML/CSS files to Nginx default public directory
COPY ./mycv /usr/share/nginx/html

# Copy SSL certificate and key files to Nginx configuration directory
COPY fullchain.pem /etc/nginx/certificate.crt
COPY privkey.pem /etc/nginx/private.key

# Expose port 80 for HTTP and port 443 for HTTPS
EXPOSE 80
EXPOSE 443

# Command to run Nginx
CMD ["nginx", "-g", "daemon off;"]
