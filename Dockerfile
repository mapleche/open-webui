FROM ghcr.io/open-webui/open-webui:main

WORKDIR /app/backend
RUN mkdir -p /app/backend/open_webui/static
RUN mkdir -p /app/backend/static
RUN mkdir -p /app/backend/data
RUN mkdir -p /app/cache
RUN mkdir -p /tmp

RUN apt-get update && apt-get install -y apache2-utils

RUN chmod -R 777 /app/backend/open_webui/static
RUN chmod -R 777 /app/backend/static
RUN chmod -R 777 /app/backend/data
RUN chmod -R 777 /app/cache
RUN chmod -R 777 /tmp
ENV PGSSLCERT /tmp/postgresql.crt
EXPOSE 8080

CMD ["bash", "start.sh"]
