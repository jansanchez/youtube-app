FROM jansanchez/youtube
MAINTAINER Jan Sanchez <joejansanchez@gmail.com>

# Setting Enviroment variables
ENV VERSION 1.0
ENV USER youtube
ENV PROJECT app
ENV HOME /home/$USER
ENV WD $HOME/$PROJECT/

# add user called ...
RUN useradd --user-group --create-home --shell /bin/false $USER

# copy package.json
COPY ./package.json $WD

RUN mkdir -p $WD

# change permissions
RUN chown -R $USER:$USER $HOME/*

# change user to server
USER $USER

RUN mkdir -p /tmp/shared/
RUN touch /tmp/shared/1.ini
RUN chown -R $USER:$USER /tmp/shared/*
RUN chmod -R 777 /tmp/shared/

# declare our WORKDIR
WORKDIR $WD

# install dependencies
RUN yarn install

# Expose default port
EXPOSE 3000

# exec "npm start"
CMD ["npm", "start"]
