FROM gitpod/workspace-full

USER gitpod

RUN sudo apt-get update && sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

# Install Docker
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
RUN sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
RUN sudo apt-get update
RUN sudo apt-get install -y docker-ce docker-ce-cli containerd.io

# Allow the gitpod user to execute docker commands
RUN sudo usermod -aG docker gitpod
