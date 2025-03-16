# Base image with Node.js
FROM node:18-alpine

# Create app directory
WORKDIR /app

# Copy the API directory
COPY api/ ./api/

# Set working directory to the API folder
WORKDIR /app/api

# Install dependencies
RUN npm install

# Build the application
RUN npm run clean 
RUN npm run build

# Expose the application port
EXPOSE 3000

# Start the application using the start:env script
CMD ["npm", "run", "start:envDocker"]