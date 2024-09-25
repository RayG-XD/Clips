# Step 1: Use Node.js base image
FROM node:20.9

# Step 2: Set working directory inside the container
WORKDIR /app

# Step 3: Copy package.json and package-lock.json
COPY package*.json ./

# Step 4: Install dependencies
RUN npm install

# Step 5: Install TypeScript, Angular globally
RUN npm install -g typescript
RUN npm install -g @angular/cli


# Step 6: Copy all other files into the container
COPY . .

# Step 7: Firebase configuration (ensure environment.ts is copied with valid Firebase credentials)
COPY src/environments/environment.ts /app/src/environments/environment.ts

# Step 8: Expose port 4200 for Angular development server
EXPOSE 4200

# Step 9: Start the Angular app
CMD ["npm", "run", "start"]
