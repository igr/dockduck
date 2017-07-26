FROM alpine:3.5

RUN set -ex \
    && echo "http://nl.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories \
    && apk update \
    && apk add --no-cache \
    tcpdump \
    bridge-utils \
    netcat-openbsd \
    util-linux \
    iptables \
    iputils \
    iproute2 \
    iftop \
    drill \
    apache2-utils \
    strace \
    curl \
    ethtool \
    ipvsadm \
    ngrep \
    iperf \
    nmap \
    conntrack-tools \
    bash \
    jq \
    vim \
    nano \
    git \
    tree \
    the_silver_searcher \
    python \
    py-pip \
    ca-certificates

RUN pip install --upgrade pip && \
    pip install httpie httpie-unixsocket && \
    rm -rf /var/cache/apk/*

# apparmor issue #14140
RUN mv /usr/sbin/tcpdump /usr/bin/tcpdump

ADD scripts/netgen.sh /usr/local/bin/netgen
ADD scripts/entrypoint.sh /opt/entrypoint.sh

ENTRYPOINT [ "/opt/entrypoint.sh"]
CMD "bash"
