# Use an official Node.js runtime as the base image
FROM node:slim

# Set the working directory in the Docker image
WORKDIR /usr/src/app

# Copy package.json and package-lock.json into the image
COPY package*.json ./

# Install the application's dependencies inside the Docker image
RUN npm install

# Copy the rest of the application into the Docker image
COPY . .

# Make port 3000 available outside the Docker container
EXPOSE 3000

# Start the application when the Docker container is run
CMD [ "npm", "start" ]