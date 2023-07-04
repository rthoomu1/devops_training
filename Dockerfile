#This is a sample Image 
FROM ubuntu:22.10 

RUN apt-get update 
RUN apt-get install –y nginx 
CMD [“echo”,”Image created”] 
# comment
