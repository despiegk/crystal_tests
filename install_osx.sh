# xcode-select --install # shouldn't be needed, homebrew installs it for you
brew install \
  bdw-gc \
  gmp \
  libevent \
  libxml2 \
  libyaml \
  llvm \
  pcre \
  openssl \
  pkg-config
brew link --force llvm