#ARG BUILD_FROM
#FROM $BUILD_FROM
#
## Setup base
#ARG BUILD_ARCH
#ARG APP_AUTH_VERSION


FROM node:16.17-alpine
RUN npm install -g nodemon
WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .





#RUN \
#        hass-configurator=="${APP_AUTH_VERSION}" \

#    apk add --no-cache \
#        git \
#        openssh-client \
#        py3-pip \
#        python3 \
#    && pip3 install \
#        --no-cache-dir \
#        --prefer-binary \
#        --find-links "https://wheels.home-assistant.io/alpine-3.16/${BUILD_ARCH}/" \
#        hass-configurator=="${APP_AUTH_VERSION}" \
#    \
#    && find /usr/local \
#        \( -type d -a -name test -o -name tests -o -name '__pycache__' \) \
#        -o \( -type f -a -name '*.pyc' -o -name '*.pyo' \) \
#        -exec rm -rf '{}' +

# Copy data
#COPY rootfs /