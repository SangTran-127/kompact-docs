# Use an official Node.js image as a base image
FROM node:18

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json into the working directory
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of the application code into the working directory
COPY . .

# Expose the port Docusaurus runs on
EXPOSE 3000

# Default command to run the Docusaurus development server
CMD ["npm", "run", "start"]
