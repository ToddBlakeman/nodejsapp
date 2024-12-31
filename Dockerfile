# Use the latest version of alpine v23, official node image
FROM node:23-alpine
# Set the working directory in the container
WORKDIR /usr/src/app
# Copy package.json and package-lock.json into the container
COPY package*.json .
# Install the required dependancies
RUN npm install
# Copy the source code into the container
COPY . .
# Expose port 3000 for the app to run on
EXPOSE 3000
# Start the app
CMD ["node", "app.js"]