FROM python:3.9
WORKDIR app
COPY . /app
RUN pip3 install -r requirements.txt
EXPOSE 8082
CMD ["python","app.py","runserver","0.0.0.0/8082"]
