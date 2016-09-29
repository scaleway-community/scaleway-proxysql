## -*- docker-image-name: "scaleway/proxysql:latest" -*-
FROM scaleway/ubuntu:amd64-xenial
# following 'FROM' lines are used dynamically thanks do the image-builder
# which dynamically update the Dockerfile if needed.
#FROM scaleway/ubuntu:armhf-xenial       # arch=armv7l
#FROM scaleway/ubuntu:arm64-xenial       # arch=arm64
#FROM scaleway/ubuntu:i386-xenial        # arch=i386
#FROM scaleway/ubuntu:mips-xenial        # arch=mips


MAINTAINER Scaleway <opensource@scaleway.com> (@scaleway)


# Prepare rootfs for image-builder
RUN /usr/local/sbin/builder-enter


ENV DEBIAN_FRONTEND=noninteractive

# Install packages
RUN apt-get -q update \
 && echo "O" | apt-get -y -q upgrade \
	# add packages here
 && apt-get clean

# Patch rootfs
COPY ./overlay ./overlay-${ARCH} /


# Clean rootfs from image-builder
RUN /usr/local/sbin/builder-leave
