FROM node:15.5.1
ENV LANG C.UTF-8
ENV APP_HOME /app
WORKDIR $APP_HOME
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    vim \
    less \
    tzdata \
    && apt-get clean \
    && rm -fr /var/lib/apt/lists/*
RUN yarn global add @vue/cli \
    RUN yarn global add firebase-tools
EXPOSE 3000