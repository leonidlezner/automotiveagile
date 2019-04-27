FROM debian:stable

RUN apt-get update && apt-get install -y graphviz doxygen default-jre

RUN apt-get install -y curl && \
    mkdir /app && \
    curl -L https://sourceforge.net/projects/plantuml/files/plantuml.1.2019.5.jar/download -o /app/plantuml.jar

WORKDIR "/home/workspace"

