FROM ktc_base
ADD . /usr/src/app
RUN npm build