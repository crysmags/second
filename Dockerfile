FROM python:3.8   

WORKDIR /app

# install dependencies  
RUN pip install --upgrade pip  
# copy whole project to your docker home directory. COPY . $DockerHOME  
# run this command to install all dependencies  
COPY requirements.txt /app/

RUN pip install -r requirements.txt  

COPY . . 
# port where the Django app runs  
EXPOSE 8000  
CMD ["ddtrace-run", "uwsgi", "--ini", "gameday_uwsgi.ini"]

