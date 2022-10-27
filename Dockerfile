FROM python:3.7.3-stretch

WORKDIR /app

COPY hello_udacity.py /app/
COPY requirements.txt /app/

# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install  --no-cache-dir --upgrade pip && \
    pip install  --no-cache-dir --trusted-host pypi.python.org -r requirements.txt


# Expose port 80
EXPOSE 80

# Run app at container launch
CMD ["python", "hello_udacity.py"]