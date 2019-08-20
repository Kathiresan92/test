FROM python:2.7

ENV  HTTPS_PROXY=http://gate.zrh.swissre.com:8080/
ENV  HTTP_PROXY=http://gate.zrh.swissre.com:8080/
ENV  http_proxy=http://gate.zrh.swissre.com:8080/
ENV  https_proxy=http://gate.zrh.swissre.com:8080/

COPY . /app
WORKDIR /app
RUN pip install --trusted-host pypi.python.org --trusted-host files.pythonhosted.org --trusted-host pypi.org -r requirements.txt
ENTRYPOINT ["python"]
CMD ["app.py"]
