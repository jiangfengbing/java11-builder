FROM debian:buster-20191118

RUN \
  apt update \
  && apt install -y wget unzip git openjdk-11-jdk-headless \
  && wget https://services.gradle.org/distributions/gradle-6.0.1-bin.zip \
  && unzip gradle-6.0.1-bin.zip -d /opt \
  && rm gradle-6.0.1-bin.zip \
  && rm -rf /var/cache/apt
ENV GRADLE_HOME="/opt/gradle-6.0.1"
ENV PATH="${PATH}:/opt/gradle-6.0.1/bin"
