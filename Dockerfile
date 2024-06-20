# Start with the official Python image
FROM python:3.2

# Set the working directory
WORKDIR /data

# Install Django
RUN pip install django==3.2

# Copy the current directory contents into the container at /data
COPY . .

# Apply Django migrations
RUN python manage.py migrate

# Expose port 8000
EXPOSE 8000

# Run the Django development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
