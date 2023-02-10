FROM python:3.8
WORKDIR /demo-python
# Install pipenv and compilation dependencies
RUN pip install pipenv
RUN apt-get update && apt-get install -y --no-install-recommends gcc
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

