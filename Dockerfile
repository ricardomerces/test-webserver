# Use official Python runtime as a parent image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy application code
COPY app.py .

# Install dependencies
RUN pip install --no-cache-dir flask

# Expose the port the app runs on (configured to 8080)
EXPOSE 8080

# Run the application
CMD ["python", "app.py"]