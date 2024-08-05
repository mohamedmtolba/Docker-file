# Docker-file
# Dockerized HTML and README Project

This project demonstrates how to create a Docker image that includes an HTML file and a README file.

## Steps to Create the Docker Image

1. **Set up the Project Structure**

   Create a project directory with the following structure:

my-docker-project/
│
├── Dockerfile
├── index.html
└── README.md

2. **Create the Dockerfile**

Inside the `my-docker-project` directory, create a file named `Dockerfile` with the following content:
```Dockerfile
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

Build the Docker Image

Open a terminal and navigate to the project directory (my-docker-project). Run the following command to build the Docker image

docker build -t my-html-image .

Run the Docker Container

After building the Docker image, run the following command to start a Docker container from the image

docker run -d -p 80:80 my-html-image

    Access the HTML File

    Open a web browser and go to http://localhost to view the HTML file served by the Nginx server.

Files Included

    index.html: The HTML file to be served by the Nginx server.
    README.md: This file, which contains a summary of the steps to create and run the Docker image.

Maintainer

Mohamed Mahmoud Tolba mohamedtolba038@gmail.com

