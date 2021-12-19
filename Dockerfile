FROM python:3.7.3-stretch

## Step 1:
# Create a working directory
WORKDIR /app

## Step 2:
# Copy source code to working directory
COPY . /app/

## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --upgrade pip && pip install --no-cache-dir -r requirements.txt

## Step 4:
# Expose port 80
# as 80 is not secured and I don't prefere to work with it, will open this port 
#   on Cloud9 instace security group
EXPOSE 5000

## Step 5:
# Run app.py at container launch
CMD ["python", "app.py"]

