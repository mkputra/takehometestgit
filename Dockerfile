FROM ubuntu:20.04

# Install necessary packages
RUN apt-get update && \
    apt-get install -y iproute2 iptables iputils-ping strongswan  xl2tpd wireguard-tools vim && \
    apt-get clean

# Set environment variable
ENV DEBIAN_FRONTEND=noninteractive
RUN echo "net.ipv4.ip_forward=1" >> /etc/sysctl.conf && \
    sysctl -p

# Start a bash shell
CMD ["tail", "-f","/dev/null"]
