# Docker image of a running solr instance for dovecot
This repo contains a running instance of solr optimized for dovecot.

This image is based on this work : https://github.com/lmm-git/docker-dovecot-solr

## Build architecture
The images are automatically build at the docker hub: https://hub.docker.com/r/nicolaznk/docker-dovecot-solr

## Tested with

* dovecot 2.2.27 on Debian 9 Strech

## First steps
Before you start please note the two main problems with this docker image:

1. This image contains a solr instance which is not compatible to all versions of dovecot by default; up to date versions should work out of the box
2. This image **does not** support any authentication or encryption

### Installation of solr

Simply execute

```bash
docker run -d -p 8983:8983 -e SOLR_HEAP=1024m -v dovecot-solr-data:/opt/solr/server/solr/dovecot/data nicolaznk/dovecot-solr:latest
```
on your server running `dovecot`

Afterwards you can access the solr admin panel at http://127.0.0.1:8983/solr

### Reindex mailbox

```bash
doveadm fts rescan -u <username>
```
