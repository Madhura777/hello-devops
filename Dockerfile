# 1️⃣ Use a small official Python image
FROM python:3.11-slim

# 2️⃣ Set environment variables to prevent bytecode files and enable logs
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# 3️⃣ Create and switch to the working directory inside the container
WORKDIR /app

# 4️⃣ Copy requirement list and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 5️⃣ Copy the rest of your app code
COPY app.py .

# 6️⃣ Expose port 5000 so we can reach it from outside
EXPOSE 5000

# 7️⃣ Default command to run the app
CMD ["python", "app.py"]
