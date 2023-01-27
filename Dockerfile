FROM python:3
WORKDIR /demo-python
COPY requirements.txt /demo-python
RUN pip install -r requirements.txt
COPY . /demo-python

