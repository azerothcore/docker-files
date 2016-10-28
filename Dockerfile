FROM  ubuntu:16.04

ENV AC_DIR     /usr/local/azerothcore
ENV AC_REPO    https://github.com/azerothcore/azerothcore-wotlk.git

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
  apt-get install -y \
	git \
	cmake \
	make \
	gcc \
	g++ \
	clang \
	libmysqlclient-dev \
	libssl-dev \
	libbz2-dev \
	libreadline-dev \
	libncurses-dev \
	mysql-server \
	libace-6.* \
	libace-dev

RUN mkdir -p $AC_DIR && \
  cd $TC_DIR && \
  git clone -b master --depth 1 $AC_REPO

ADD entrypoint.sh /etc/entrypoint.sh
RUN chmod +x /etc/entrypoint.sh

ENTRYPOINT  ["/etc/entrypoint.sh"]

ENV DEBIAN_FRONTEND newt

