FROM  python:3.11-slim
WORKDIR /app
COPY src/api/ .
RUN pip install --no-cache-dir -r requirements.txt
COPY models/trained/* models/trained/
EXPOSE 8000
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
# Use a lightweight Python image
# Set the working directory to /app
# Copy the current directory contents into the container at /app
# Install any needed packages specified in requirements.txt
# Make port 8000 available to the world outside this container
# Define environment variables
ENV PYTHONUNBUFFERED=1
# Run app.py when the container launches    
