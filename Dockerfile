# Use official Node.js image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package files first (for caching)
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy remaining app files
COPY . .

# Expose port (change if your app uses different port)
EXPOSE 3000

# Start application
CMD ["npm", "start"]
