# Use an official Nginx runtime as a parent image
FROM nginx:alpine

# Copy the built application files to the Nginx web root directory
COPY . /usr/share/nginx/html

# Copy the Nginx configuration file to the container
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 4201
EXPOSE 4201

# Start the Nginx server
CMD ["nginx", "-g", "daemon off;"]
