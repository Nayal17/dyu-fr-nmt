FROM --platform=linux/amd64 python:3.11.9

WORKDIR /app

# Dependencies
COPY ./requirements.txt .
RUN pip install --no-cache-dir  -r requirements.txt

# Trained model and definition with main script
COPY ./saved_model /app/saved_model
COPY ./main.py /app/main.py

# Set entrypoint
ENTRYPOINT ["python", "-m", "main"]