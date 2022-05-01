FROM node:16.15.0
RUN curl -o- -L https://yarnpkg.com/install.sh | bash -s -- --version 1.22.17
RUN PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
RUN yarn
RUN mkdir -p /usr/src/app
# ADD .yarn_cache /usr/local/share/.cache/yarn/v1/
ADD ./package.json /usr/src/app
ADD ./hardhat.config.js /usr/src/app
# RUN cd /tmp && yarn
# RUN cd /usr/src/app && ln -s /tmp/node_modules 
# ADD . /usr/src/app/
WORKDIR /usr/src/app
RUN yarn

RUN ls
