# set the base image. Since we're running
# a Python application a Python base image is used
FROM python:3.10-alpine
WORKDIR /usr/src/app
COPY ./analytics ./
RUN pip install -r requirements.txt
CMD [ "python", "app.py" ]
