FROM postgres:latest
ENV POSTGRES_PASSWORD=secret
ENV POSTGRES_USER=username
ENV POSTGRES_DB=database
COPY scripts/init.sql /docker-entrypoint-initdb.d/init.sql
VOLUME data:/var/lib/postgresql/data