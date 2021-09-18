inherit kernel-balena

FILESEXTRAPATHS_prepend := "${THISDIR}/files:${THISDIR}/odyssey-x86:"


SRC_URI_append_odyssey-x86 += " \
    file://odyssey_x86_balena.cfg \
    file://defconfig \
"

BALENA_CONFIGS_append_odyssey-x86 = " igc"

BALENA_CONFIGS_remove_odyssey-x86 = "overlayfs"

BALENA_CONFIGS_append_odyssey-x86  = " aufs"