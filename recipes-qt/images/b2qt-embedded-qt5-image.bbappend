include conf/distro/include/fsl.inc
include conf/distro/include/fsl-imx-preferred-env.inc

# Use proper image types
IMAGE_FSTYPES += "uboot-mxsboot-sdcard"

# Setup QBSP content
QBSP_IMAGE_CONTENT ?= "\
	${IMAGE_LINK_NAME}.img \
	${IMAGE_LINK_NAME}.conf \
"
