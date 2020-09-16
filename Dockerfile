FROM cloudron/base:2.0.0@sha256:f9fea80513aa7c92fe2e7bf3978b54c8ac5222f47a9a32a7f8833edf0eb5a4f4

# add supervisor configs
ADD supervisor/* /etc/supervisor/conf.d/
RUN ln -sf /run/supervisord.log /var/log/supervisor/supervisord.log

RUN mkdir -p /app/code
WORKDIR /app/code

COPY \
    ./tmp-deploy \
    /app/code/

CMD [ "/app/code/start.sh" ]

