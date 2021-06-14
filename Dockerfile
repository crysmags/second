#FROM python:3.8

#RUN apt-get update && \
 #   apt-get install -y && \
  #  pip3 install uwsgi

#COPY ./gameday /home/vagrant/gameday

#RUN python -m pip install --upgrade pip setuptools wheel
#RUN pip3 install -r /home/vagrant/gameday/requirements.txt

#ENV DJANGO_ENV=prod
#ENV DOCKER_CONTAINER=1

#EXPOSE 8000

#USER admin

# base image  
FROM python:3.8   
# setup environment variable  
ENV DockerHOME=/home/vagrant/gameday  

# set work directory  
RUN mkdir -p $DockerHOME  

# where your code lives  
WORKDIR $DockerHOME  

# set environment variables  
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1  
# install dependencies  
RUN pip install --upgrade pip  
# copy whole project to your docker home directory. COPY . $DockerHOME  
# run this command to install all dependencies  
RUN pip install -r requirements.txt  
# port where the Django app runs  
EXPOSE 8000  
CMD ["uwsgi", "--ini", "/home/vagrant/gameday/gameday_uwsgi.ini"]

