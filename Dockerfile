FROM python:3.7.3-stretch

WORKDIR /app

COPY . /app/

RUN pip install --no-cache-dir --upgrade pip &&\ 
    pip install --no-cache-dir --trusted-host pypi.python.org -r requirements.txt

EXPOSE 5000

CMD ["python", "app.py"]

