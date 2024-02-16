
COMPATIBLE_MACHINE:marvell-octeontx = "marvell-octeontx"

FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI:append:marvell-octeontx = " file://defconfig "
#KMACHINE:marvell-octeontx = "marvell-cn96xx"

KERNEL_EXTRA_FEATURES:append:mvista-cgx = " \
cfg/crypto-obsolete-disable.scc \
cfg/fs/btrfs.scc \
cfg/fs/devtmpfs.scc \
cfg/fs/ext4.scc \
cfg/net/bridge.scc \
cfg/net/ip6_nf.scc \
cfg/net/ip_nf.scc \
cfg/net/ipsec6.scc \
cfg/net/ipsec.scc \
cfg/net/ipv6.scc \
cfg/systemd.scc \
features/bpf/bpf.scc \
features/cgroups/cgroups.scc \
features/firmware/firmware.scc \
features/ftrace/ftrace.scc \
features/fuse/fuse.scc \
features/hrt/hrt.scc \
features/kgdb/kgdb.scc \
features/kprobes/kprobes.scc \
features/net_sched/net_sched.scc \
features/rfkill/rfkill.scc \
features/systemtap/systemtap.scc \
features/tmpfs/tmpfs-posix-acl.scc \
features/uprobe/uprobe.scc \
"
