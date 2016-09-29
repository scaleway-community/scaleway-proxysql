NAME =			proxySQL
VERSION =		latest
VERSION_ALIASES =	1.0
TITLE =			proxySQL
DESCRIPTION =		High-performance MySQL proxy.
DOC_URL =
SOURCE_URL =		https://github.com/scaleway-community/scaleway-proxysql
VENDOR_URL =		http://www.proxysql.com/
DEFAULT_IMAGE_ARCH =	x86_64


IMAGE_VOLUME_SIZE =	50G
IMAGE_BOOTSCRIPT =	latest
IMAGE_NAME =		ProxySQL


## Image tools  (https://github.com/scaleway/image-tools)
all:	docker-rules.mk
docker-rules.mk:
	wget -qO - https://j.mp/scw-builder | bash
-include docker-rules.mk
