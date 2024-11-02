FROM node:20-alpine

LABEL maintainer="Soe Thura <thixpin@gmail.com>"
LABEL version="1.0"
LABEL description="This is a Dockerfile for a Node.js application."

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy app source code
COPY . .

# Build the app
RUN npm run build

# Expose the port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]

# Instruction to build the image
# docker build -t nextjs-app .
# docker run -p 3000:3000 -d --restart=always --name nextjs-app nextjs-app

