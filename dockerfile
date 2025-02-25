<<<<<<< HEAD
# Use Ubuntu as the base image
FROM ubuntu:latest

# Install Python and pip
RUN apt-get update && apt-get install -y python3 python3-pip

# Set the working directory inside the container
WORKDIR /app

# Copy the FastAPI application files
COPY . /app

# Install dependencies
RUN pip3 install --no-cache-dir -r requirements.txt

# Expose the port FastAPI runs on
EXPOSE 8000

# Command to run the FastAPI server
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
# Use Ubuntu as the base image
FROM ubuntu:latest

# Install Python and pip
RUN apt-get update && apt-get install -y python3 python3-pip

# Set the working directory inside the container
WORKDIR /app

# Copy the FastAPI application files
COPY . /app

# Install dependencies
RUN pip3 install --no-cache-dir -r requirements.txt

# Expose the port FastAPI runs on
EXPOSE 8000

# Command to run the FastAPI server
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
