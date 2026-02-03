FROM python:3.10-slim-buster

WORKDIR /app

COPY . /app

RUN touch .project-root

RUN pip install -r requirements.txt

# Expose port for documentation (Render will use PORT env variable)
EXPOSE 8000

# Start uvicorn server - Render provides PORT environment variable
CMD uvicorn app:app --host 0.0.0.0 --port ${PORT:-8000}