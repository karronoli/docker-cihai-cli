FROM python:3

RUN pip3 install --quiet cihai-cli==0.5.0
RUN cihai --version

# Download Unihan Database
RUN cihai info 好 >/dev/null
