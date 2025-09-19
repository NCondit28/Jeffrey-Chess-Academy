# Use Node.js (LTS) as the base image
FROM node:18

# Create app directory
WORKDIR /app

# Copy package files (if you have them, otherwise this won’t break)
COPY package*.json ./

# Install dependencies (if package.json exists)
RUN npm install || true

# Copy the rest of your app (HTML, CSS, server.js, etc.)
COPY . .

# Expose port (Render sets $PORT automatically)
EXPOSE 3000

# Run your server
CMD ["node", "server.js"]
