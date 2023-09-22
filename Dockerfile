# Use an official TensorFlow runtime as a parent image
FROM tensorflow/tensorflow:latest
FROM python:3.8

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY resnet_client.py /app/

# Install any needed packages specified in requirements.txt
COPY requeriments.txt /app/
RUN pip install -r requeriments.txt
# RUN pip install -r requeriments.txt 

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME World

# Run resnet_client.py when the container launches
CMD ["python", "resnet_client.py"]

