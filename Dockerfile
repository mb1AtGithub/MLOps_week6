#Use official python base image
FROM python:3.10-slim

#SET Working Dir
WORKDIR /app

#Copy Files
COPY . /app

#Install Dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port
EXPOSE 8200

#Command to run the server
CMD ["uvicorn", "iris_fastapi:app", "--host", "0.0.0.0", "--port", "8200"]