FROM python:3.6-slim

COPY ./ /comic2pdf
WORKDIR /comic2pdf

RUN python setup.py install

ENTRYPOINT ["/usr/local/bin/python", "/comic2pdf/comic2pdf.py"]
