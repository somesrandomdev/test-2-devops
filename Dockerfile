# Use Node LTS base image
FROM node:lts

# Set working directory
WORKDIR /app

# Copy necessary files
COPY package.json package-lock.json ./
COPY server.js ./

# Install dependencies
RUN npm install

# Expose port 3000
EXPOSE 3000

# Command to run the app
CMD ["node", "server.js"]