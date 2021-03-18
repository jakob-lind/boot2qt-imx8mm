PACKAGE_ARCH = "${MACHINE_ARCH}"
RDEPENDS_${PN}_remove = "u-boot-fw-utils"
SRC_URI_remove = "file://cl-deploy.mtd"
COMPATIBLE_MACHINE = "raysafe-imx8mm"
