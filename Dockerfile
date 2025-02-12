# Use Debian as base image
FROM debian:latest

# Install required dependencies
RUN apt update && apt install -y curl

# Install Vale
RUN curl -fsSL https://vale.sh/install.sh | sh

# Expose API port
EXPOSE 7777

# Start Vale API
CMD ["vale", "--server", "--host", "0.0.0.0", "--port", "7777"]
