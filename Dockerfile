# This line of code specifies the base image for the Docker container
# It uses Python version 3.8 and the slim version of the Debian Buster distribution
FROM python:3.8-slim-buster

# This line sets the working directory for the container to /app
WORKDIR /app

# This line copies the requirements.txt file from the host machine to the container
COPY requirements.txt requirements.txt

# This line installs the dependencies listed in requirements.txt using pip3
RUN pip3 install -r requirements.txt

# This line copies all files from the host machine to the container
COPY . .

# This line specifies the command to run when the container starts
# It runs the Flask development server with host set to 0.0.0.0, which allows external access
CMD ["python3", "-m", "flask", "run", "--host:0.0.0.0"]
