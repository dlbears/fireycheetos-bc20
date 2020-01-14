FROM openjdk:8u232-jdk-slim-buster

COPY . /usr/src/myapp
WORKDIR /usr/src/myapp

SHELL ["/bin/bash", "-c"]

RUN useradd derp
RUN mkdir /home/derp
RUN chmod -R 777 /home/derp

RUN ["apt-get", "update"]
RUN ["apt-get", "-y", "install", "build-essential", "clang", "libdbus-1-dev", "libgtk-3-dev", \
                       "libnotify-dev", "libcanberra-gtk-module", "libcanberra-gtk3-module", \
                       "libasound2-dev", "libcap-dev", "libcups2-dev", "libxtst-dev", \
                       "libxss1", "libnss3-dev", "gcc-multilib", "g++-multilib", "curl", "webcamoid-plugins" ]

RUN ./gradlew update
RUN ./gradlew build

RUN chmod -R 777 /usr/src/myapp
RUN chown root:root /usr/src/myapp/client/chrome-sandbox
RUN chmod 4755 /usr/src/myapp/client/chrome-sandbox
