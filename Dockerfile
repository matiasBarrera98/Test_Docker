# Use an official Python runtime as the base image
FROM python:3.10

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY ./requirements.txt /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir --upgrade -r requirements.txt

EXPOSE 8501

# Define the command to run your app using streamlit
CMD ["streamlit", "run", "--server.runOnSave", "true", "app.py"]