# Step 1: Use Node.js base image
FROM node:20.9

# Step 2: Set working directory inside the container
WORKDIR /Clips

COPY . .

# Step 4: Install dependencies
RUN npm install
RUN npm install --legacy-peer-deps
RUN npm install -g typescript
RUN npm install -g @angular/cli


# Step 8: Expose port 4200 for the Angular development server
EXPOSE 4200
EXPOSE 9876

# Step 7: Start the Angular app
CMD ["npm", "start"]
