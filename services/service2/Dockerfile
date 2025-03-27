FROM node:20

# Set the working directory inside the container
WORKDIR /app

# Copy only package.json and package-lock.json first to leverage Docker caching
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the application port (optional, for documentation purposes)
EXPOSE 3001

# Start the application
CMD ["node", "patient-service.js"]