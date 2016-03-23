FROM node:latest

RUN apt-get update && apt-get install -y \
  openssh-server

ENV HOME /root
ADD start.sh ${HOME}/start.sh
RUN chmod +x ${HOME}/start.sh

CMD ["sh", "-c", "${HOME}/start.sh"]
