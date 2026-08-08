# Use the official Playwright Python image with matching version
FROM mcr.microsoft.com/playwright/python:v1.62.0-noble

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file first (for better caching)
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Playwright already has a non-root user (UID 1000) in the base image
# No need to create a new user—just use the existing one
USER pwuser

# Expose the port the app runs on
EXPOSE 8000

# Command to run the FastAPI app with uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]