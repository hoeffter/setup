sed -i 's,#MAKEFLAGS="-j2",MAKEFLAGS="-j$(nproc)",g' /etc/makepkg.conf
sed -i "s,PKGEXT='.pkg.tar.xz',PKGEXT='.pkg.tar',g" /etc/makepkg.conf
