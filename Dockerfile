FROM python:3.10-slim-buster

WORKDIR /app

COPY . /app

# Create .project-root file for from_root package
RUN touch .project-root

RUN pip install -r requirements.txt

CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]