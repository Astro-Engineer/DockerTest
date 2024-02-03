# Use a base image with C++ tools
FROM gcc:latest

# Set the working directory
WORKDIR /app

# Copy the C++ source code into the container
COPY . .

# Compile the C++ code
RUN g++ -o myapp main.cpp

# Define the command to run the application
CMD ["./myapp"]