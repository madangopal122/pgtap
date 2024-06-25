# Use the official Ubuntu base image
FROM ubuntu:latest

# Set environment variables to avoid interactive prompts during installation
ENV DEBIAN_FRONTEND=noninteractive

# Update the package list and install pgTAP
RUN apt-get update && apt-get install -y \
    pgtap

# Clean up APT when done
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /pgtap

# Copy the current directory contents into the container at /app
COPY . /pgtap

# Run a command to verify the container setup (optional)
CMD ["/bin/bash"]
