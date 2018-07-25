FROM solr:latest
MAINTAINER Nicolas Lassalle <nicolas.lassalle@zenika.com>

ADD solr_core /opt/solr/server/solr/dovecot

USER root
RUN chown -R solr:solr /opt/solr/server/solr/dovecot

EXPOSE 8983
VOLUME ["/opt/solr/server/solr/dovecot/data"]
USER solr
