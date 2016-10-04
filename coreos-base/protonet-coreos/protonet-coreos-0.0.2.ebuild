# Copyright (c) 2016 Protonet Inc. All rights reserved.
# Distributed under the terms of the GNU General Public License v2

EAPI=2

DESCRIPTION="Protonet's custom version of CoreOS (meta package)"
HOMEPAGE="https://protonet.com"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"

RDEPEND="coreos-base/coreos
	net-analyzer/tcpdump
	sys-fs/ntfs3g
	sys-fs/zfs
	sys-fs/zfs-kmod
	"
