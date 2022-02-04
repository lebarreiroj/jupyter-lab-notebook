FROM python:3.7.7-slim-buster

ARG PYTHON_DEPS=" \
    pyodbc==4.0.30 \
    "

COPY ./requirements.txt /requirements.txt

# Never prompt the user for choices on installation/configuration of packages
ENV DEBIAN_FRONTEND noninteractive
ENV TERM linux

RUN apt-get update -yqq \
    && apt-get upgrade -yqq \
    && apt-get install -yqq --no-install-recommends \
    unixodbc-dev \
    build-essential \
    default-libmysqlclient-dev \
    apt-utils \
    curl \
    locales \
    vim \
    gnupg \
    apt-transport-https \
    gcc \
    && curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add - \
    && curl https://packages.microsoft.com/config/debian/10/prod.list > /etc/apt/sources.list.d/mssql-release.list \
    && apt-get update -yqq \
    && ACCEPT_EULA=Y apt-get install -yqq msodbcsql17 \
    && if [ -n "${PYTHON_DEPS}" ]; then pip install ${PYTHON_DEPS}; fi \
    && pip install -r /requirements.txt \
    && sed -i 's,^\(MinProtocol[ ]*=\).*,\1'TLSv1.0',g' /etc/ssl/openssl.cnf \
    && sed -i 's,^\(CipherString[ ]*=\).*,\1'DEFAULT@SECLEVEL=1',g' /etc/ssl/openssl.cnf \
    && apt-get autoremove -yqq --purge \
    && apt-get clean

RUN mkdir notebooks
WORKDIR /notebooks

CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]