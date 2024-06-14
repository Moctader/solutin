# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose any ports the app needs
# EXPOSE 8080  # Uncomment and modify if your application needs to expose ports

# Run your Python script
CMD ["python", "kubernetes-client-script.py"]  # Replace with your actual script name
