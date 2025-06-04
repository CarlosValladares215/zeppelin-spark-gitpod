FROM gitpod/workspace-full

# Java 8
RUN sudo apt update && sudo apt install -y openjdk-8-jdk

# Scala 2.12.15
RUN sudo apt install -y scala

# curl, tar
RUN sudo apt install -y curl tar

# Docker CLI para Gitpod
RUN sudo apt install -y docker-compose
