# Copyright 2022-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Autogenerated by pycargoebuild 0.6

EAPI=8

CRATES="
	addr2line-0.19.0
	adler-1.0.2
	ahash-0.8.1
	aho-corasick-0.7.18
	android_system_properties-0.1.4
	anes-0.1.6
	ansi_term-0.12.1
	anstream-0.3.1
	anstyle-1.0.0
	anstyle-parse-0.2.0
	anstyle-query-1.0.0
	anstyle-wincon-1.0.1
	anyhow-1.0.70
	arc-swap-1.5.0
	arrayvec-0.7.2
	askalono-0.4.6
	atoi-2.0.0
	atty-0.2.14
	autocfg-1.1.0
	backtrace-0.3.67
	base64-0.21.0
	bit_field-0.10.1
	bitflags-1.3.2
	bitflags-2.2.1
	block-buffer-0.10.3
	bstr-0.2.17
	bstr-1.3.0
	btoi-0.4.3
	bumpalo-3.12.0
	byte-unit-4.0.19
	bytecount-0.6.3
	bytemuck-1.13.1
	byteorder-1.4.3
	bytesize-1.1.0
	cargo_toml-0.15.2
	cast-0.3.0
	castaway-0.2.2
	cc-1.0.73
	cfg-if-1.0.0
	chrono-0.4.22
	chrono-tz-0.6.1
	chrono-tz-build-0.0.2
	ciborium-0.2.0
	ciborium-io-0.2.0
	ciborium-ll-0.2.0
	clap-2.34.0
	clap-3.2.23
	clap-4.2.4
	clap_builder-4.2.4
	clap_complete-4.1.4
	clap_derive-4.2.0
	clap_lex-0.2.4
	clap_lex-0.4.1
	clru-0.6.1
	cmake-0.1.48
	color_quant-1.1.0
	colorchoice-1.0.0
	compact_str-0.6.1
	console-0.15.5
	core-foundation-sys-0.8.3
	cpufeatures-0.2.5
	crc-3.0.0
	crc-catalog-2.1.0
	crc32fast-1.3.2
	criterion-0.4.0
	criterion-plot-0.5.0
	crossbeam-0.8.2
	crossbeam-channel-0.5.4
	crossbeam-deque-0.8.1
	crossbeam-epoch-0.9.8
	crossbeam-queue-0.3.8
	crossbeam-utils-0.8.8
	crunchy-0.2.2
	crypto-common-0.1.6
	ctor-0.1.22
	dashmap-4.0.2
	dashmap-5.3.3
	deunicode-0.4.3
	diff-0.1.13
	digest-0.10.5
	dirs-3.0.2
	dirs-4.0.0
	dirs-sys-0.3.7
	dunce-1.0.3
	either-1.6.1
	enable-ansi-support-0.2.1
	encode_unicode-0.3.6
	encoding_rs-0.8.31
	encoding_rs_io-0.1.7
	env_logger-0.8.4
	erased-serde-0.3.24
	errno-0.2.8
	errno-0.3.1
	errno-dragonfly-0.1.2
	exr-1.5.2
	fastrand-1.9.0
	filetime-0.2.16
	flate2-1.0.25
	flume-0.10.12
	fnv-1.0.7
	form_urlencoded-1.0.1
	fs_extra-1.2.0
	futures-core-0.3.21
	futures-sink-0.3.21
	generic-array-0.14.6
	getrandom-0.2.8
	ghost-0.1.7
	gif-0.12.0
	gimli-0.27.2
	git2-0.17.1
	gix-0.44.1
	gix-actor-0.17.2
	gix-actor-0.20.0
	gix-attributes-0.12.0
	gix-attributes-0.8.3
	gix-bitmap-0.2.3
	gix-chunk-0.4.1
	gix-command-0.2.4
	gix-config-0.22.0
	gix-config-value-0.12.0
	gix-credentials-0.14.0
	gix-date-0.4.3
	gix-date-0.5.0
	gix-diff-0.29.0
	gix-discover-0.13.1
	gix-discover-0.18.0
	gix-features-0.26.5
	gix-features-0.29.0
	gix-fs-0.1.1
	gix-glob-0.5.5
	gix-glob-0.7.0
	gix-hash-0.10.3
	gix-hash-0.11.1
	gix-hashtable-0.1.1
	gix-hashtable-0.2.0
	gix-ignore-0.2.0
	gix-index-0.12.4
	gix-index-0.16.0
	gix-lock-3.0.2
	gix-lock-5.0.1
	gix-mailmap-0.12.0
	gix-object-0.26.2
	gix-object-0.29.1
	gix-odb-0.45.0
	gix-pack-0.35.0
	gix-path-0.7.4
	gix-path-0.8.0
	gix-prompt-0.5.0
	gix-quote-0.4.3
	gix-ref-0.24.1
	gix-ref-0.29.0
	gix-refspec-0.10.1
	gix-revision-0.13.0
	gix-sec-0.6.2
	gix-sec-0.8.0
	gix-tempfile-3.0.2
	gix-tempfile-5.0.3
	gix-testtools-0.11.0
	gix-traverse-0.22.1
	gix-traverse-0.25.0
	gix-url-0.18.0
	gix-utils-0.1.1
	gix-validate-0.7.4
	gix-worktree-0.12.3
	gix-worktree-0.17.0
	globset-0.4.8
	globwalk-0.8.1
	grep-matcher-0.1.5
	grep-searcher-0.1.8
	half-1.8.2
	half-2.1.0
	hashbrown-0.12.3
	hashbrown-0.13.1
	heck-0.4.0
	hermit-abi-0.1.19
	hermit-abi-0.3.1
	hex-0.4.3
	home-0.5.5
	human-panic-1.1.4
	human_format-1.0.3
	humansize-1.1.1
	humantime-2.1.0
	iana-time-zone-0.1.46
	idna-0.2.3
	ignore-0.4.18
	image-0.24.6
	imara-diff-0.1.5
	indexmap-1.9.1
	insta-1.29.0
	instant-0.1.12
	inventory-0.3.3
	io-close-0.3.7
	io-lifetimes-1.0.10
	is-terminal-0.4.7
	is_ci-1.1.1
	itertools-0.10.5
	itoa-1.0.4
	jobserver-0.1.24
	jpeg-decoder-0.3.0
	js-sys-0.3.60
	jwalk-0.8.1
	kstring-2.0.0
	lazy_static-1.4.0
	lebe-0.5.2
	libc-0.2.142
	libgit2-sys-0.15.1+1.6.4
	libz-ng-sys-1.1.8
	libz-sys-1.1.8
	linked-hash-map-0.5.6
	linux-raw-sys-0.1.3
	linux-raw-sys-0.3.4
	lock_api-0.4.7
	log-0.4.17
	lzma-sys-0.1.19
	matches-0.1.9
	memchr-2.5.0
	memmap2-0.3.1
	memmap2-0.5.3
	memoffset-0.6.5
	minimal-lexical-0.2.1
	miniz_oxide-0.6.2
	nanorand-0.7.0
	nom-7.1.1
	npm-package-json-0.1.3
	num-format-0.4.4
	num-integer-0.1.45
	num-rational-0.4.0
	num-traits-0.2.15
	num_cpus-1.13.1
	num_threads-0.1.6
	object-0.30.3
	once_cell-1.17.1
	oorandom-11.1.3
	os_info-3.7.0
	os_str_bytes-6.0.1
	output_vt100-0.1.3
	owo-colors-3.5.0
	parking_lot-0.11.2
	parking_lot-0.12.1
	parking_lot_core-0.8.5
	parking_lot_core-0.9.3
	parse-zoneinfo-0.3.0
	paste-1.0.7
	percent-encoding-2.1.0
	pest-2.4.0
	pest_derive-2.4.0
	pest_generator-2.4.0
	pest_meta-2.4.0
	phf-0.10.1
	phf_codegen-0.10.0
	phf_generator-0.10.0
	phf_shared-0.10.0
	pin-project-1.0.10
	pin-project-internal-1.0.10
	pkg-config-0.3.25
	plotters-0.3.4
	plotters-backend-0.3.4
	plotters-svg-0.3.3
	png-0.17.7
	ppv-lite86-0.2.16
	pretty_assertions-1.3.0
	proc-macro2-1.0.56
	prodash-23.1.2
	qoi-0.4.1
	quick-error-2.0.1
	quote-1.0.26
	rand-0.8.5
	rand_chacha-0.3.1
	rand_core-0.6.3
	rayon-1.5.3
	rayon-core-1.9.3
	redox_syscall-0.2.13
	redox_users-0.4.3
	regex-1.6.0
	regex-automata-0.1.10
	regex-syntax-0.6.27
	rmp-0.8.11
	rmp-serde-0.14.4
	rustc-demangle-0.1.21
	rustix-0.36.4
	rustix-0.37.15
	rustversion-1.0.6
	ryu-1.0.10
	same-file-1.0.6
	scopeguard-1.1.0
	serde-1.0.160
	serde_derive-1.0.160
	serde_json-1.0.96
	serde_spanned-0.6.1
	serde_yaml-0.9.21
	sha1-0.10.5
	sha1_smol-1.0.0
	signal-hook-0.3.14
	signal-hook-registry-1.4.0
	similar-2.2.0
	siphasher-0.3.10
	slug-0.1.4
	smallvec-1.10.0
	spin-0.9.8
	static_assertions-1.1.0
	strsim-0.10.0
	strsim-0.8.0
	strum-0.24.1
	strum_macros-0.24.0
	syn-1.0.109
	syn-2.0.13
	tar-0.4.38
	tempfile-3.4.0
	tera-1.17.1
	term_size-0.3.2
	termcolor-1.1.3
	textwrap-0.11.0
	textwrap-0.16.0
	thiserror-1.0.40
	thiserror-impl-1.0.40
	thread_local-1.1.4
	threadpool-1.8.1
	tiff-0.8.1
	time-0.3.20
	time-core-0.1.0
	time-humanize-0.1.3
	time-macros-0.2.8
	tinytemplate-1.2.1
	tinyvec-1.6.0
	tinyvec_macros-0.1.0
	tokei-12.1.2
	toml-0.5.9
	toml-0.7.3
	toml_datetime-0.6.1
	toml_edit-0.19.6
	typenum-1.15.0
	typetag-0.2.8
	typetag-impl-0.2.8
	ucd-trie-0.1.3
	uluru-3.0.0
	uncased-0.9.7
	unic-char-property-0.9.0
	unic-char-range-0.9.0
	unic-common-0.9.0
	unic-segment-0.9.0
	unic-ucd-segment-0.9.0
	unic-ucd-version-0.9.0
	unicode-bidi-0.3.8
	unicode-bom-1.1.4
	unicode-bom-2.0.2
	unicode-ident-1.0.0
	unicode-normalization-0.1.19
	unicode-width-0.1.9
	unsafe-libyaml-0.2.7
	url-2.2.2
	utf8-width-0.1.6
	utf8parse-0.2.1
	uuid-1.3.1
	vcpkg-0.2.15
	vec_map-0.8.2
	version_check-0.9.4
	walkdir-2.3.2
	wasi-0.11.0+wasi-snapshot-preview1
	wasm-bindgen-0.2.83
	wasm-bindgen-backend-0.2.83
	wasm-bindgen-macro-0.2.83
	wasm-bindgen-macro-support-0.2.83
	wasm-bindgen-shared-0.2.83
	web-sys-0.3.60
	weezl-0.1.6
	winapi-0.3.9
	winapi-i686-pc-windows-gnu-0.4.0
	winapi-util-0.1.5
	winapi-x86_64-pc-windows-gnu-0.4.0
	windows-0.43.0
	windows-0.48.0
	windows-sys-0.36.1
	windows-sys-0.42.0
	windows-sys-0.48.0
	windows-targets-0.48.0
	windows_aarch64_gnullvm-0.42.0
	windows_aarch64_gnullvm-0.48.0
	windows_aarch64_msvc-0.36.1
	windows_aarch64_msvc-0.42.0
	windows_aarch64_msvc-0.48.0
	windows_i686_gnu-0.36.1
	windows_i686_gnu-0.42.0
	windows_i686_gnu-0.48.0
	windows_i686_msvc-0.36.1
	windows_i686_msvc-0.42.0
	windows_i686_msvc-0.48.0
	windows_x86_64_gnu-0.36.1
	windows_x86_64_gnu-0.42.0
	windows_x86_64_gnu-0.48.0
	windows_x86_64_gnullvm-0.42.0
	windows_x86_64_gnullvm-0.48.0
	windows_x86_64_msvc-0.36.1
	windows_x86_64_msvc-0.42.0
	windows_x86_64_msvc-0.48.0
	winnow-0.3.5
	winres-0.1.12
	xz2-0.1.7
	yaml-rust-0.4.5
	yansi-0.5.1
	zstd-0.11.2+zstd.1.5.2
	zstd-safe-5.0.2+zstd.1.5.2
	zstd-sys-2.0.1+zstd.1.5.2
"

inherit cargo shell-completion

DESCRIPTION="Command-line Git information tool"
HOMEPAGE="https://onefetch.dev"
SRC_URI="https://github.com/o2sh/onefetch/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz
	$(cargo_crate_uris)
"

LICENSE="MIT"
# Dependent crate licenses
LICENSE+="
	Apache-2.0 BSD ISC MIT MPL-2.0 ZLIB
	|| ( CC0-1.0 MIT-0 )
"
SLOT="0"
KEYWORDS="~amd64"
IUSE="test"
RESTRICT="!test? ( test )"
PATCHES=(
	"${FILESDIR}"/${P}-fix-missing-git-repo.patch
)

# libgit2-sys-${cver}+${sover} dynamically links to libgit2.so, if provided
# check https://github.com/rust-lang/git2-rs/blob/libgit2-sys-${cver}%2B${sover}/libgit2-sys/build.rs
# and Cargo.lock before dep bump
DEPEND=">=dev-libs/libgit2-1.6.4 <dev-libs/libgit2-1.7.0"
RDEPEND="${DEPEND}"
BDEPEND="test? ( dev-vcs/git )"

QA_FLAGS_IGNORED="usr/bin/onefetch"

src_compile() {
	cargo_src_compile
	local _completion="target/$(usex debug debug release)/${PN} --generate"
	mkdir completions || die
	$_completion bash > completions/${PN} || die
	$_completion fish > completions/${PN}.fish || die
	$_completion zsh > completions/_${PN} || die
}

src_install() {
	doman docs/${PN}.1

	dobashcomp completions/${PN}
	dofishcomp completions/${PN}.fish
	dozshcomp completions/_${PN}

	cargo_src_install
}
