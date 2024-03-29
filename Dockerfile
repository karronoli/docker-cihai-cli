FROM python:3

RUN pip3 install --quiet cihai-cli==0.8.1
RUN cihai --version

# Download Unihan Database
RUN set -eux; \
  mkdir -p /root/.cache/unihan_etl/downloads; \
  wget --quiet -O /root/.cache/unihan_etl/downloads/Unihan.zip \
    https://www.unicode.org/Public/15.0.0/ucd/Unihan-15.0.0d1.zip; \
  cihai info 好 >/dev/null; \
  rm /root/.cache/unihan_etl/downloads/Unihan.zip
