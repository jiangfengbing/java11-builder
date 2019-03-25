FROM adoptopenjdk/openjdk11-openj9

RUN \
  apt update \
  && apt install -y wget unzip \
  && wget https://services.gradle.org/distributions/gradle-4.10.3-bin.zip \
  && unzip gradle-4.10.3-bin.zip -d /opt \
  && rm gradle-4.10.3-bin.zip \
  && rm -rf /var/cache/apt
ENV GRADLE_HOME="/opt/gradle-4.10.3"
ENV PATH="${PATH}:/opt/gradle-4.10.3/bin"
