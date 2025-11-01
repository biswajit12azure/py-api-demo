# Step 1: Use Python base image
FROM python:3.11-slim

# Create a non-root user
RUN useradd -m appuser

# Step 2: Set working directory
WORKDIR /app

# Step 3: Copy files
COPY . .

# Step 4: Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Step 5: Expose port
EXPOSE 5000

# Step 6: Run the app
CMD ["python", "app.py"]
