# Maintainer: Alve Svarén <alve@hotmail.se>

pkgname=clean-lambda-zsh-theme-git
pkgver=r2.6fa50f6
pkgrel=1
pkgdesc="A clean ZSH theme based on the Lambda theme"
arch=('any')
url="https://github.com/alvesvaren/clean-lambda-omz"
license=('MIT')
depends=('oh-my-zsh-git')
makedepends=('git')
source=("${pkgname}::git+${url}.git")
sha256sums=('SKIP')

pkgver() {
  cd "${pkgname}"
  printf "r%s.%s" "$(git rev-list --count HEAD)" "$(git rev-parse --short HEAD)"
}

package() {
  cd "${pkgname}"
  install -Dm644 clean-lambda.zsh-theme "${pkgdir}/usr/share/oh-my-zsh/themes/clean-lambda.zsh-theme"
}
