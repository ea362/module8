# Use the official Playwright Python image as the base (matches the course requirements)
FROM mcr.microsoft.com/playwright/python:v1.47.0-noble

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file first (for better caching)
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Install Playwright browsers (required for E2E tests inside the container)
RUN playwright install

# Copy the rest of the application code into the container
COPY . .

# Create a non-root user (as recommended in the course notes)
RUN useradd -m -u 1000 appuser && chown -R appuser:appuser /app
USER appuser

# Expose the port the app runs on
EXPOSE 8000

# Command to run the FastAPI app with uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]