:pkgname="dumpasm"
pkgver=3.3e6a7f6
pkgrel=1
pkgdesc="compile semicolon seperated assembly instructions and hexdump"
arch=('x86_64')
url="https://github.com/jonay2000/${pkgname}"
license=('GPL')
depends=('binutils')
makedepends=('git')

source=("${pkgname%-git}::git://github.com/jonay2000/${pkgname}.git")
md5sums=('SKIP')


pkgver() {
  cd "${srcdir}/${pkgname}"
  echo $(git rev-list --count HEAD).$(git rev-parse --short HEAD)
}

package() {
  cd "${srcdir}/${pkgname}"
  mkdir -p "${pkgdir}/usr/bin"
  mkdir -p "${pkgdir}/usr/share/licenses/${pkgname}"
  
  cp "${srcdir}/${pkgname}/LICENSE" "${pkgdir}/usr/share/licenses/${pkgname}"
  cp "${srcdir}/${pkgname}/dumpasm" "${pkgdir}/usr/bin/"
  chmod +x "${pkgdir}/usr/bin/${pkgname}"
}

