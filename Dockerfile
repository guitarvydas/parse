# more detail: https://nodejs.org/en/docs/guides/nodejs-docker-webapp/

FROM node:latest
RUN npm -g install atob && \
    npm -g install pako && \
    npm -g install ohm-js && \
    export NODE_PATH=/usr/local/lib

COPY . .
RUN chmod a+x chooseCommand.bash

# target text: $1
# .ohm file: $2
# .glue file: $3
# support=$4
# tflag=$5
# vflag=$6

#ENTRYPOINT echo node parse.js $0 ; node parse.js $0
#ENTRYPOINT ["node", "parse.js"]
ENTRYPOINT ["./chooseCommand.bash"]


# docker build . --tag pfr
# docker run pfr
