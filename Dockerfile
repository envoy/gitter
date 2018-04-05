FROM ruby:2.5.1

RUN sh -c "echo 'deb http://apt.postgresql.org/pub/repos/apt/ precise-pgdg main' > /etc/apt/sources.list.d/pgdg.list" && \wget --quiet -O - http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | apt-key add - && \
    curl -sL https://deb.nodesource.com/setup_9.x | sh && \
    apt-get update -qq && apt-get install -y git-core curl zlib1g-dev \
    liblzma-dev libgmp-dev build-essential libssl-dev libreadline-dev \
    libyaml-dev libxml2-dev libxslt1-dev libcurl4-openssl-dev \
    software-properties-common nodejs imagemagick libgdbm-dev \
    libncurses5-dev automake libtool bison libffi-dev make gcc ruby-dev \
    postgresql-common htop qt5-default libqt5webkit5-dev libpq-dev postgresql \
    postgresql-contrib postgresql-client libmagickwand-dev ghostscript

ENV APP_HOME /app
RUN mkdir $APP_HOME