include conf/distro/include/fsl.inc
include conf/distro/include/fsl-imx-preferred-env.inc

# Remove conflicting backends
DISTRO_FEATURES_remove = "directfb x11 ptest"
DISTRO_FEATURES_append = " wayland"

# Remove extra QT5 layers
BBMASK += "\
	meta-freescale/dynamic-layers/qt5-layer/recipes-qt/qt5/ \
	meta-imx/meta-sdk/dynamic-layers/qt5-layer/recipes-qt/qt5/ \
"

# Use proper image types
IMAGE_FSTYPES += "ext3 wic"

# Setup QBSP content
QBSP_IMAGE_CONTENT ?= "\
	${IMAGE_LINK_NAME}.img \
	${IMAGE_LINK_NAME}.conf \
"
