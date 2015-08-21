# docker-awscli
Docker container with awscli optimized for runing on ec2.
IAM role loading automaticaly for ec2 instance from meta url.

Using
====
docker build -t dpatriot/docker-awscli:latest . 
docker run -ti --rm dpatriot/docker-aws-cli aws s3 ls

