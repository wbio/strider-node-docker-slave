# strider-node-docker-slave

This Dockerfile uses the [strider-docker-slave](https://github.com/Strider-CD/strider-docker-slave) image as a base and applies an update to node to move it to the latest stable version (by default, the `strider-docker-slave` image uses node 0.10)

## Usage

```shell
git clone https://github.com/wbio/strider-node-docker-slave.git
cd strider-node-docker-slave
docker build -t my-docker-slave .
```
You can then use this as the base image for projects running with the [stride-docker-runner](https://github.com/Strider-CD/strider-docker-runner). 

Alternatively, I have [forked](https://github.com/wbio/strider-docker-runner) the `strider-docker-runner` repo to add some additional functionality, including the ability to use a different default image for Docker containers (+fix an issue that stops `npm install` from running during tests). To use your newly-created image as the default with that runner (assuming you have it installed), set the `STRIDER_DOCKER_IMAGE` environment variable:

```
STRIDER_DOCKER_IMAGE=my-docker-slave
```