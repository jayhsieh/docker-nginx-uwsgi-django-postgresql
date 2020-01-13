FROM python:3.7.6
LABEL maintainer jayhsieh
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
RUN mkdir /temp
WORKDIR /code
COPY . /code/
RUN pip install -r requirements.txt
