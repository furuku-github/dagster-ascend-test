FROM python:3.12
WORKDIR /code 
COPY requirements.txt . 
RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt
RUN pip3 install dagster-webserver
COPY web-crawler.py .
COPY credential.json .
CMD ["dagster-webserver", "-f", "./web-crawler.py"]
EXPOSE 3000