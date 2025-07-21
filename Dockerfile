FROM python:3.10-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Set working directory
WORKDIR /app

# Copy requirements
COPY requirements.txt .

# Install dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Copy rest of the project
COPY . .

# Streamlit runs on port 8501
EXPOSE 8501

# Run the app
CMD ["streamlit", "run", "app.py"]
