# Use Node.js LTS base image
FROM node:18

# Set working directory inside the container
WORKDIR /app

# Copy package.json and lock file
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy rest of the app
COPY . .

# Expose app port
EXPOSE 5000

# Start the app
CMD ["npm", "start"]
