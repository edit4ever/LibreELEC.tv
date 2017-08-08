################################################################################
#      This file is part of LibreELEC - https://libreelec.tv
#      Copyright (C) 2017 Team LibreELEC
#
#  LibreELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  LibreELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with LibreELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################
PKG_NAME="script.module.tvh2kodi"
PKG_VERSION="85bace7"
PKG_VERSION_NUMBER="2.0"
PKG_REV="100"
PKG_ARCH="any"
PKG_LICENSE="GPLv3"
PKG_SITE="https://github.com/edit4ever/script.module.tvh2kodi"
PKG_URL="https://github.com/edit4ever/script.module.tvh2kodi/archive/$PKG_VERSION.tar.gz"
PKG_SOURCE_DIR="script.module.tvh2kodi-$PKG_VERSION*"
PKG_DEPENDS_TARGET="toolchain zstandard"
PKG_SECTION=""
PKG_SHORTDESC="Tvh2Kodi: Configure basic Tvheadend server settings from Kodi"
PKG_LONGDESC="Tvh2Kodi gives access to the basic Tvheadend settings directly from the Kodi interface. This can be used in place of the Tvheadend web interface to get your Tvheadend backend server configured and running.  It is also provides an easy way to scan for new services and channels and to configure your channel EPG sources."
PKG_DISCLAIMER="Copyright (C) 2017 edit4ever - edit4ever@gmail.com * minimum version of Tvheadend is 4.2"
PKG_ADDON_NEWS="v2.0 - initial release"
PKG_ADDON_SCREENSHOT=""
PKG_AUTORECONF="no"
PKG_IS_ADDON="yes"
PKG_ADDON_NAME="Tvheadend Setup for Kodi"
PKG_ADDON_VERSION="2.0"
PKG_PROVIDER_NAME="edit4ever"

make_target() {
  :
}

makeinstall_target() {
  :
}

addon() {
  mkdir -p $ADDON_BUILD/$PKG_ADDON_ID
	  cp -PR $PKG_BUILD/* $ADDON_BUILD/$PKG_ADDON_ID
}

addon() {
  mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/bin/
  cp -P $(get_build_dir zstandard)/programs/zstd $ADDON_BUILD/$PKG_ADDON_ID/bin
}
