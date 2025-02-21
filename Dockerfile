FROM python:3.10-slim

# Set the working directory
WORKDIR /api 

# Install dependencies
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copy the source code
COPY api.py .

# Expose the port
EXPOSE 5555

# Run the application
CMD uvicorn api:app --host 0.0.0.0 --port 5555 
