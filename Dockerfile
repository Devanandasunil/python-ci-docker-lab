# Use official Python 3.11 slim image
FROM python:3.11-slim

# Set working directory inside the container
WORKDIR /app

# Copy Python project files
COPY requirements.txt .
COPY app.py .
COPY tests/ ./tests/

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Run tests to ensure everything works
# (Optional: remove this line if CI already runs pytest)
# RUN pytest -q tests

# Default command (can be changed)
CMD ["python", "app.py"]
