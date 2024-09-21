# 1. Use an official Node.js runtime as a parent image
FROM node:18

# 2. Set the working directory inside the container
WORKDIR /app

# 3. Copy the package.json and package-lock.json files
COPY package*.json ./

# 4. Install project dependencies
RUN npm install

# 5. Copy the rest of the application code
COPY . .

# 6. Expose the application port (3000 in our case)
EXPOSE 3000

# 7. Start the Node.js app
CMD ["node", "app.js"]