# Use minimal image
FROM node:18-alpine

# Create app directory
WORKDIR /app

# Copy only needed files
COPY app/package*.json ./

# Install dependencies
RUN npm install --only=production

# Copy app
COPY app/ .

# Create non-root user
RUN addgroup -S appgroup && adduser -S appuser -G appgroup

USER appuser

EXPOSE 3000

CMD ["node", "app.js"]