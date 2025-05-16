# Use Node.js version 10
FROM node:10

# Create app directory
WORKDIR /usr/src/lafs

# Install app dependencies
# Copy package.json and package-lock.json
COPY package*.json ./

# Install Angular CLI globally and project dependencies
RUN npm install -g @angular/cli@v6-lts
RUN npm install

# Bundle app source
COPY . .

# Expose port 4200 for Angular development server
EXPOSE 4200

# Command to start the application
CMD ["ng", "serve", "--host", "0.0.0.0"]