FROM python:3

# Set the working directory within the container
WORKDIR /app

# Copy the project files into the container
COPY . /app


# Activate the virtual environment and install dependencies
RUN pip install -r requirements.txt"

# Define the command to run your module
CMD [ "python", "-m", "WebStreamer" 
