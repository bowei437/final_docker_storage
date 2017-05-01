FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y python3-dev python3-pip git nano
RUN git clone https://github.com/ldev-r3-t4/storage_server.git
WORKDIR storage_server/web

RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt
RUN pip3 install Flask-API

#download pymongo
RUN apt-get install -y mongodb
RUN pip install pymongo

#Expose port 8080 for testing
EXPOSE 5000
#start the server
CMD python3 -m swagger_server
