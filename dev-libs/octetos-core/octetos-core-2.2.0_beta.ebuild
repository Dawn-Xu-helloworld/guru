# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit autotools

DESCRIPTION="C/C++ library to mainly provide Semantic Versioned implementation"
HOMEPAGE="https://github.com/azaeldevel/octetos-core"
SRC_URI="https://github.com/azaeldevel/octetos-core/archive/2.2.0-beta.3.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND="
	>=sys-devel/gcc-8.1
	>=sys-devel/bison-3.1
	dev-libs/libconfig
"

src_unpack() {
	default
	ln -s octetos-core-2.2.0-beta.3 "${P}"
}

src_prepare() {
	eautoreconf -fi
	eapply_user
}

src_configure() {
	if [[ -x ${ECONF_SOURCE:-.}/configure ]] ; then
		econf
	fi
}

src_compile() {
	if [ -f Makefile ] || [ -f GNUmakefile ] || [ -f makefile ]; then
		emake || die "emake failed"
	fi
}
