FROM python:3

RUN pip3 install --quiet cihai-cli==0.5.0
RUN cihai --version

# Download Unihan Database
RUN set -eux; \
  mkdir -p /root/.cache/unihan_etl/downloads; \
  wget --quiet -O /root/.cache/unihan_etl/downloads/Unihan.zip \
    https://www.unicode.org/Public/13.0.0/ucd/Unihan.zip; \
  cihai info 好 >/dev/null; \
  rm /root/.cache/unihan_etl/downloads/Unihan.zip
