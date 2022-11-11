FROM node:14

RUN apt-get update && apt-get install -y \
    iputils-ping \
    iproute2 \
 && rm -rf /var/lib/apt/lists/*

ADD ./ /app
WORKDIR /app
EXPOSE 5001
CMD ["yarn", "start"]
