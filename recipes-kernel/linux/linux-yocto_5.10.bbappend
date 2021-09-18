FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI_append_odyssey-x86 += " \
    file://d2cbbf1fe503c07e466c62f83aa1926d74d15821.patch \
    file://fake_initramfs.cpio \
"
