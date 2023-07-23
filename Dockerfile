FROM python:3.9-bookworm

# working directory where the app will run
WORKDIR /app

COPY requirements.txt .

# run command to run everything inside txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code to the working directory
COPY . .

# Set the env variables for the flask app
ENV FLASK_RUN_HOST=0.0.0.0

# Expose the port on which the flask app will run
EXPOSE 5000

# Start the Flask app when the container is run
CMD ["flask", "run"]