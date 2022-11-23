#FROM node:10
#WORKDIR /app
#RUN npm install
#COPY . /app/
#EXPOSE 3000
#CMD [ "node", "app.js" ]

FROM python:3.7.3-stretch

WORKDIR /app

COPY . app.py /app/

# hadolint ignore=DL3013
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt

EXPOSE 3000

CMD ["python", "app.py"]