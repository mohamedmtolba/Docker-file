# Use an official Nginx image as the base image
FROM nginx:alpine

# Set the maintainer label
LABEL maintainer="Mohamed Mahmoud Tolba <mohamedtolba038@gmail.com>"

# Copy the HTML file to the Nginx HTML directory
COPY index.html /usr/share/nginx/html/index.html

# Copy the README file to the Nginx HTML directory
COPY README.md /usr/share/nginx/html/README.md

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
