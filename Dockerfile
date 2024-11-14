FROM nginx:alpine

# Copy HTML and script files
COPY index.html /usr/share/nginx/html/index.html
COPY start.sh /start.sh

# Make the script executable
RUN chmod +x /start.sh

# Run the start script
CMD ["/start.sh"]
