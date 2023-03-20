FILESEXTRAPATHS:prepend := "${THISDIR}/linux-variscite:"

# Prevent the use of in-tree defconfig
unset KBUILD_DEFCONFIG

CUSTOM_DEVICETREE = "imx8mp-var-dart-xhead-tempest.dts"

SRC_URI += "\ 
    file://${CUSTOM_DEVICETREE} \
    "

do_configure:append() {
    # For arm32 bit devices
    # cp ${WORKDIR}/${CUSTOM_DEVICETREE} ${S}/arch/arm/boot/dts
    # For arm64 bit freescale/NXP devices
    cp ${WORKDIR}/${CUSTOM_DEVICETREE} ${S}/arch/arm64/boot/dts/freescale
}