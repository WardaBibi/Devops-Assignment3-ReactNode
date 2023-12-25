# Use an official Node.js runtime as a parent imag
FROM node
# Use an official Node.js runtime as a parent image


# Set the working directory to /app
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Increase network timeout for npm
RUN npm config set fetch-retry-maxtimeout 60000

# Install any needed packages specified in package.json
RUN npm install

# Copy the backend code and configuration files
COPY . .

# Exclude the frontend directory (assuming your frontend is in /project/src)
RUN rm -rf src

# Expose port 8080 to the outside world
EXPOSE 8080

# Command to run the backend server
CMD ["npm", "start"]


# Set the working directory to /app
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install any needed packages specified in package.json
RUN npm install

# Copy the backend code and configuration files
COPY . .

# Exclude the frontend directory (assuming your frontend is in /project/src)
RUN rm -rf src

# Expose port 8080 to the outside world
EXPOSE 8080

# Command to run the backend server
CMD ["npm", "start"]
