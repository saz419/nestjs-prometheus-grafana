# Use the official Node.js 14 image as the base image
FROM node:14-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the source code to the container
COPY . .

# Build the application
RUN npm run build

# Expose the port that the server will listen on
EXPOSE 3002

# Run the server
CMD [ "npm", "start" ]

