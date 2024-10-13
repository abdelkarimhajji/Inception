#FROM debian:latest

#RUN apt update && apt upgrade -y && apt install -y nginx

#COPY default /etc/nginx/sites-available/



#CMD ["nginx", "-g", "daemon off;"]


FROM debian:latest

# Install updates, upgrades, and install nginx and openssl
RUN apt update && apt upgrade -y && apt install -y nginx openssl

# Create a directory for SSL certificates
RUN mkdir /etc/nginx/ssl

# Generate a self-signed SSL certificate
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/nginx/ssl/nginx.key \
    -out /etc/nginx/ssl/nginx.crt \
    -subj "/CN=localhost"

# Copy the custom nginx configuration file
COPY default /etc/nginx/sites-available/

# Enable SSL in the Nginx config
#RUN ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/

# Expose port 80 and 443 for HTTP and HTTPS
EXPOSE 443

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]

