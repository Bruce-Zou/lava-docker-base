# lava-docker-baseinstall
Deploying LAVA in a docker image 

Run the container
```
  sudo docker run -t -i -p 8000:80 --privileged=true akbennett/lava:lava-on-sid

  # --privileged=true is necessary to mount an image (uses loopback) within the container
```

# Interesting docker hub tags
* akbennett/lava:lava-on-sid  # LAVA installed clean on Debian sid
* akbennett/lava:debian-sid  # Base Debian sid image
