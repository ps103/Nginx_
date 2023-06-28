#Use the official Nginx base image
FROM nginx:latest

LABEL maintainer="Priyanka Sharma <204priyankasharma@gmail.com>"
LABEL description="This example Dockerfile installs Search bar animation"


# Install git
RUN apt-get update && apt-get install -y git

# Clone the GitHub repository
ADD https://github.com/smthari/Frontend-Projects/blob/master/Search%20bar%20animation/index.html /usr/share/nginx/html

# Expose the default Nginx port
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]

LABEL maintainer="Priyanka Sharma <204priyankasharma@gmail.com>"
LABEL description="This example Dockerfile installs nodejs."

