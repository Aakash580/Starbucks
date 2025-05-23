# Use official Node.js image
FROM node:18

# Create app directory
WORKDIR /app

# Clone the repository (not needed in image, used during build only)
# COPY . copies the source code into the container
COPY . .

# Install app dependencies
RUN npm install

# Build the app (if applicable, remove if not needed)
# RUN npm run build

# Expose the port the app runs on
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
