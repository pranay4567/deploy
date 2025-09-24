# Use Node.js base image
FROM node:18

# Set work directory
WORKDIR /usr/src/app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install --only=production

# Copy app files
COPY . .

# Expose port
EXPOSE 3000

# Run app
CMD ["npm", "start"]
