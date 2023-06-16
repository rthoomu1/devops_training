#This is a sample Image 
FROM ubuntu:kinetic 

RUN apt-get update 
RUN apt-get install –y nginx 
CMD [“echo”,”Image created”] 
# comment
