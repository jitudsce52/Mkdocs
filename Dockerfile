FROM python:3.8.1-alpine3.11
# Set build directory
WORKDIR /tmp
# Copy files necessary for build
COPY requirements.txt requirements.txt
COPY setup.py setup.py
# Perform build and cleanup artifacts
RUN \
  apk add --no-cache \
    git \
    git-fast-import \
    openssh \
    tar \
  && python setup.py install \
  && rm -rf /tmp/* \
  && pip install --no-cache-dir \
    'mkdocs-minify-plugin>=0.2' \
    'mkdocs-git-revision-date-localized-plugin>=0.4'
WORKDIR /
COPY docs.tar docs.tar
RUN tar -xvf docs.tar
RUN chmod -R 777 docs
EXPOSE 8000
ENTRYPOINT ["mkdocs"]
CMD ["serve", "--dev-addr=0.0.0.0:8000"]
