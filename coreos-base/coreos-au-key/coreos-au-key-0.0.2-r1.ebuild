# Copyright (c) 2013 CoreOS Inc. All rights reserved.
# Distributed under the terms of the GNU General Public License v2

EAPI=5

DESCRIPTION="CoreOS auto update signing keys."
HOMEPAGE="http://github.com/coreos/"
SRC_URI=""
LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE="cros_host official"

# Do not enable offical and SDK at the same time,
# the SDK only needs developer keys.
REQUIRED_USE="?? ( cros_host official )"

# No source to unpack
S="${WORKDIR}"

src_install() {
	insinto /usr/share/update_engine
	newins "${FILESDIR}/protonet.pub.pem" update-payload-key.pub.pem
}
