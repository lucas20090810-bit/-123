FROM node:20-alpine

WORKDIR /app

# Copy package.json and lock files
COPY package*.json ./
COPY pnpm-lock.yaml* ./

# Install dependencies checking for lockfile
RUN if [ -f pnpm-lock.yaml ]; then npm install -g pnpm && pnpm install; else npm install; fi

# Copy source code
COPY . .

# Build for production
RUN npm run build

# Expose the port the app runs on
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
