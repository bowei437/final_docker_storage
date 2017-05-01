FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
	git \
	python3.4 \
	python3-pip
#update pip
RUN pip3 install --upgrade pip
RUN apt-get install -y python3-dev nano build-essential
RUN git clone https://github.com/bowei437/final_docker_storage.git
WORKDIR final_docker_storage/sweb

RUN pip3 install -r requirements.txt
RUN pip3 install Flask-API

#download pymongo
RUN apt-get install -y mongodb
RUN pip install pymongo

#Expose port 8080 for testing
EXPOSE 5000
#start the server
CMD python3 -m swagger_server
