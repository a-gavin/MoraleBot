FROM node:16.13.2

# Install system dependencies
RUN set -x \
    && apt-get update \
    && apt-get -yq install git \
    && apt-get -yq clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && git --version && npm -v && node -v

# Create and move to package dir
RUN mkdir -p /opt/morale_bot
WORKDIR /opt/morale_bot

# Copy package info and install node dependencies
COPY *.json ./
RUN npm install

# Copy necessary code from repo
COPY assets assets
COPY commands commands
COPY database database
COPY events events
COPY *.js LICENSE ./

# Initialize config file using build args
ARG DISCORD_BOT_ID
ARG OWNER_ID
ARG MONGO_URI
ARG CLIENT_ID
COPY init_config.sh ./
RUN bash init_config.sh "${DISCORD_BOT_ID}" "${OWNER_ID}" "${MONGO_URI}""${CLIENT_ID}" \
    && rm init_config.sh

ENTRYPOINT [ "node", "index.js" ]