FROM ubuntu

# Install git
RUN apt-get update
RUN apt-get install -y git

# Install docker: https://docs.docker.com/engine/install/ubuntu/
RUN apt-get update 
RUN apt-get install -y apt-transport-https ca-certificates curl gnupg lsb-release

RUN  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

RUN echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null

RUN apt-get update
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get install docker-ce docker-ce-cli containerd.io --yes

COPY . .
RUN chmod +x buildAndPush.sh

ADD "https://www.random.org/cgi-bin/randbyte?nbytes=10&format=h" skipcache
ENTRYPOINT ["./buildAndPush.sh"]
