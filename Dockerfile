FROM ubuntu:14.04
RUN echo "Hello world L-1" > /tmp/hello_world.txt
RUN echo $SECRET-USERNAME > /tmp/secrets.txt
RUN echo $SECRET-PASSWORD > /tmp/secrets.txt
CMD ["bash", "-c", "stdbuf -o 0 cat /tmp/hello_world.txt; tail -f /dev/null"]
CMD ["bash", "-c", "stdbuf -o 0 cat /tmp/secrets.txt; tail -f /dev/null"]
