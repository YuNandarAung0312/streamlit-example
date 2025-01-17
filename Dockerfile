# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory 
WORKDIR /app

# Copy the current directory contents into the container 
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip3 install -r /app/requirements.txt

# Make port 8501 available to the world outside this container
EXPOSE 8501

# Run streamlit when the container launches and environment variable
ENTRYPOINT ["streamlit", "run", "app.py", "--server.port=8501"]
