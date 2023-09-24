# Use the official Python image as the base image
FROM python:3.8-slim

# Set the working directory inside the container
WORKDIR /app

# Update the system's certificate store
RUN update-ca-certificates

# Copy the requirements file into the container
COPY requirements.txt .

# Install system packages necessary for SSL certificate verification
RUN apt-get update && apt-get install -y libssl-dev && apt-get clean

# Disable SSL certificate verification
RUN pip install --no-cache-dir --trusted-host pypi.org --trusted-host pypi.python.org --trusted-host=files.pythonhosted.org -r requirements.txt

# Copy the web server script into the container
COPY webserver.py .

# Expose port 4000 for the Flask application
EXPOSE 4000

# Define the command to run your application with Gunicorn
CMD ["gunicorn", "webserver:app", "-b", "0.0.0.0:4000"]