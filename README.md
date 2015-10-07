# docker-awscli

[![](https://badge.imagelayers.io/dpatriot/docker-awscli:latest.svg)](https://imagelayers.io/?images=dpatriot/docker-awscli:latest 'Get your own badge on imagelayers.io')

Docker container with awscli optimized for runing on ec2.
IAM role loading automaticaly for ec2 instance from meta url.

using
=====
```
docker build -t dpatriot/docker-awscli:latest . 
docker run -ti --rm dpatriot/docker-awscli aws s3 ls
```

