FROM python:3

# Set the working directory within the container
WORKDIR /app

# Copy the project files into the container
COPY . /app

# Create a virtual environment
RUN python -m venv venv

# Activate the virtual environment and install dependencies
RUN /bin/bash -c "source venv/bin/activate && pip install -r requirements.txt"

# Define the command to run your module
CMD [ "venv/bin/python", "-m", "WebStreamer" 
