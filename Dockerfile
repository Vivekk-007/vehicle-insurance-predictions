FROM python:3.10-slim-buster

WORKDIR /app

COPY . /app

RUN touch .project-root

RUN pip install -r requirements.txt

# Expose port (Render uses PORT environment variable)
EXPOSE 8000

# Start the application
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]
```

## **Solution 2: Add a Start Command in Render**

1. Go to your **Render Dashboard**
2. Click on your service
3. Go to **"Settings"**
4. Scroll to **"Start Command"** (or **"Docker Command"**)
5. Make sure it says:
```
   uvicorn app:app --host 0.0.0.0 --port 8000
```

## **Solution 3: Check Required Environment Variables**

The app might be crashing because of missing environment variables. Based on your code, you likely need:

**Go to Render Dashboard → Your Service → Environment tab** and add:
```
AWS_ACCESS_KEY_ID=your_key
AWS_SECRET_ACCESS_KEY=your_secret
AWS_REGION=us-east-1
MONGO_DB_URL=your_mongodb_url