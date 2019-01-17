FROM adoptopenjdk/openjdk11-openj9

RUN \
  apt update \
  && apt install -y wget unzip \
  && wget https://services.gradle.org/distributions/gradle-5.1.1-bin.zip \
  && unzip gradle-5.1.1-bin.zip -d /opt \
  && rm gradle-5.1.1-bin.zip \
  && rm -rf /var/cache/apt
ENV GRADLE_HOME="/opt/gradle-5.1.1"
ENV PATH="${PATH}:/opt/gradle-5.1.1/bin"
