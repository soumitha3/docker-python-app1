# Use a lightweight Python image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy dependency file and install
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copy all app files
COPY . .

# Run the app
CMD ["python", "app.py"]
