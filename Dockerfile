#ARG BUILD_FROM
#FROM $BUILD_FROM
#
## Setup base
#ARG BUILD_ARCH
#ARG APP_AUTH_VERSION


#FROM node:18.15.0-alpine
FROM node:19-alpine
RUN npm install -g nodemon
WORKDIR /app

COPY package*.json ./

RUN npm install
#RUN nodemon
RUN #npm run dev
RUN #npm run start

COPY . .

ENV PORT=3006
EXPOSE 3005/tcp



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