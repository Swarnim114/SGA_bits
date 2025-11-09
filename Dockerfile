# Use official Nginx image as base
FROM nginx:alpine

# Set metadata
LABEL maintainer="devops-assignment"
LABEL description="DevOps Portfolio Web Application for Coursera Assignment"

# Copy HTML files to Nginx default directory
COPY index.html /usr/share/nginx/html/
COPY about.html /usr/share/nginx/html/
COPY contact.html /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
