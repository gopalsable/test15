# Use official Node.js runtime
FROM node:16-alpine

# Create app directory
WORKDIR /usr/src/app

# Copy package files and install dependencies
COPY package.json yarn.lock* package-lock.json* ./
RUN npm install --production

# Copy app source
COPY . .

# Expose the port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]