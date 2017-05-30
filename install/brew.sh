if ! is-macos -o ! is-executable ruby -o ! is-executable curl -o ! is-executable git; then
  echo "Skipped: Homebrew (missing: ruby, curl and/or git)"
  return
fi

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap Goles/battery
brew update
brew upgrade

# Install packages

apps=(
    adns
    autoconf
    automake
    bash-completion
    bfg
    cairo
    cloog-ppl015
    cloog@0.15
    dnsmasq
    fontconfig
    freetype
    freexl
    gd
    gdal
    gdbm
    gdk-pixbuf
    geos
    gettext
    ghostscript
    giflib
    glib
    gmp
    gmp4
    gmp@4
    gnupg
    gnutls
    gobject-introspection
    graphite2
    harfbuzz
    icu4c
    imagemagick
    jbig2dec
    jpeg
    json-c
    libassuan
    libcroco
    libffi
    libgcrypt
    libgeotiff
    libgpg-error
    libksba
    liblwgeom
    libmpc08
    libmpc@0.8
    libpng
    librsvg
    libspatialite
    libtasn1
    libtiff
    libtool
    libunistring
    libusb
    libxml2
    libyaml
    little-cms2
    lzlib
    makedepend
    matplotlib
    mcrypt
    mhash
    mongodb
    mpfr2
    mpfr@2
    mysql
    nettle
    nmap
    node
    npth
    numpy
    openssl
    openssl@1.1
    p11-kit
    pango
    pcre
    php70
    php70-mcrypt
    php70-xdebug
    phpmyadmin
    pinentry
    pixman
    pkg-config
    ppl011
    ppl@0.11
    proj
    py2cairo
    python
    python3
    rbenv
    readline
    ruby-build
    sqlite
    ssh-copy-id
    thefuck
    ttygif
    ttyrec
    unixodbc
    webp
    wget
    xz
    yarn
    zeromq

)

brew install "${apps[@]}"

export DOTFILES_BREW_PREFIX_COREUTILS=`brew --prefix coreutils`
set-config "DOTFILES_BREW_PREFIX_COREUTILS" "$DOTFILES_BREW_PREFIX_COREUTILS" "$DOTFILES_CACHE"

ln -sfv "$DOTFILES_DIR/etc/mackup/.mackup.cfg" ~
