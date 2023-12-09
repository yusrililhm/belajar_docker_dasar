FROM redis:7.2.3

# label
LABEL author="Yusril Ilham" web="https://yusrililhm.netlify.app"

# executed when build image
RUN echo 'hello world from run'

# copy command
COPY hello.txt /data

# executed when start docker container
CMD echo 'hello from cmd'
