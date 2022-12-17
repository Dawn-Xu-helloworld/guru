# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit meson

if [[ ${PV} != *9999* ]]; then
	SRC_URI="https://codeberg.org/dnkl/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"
	S="${WORKDIR}/${PN}"
else
	inherit git-r3
	EGIT_REPO_URI="https://codeberg.org/dnkl/${PN}.git"
fi

DESCRIPTION="Simplistic and highly configurable status panel for X and Wayland"
HOMEPAGE="https://codeberg.org/dnkl/yambar"
LICENSE="MIT"
SLOT="0"
IUSE="core +alsa +backlight +battery +clock +cpu +disk-io +dwl +foreign-toplevel +memory +mpd +i3 +label +network +pipewire +pulseaudio +removables +river +script sway-xkb wayland X xkb xwindow"
REQUIRED_USE="
	|| ( wayland X )
	sway-xkb? ( wayland )
	xkb? ( X )
	xwindow? ( X )
	|| ( alsa backlight )
"
# For some reason, if building CPU, memory or pipewire modules
# the build will fail if the alsa or backlight modules aren't present
# See https://codeberg.org/dnkl/yambar/issues/239

RDEPEND="
	>=media-libs/fcft-2.4.0
	dev-libs/libyaml
	alsa? ( media-libs/alsa-lib )
	backlight? ( virtual/libudev:= )
	battery? ( virtual/libudev:= )
	mpd? ( media-libs/libmpdclient )
	pipewire? (
			  dev-libs/json-c
			  media-video/pipewire
	)
	pulseaudio? ( media-libs/libpulse )
	removables? ( virtual/libudev:= )
	sway-xkb? ( dev-libs/json-c )
	x11-libs/pixman
	X? (
		x11-libs/libxcb:0=[xkb]
		x11-libs/xcb-util
		x11-libs/xcb-util-cursor
		x11-libs/xcb-util-wm
	)
	wayland? ( dev-libs/wayland )
"
DEPEND="${RDEPEND}"
BDEPEND="
	app-text/scdoc
	>=dev-libs/tllist-1.0.1
	>=dev-util/meson-0.53.0
	virtual/pkgconfig
	wayland? (
		dev-libs/wayland-protocols
		dev-util/wayland-scanner
	)
"

src_configure() {
	local emesonargs=(
		$(meson_feature wayland backend-wayland)
		$(meson_feature X backend-x11)
		$(meson_use core core-plugins-as-shared-libraries)
		$(meson_feature alsa plugin-alsa)
		$(meson_feature backlight plugin-backlight)
		$(meson_feature battery plugin-battery)
		$(meson_feature clock plugin-clock)
		$(meson_feature cpu plugin-cpu)
		$(meson_feature disk-io plugin-disk-io)
		$(meson_feature dwl plugin-dwl)
		$(meson_feature foreign-toplevel plugin-foreign-toplevel)
		$(meson_feature memory plugin-mem)
		$(meson_feature mpd plugin-mpd)
		$(meson_feature i3 plugin-i3)
		$(meson_feature label plugin-label)
		$(meson_feature network plugin-network)
		$(meson_feature pipewire plugin-pipewire)
		$(meson_feature pulseaudio plugin-pulse)
		$(meson_feature removables plugin-removables)
		$(meson_feature river plugin-river)
		$(meson_feature script plugin-script)
		$(meson_feature sway-xkb plugin-sway-xkb)
		$(meson_feature xkb plugin-xkb)
		$(meson_feature xwindow plugin-xwindow)
		-Dwerror=false
	)
	meson_src_configure
}

src_install() {
	meson_src_install
	rm -rf "${D}/usr/share/doc/${PN}"
}
