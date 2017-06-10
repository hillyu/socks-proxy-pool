FROM alpine:3.5

RUN apk add --no-cache python3 && \
    python3 -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip3 install --upgrade pip setuptools && \
    pip3 install requests[socks]&& \
    rm -r /root/.cache
ADD socksPool-start.sh /usr/local/bin
ADD socksChecker.py /root/
ADD socksPool.py /root/
ADD socks.txt /root/
ADD validSocks.txt /root/
ADD crontab.txt /root/
RUN chmod +x /usr/local/bin/socksPool-start.sh
#RUN /usr/bin/crontab /root/crontab.txt
WORKDIR /root

CMD ["socksPool-start.sh"]

EXPOSE 8080
