# Use the official Python image as the base image
FROM python:3.9-slim

# Set the working directory to /app
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire app directory into the container
COPY . .

# Set the command to run the Flask app
CMD ["gunicorn","--bind","0.0.0.0:$PORT","main:app"]

