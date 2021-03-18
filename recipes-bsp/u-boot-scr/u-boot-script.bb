LICENSE = "GPLv2+"
LIC_FILES_CHKSUM = "file://${WORKDIR}/README;md5=2456088a0455a82ac9e16b007de97c03"

DEPENDS = "u-boot-mkimage-native"

SRC_URI = "file://boot.script \
    file://README \
"

ALLOW_EMPTY_${PN} = "1"

do_compile() {
    sed "s/MACHINE/${MACHINE}/" ${WORKDIR}/boot.script > ${WORKDIR}/boot.in
    mkimage -C none -A arm -T script -d ${WORKDIR}/boot.in boot.scr
}

inherit deploy

do_deploy() {
    install -d ${DEPLOYDIR}
    install -m 0644 boot.scr ${DEPLOYDIR}
}

addtask do_deploy after do_compile before do_build

RPROVIDES_${PN} += "u-boot-script"

PACKAGE_ARCH = "${MACHINE_ARCH}"
COMPATIBLE_MACHINE = "raysafe-imx8mm"
