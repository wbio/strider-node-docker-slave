# Use the strider/strider-docker-slave image as the base
FROM strider/strider-docker-slave
MAINTAINER Will Bogey <will@bogey.co>

# Upgrade node to the latest stable version
RUN npm cache clean -f
RUN npm install -g n
RUN n stable
