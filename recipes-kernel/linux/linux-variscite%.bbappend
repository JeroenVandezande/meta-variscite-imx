FILESEXTRAPATHS:prepend := "${THISDIR}/linux-variscite:"

CUSTOM_DEVICETREE = "imx8mp-var-dart-xhead-tempest.dts"

SRC_URI += "\ 
    file://${CUSTOM_DEVICETREE} \
    "

do_configure:append() {
    # For arm64 bit freescale/NXP devices
    cp ${WORKDIR}/${CUSTOM_DEVICETREE} ${S}/arch/arm64/boot/dts/freescale
}