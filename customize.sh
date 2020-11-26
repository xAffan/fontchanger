mkdir -p /storage/emulated/0/Fontchanger/logs
#mkdir -p /sbin/.$MODID/logs
exec 2>/storage/emulated/0/Fontchanger/logs/Fontchanger-install-verbose.log
set -euxo pipefail
mkdir $TMPDIR/tools
unzip -o "$ZIPFILE" 'module.prop' -d $MODPATH 2>&1
unzip -o "$ZIPFILE" 'tools/*' -d $TMPDIR 2>&1
mv $TMPDIR/tools/busybox-$ARCH32 $TMPDIR/tools/busybox 2>&1
chmod 0755 $TMPDIR/tools/busybox
SKIPUNZIP=1

set_busybox() {
  if [ -x "$1" ]; then
    for i in $(${1} --list); do
      if [[ "$i" != 'zip' && "$i" != 'sleep' ]]; then
        alias "$i"="${1} $i" >/dev/null 2>&1
      fi
    done
    _busybox=true
    _bb=$1
  fi
}
_busybox=false

if $_busybox; then
  true
elif [ -d /sbin/.magisk/modules/busybox-ndk ]; then
  BUSY=$(find /sbin/.magisk/modules/busybox-ndk/system/* -maxdepth 0 | sed 's#.*/##')
  for i in $BUSY; do
    PATH=/sbin/.magisk/modules/busybox-ndk/system/$i:$PATH
    _bb=/sbin/.magisk/modules/busybox-ndk/system/$i/busybox
  done
elif [ -f /sbin/.magisk/modules/ccbins/system/bin/busybox ]; then
  PATH=/sbin/.magisk/modules/ccbins/system/bin:$PATH
  _bb=/sbin/.magisk/modules/ccbins/system/bin/busybox
elif [ -f /sbin/.magisk/modules/ccbins/system/xbin/busybox ]; then
  PATH=/sbin/.magisk/modules/ccbins/system/xbin:$PATH
  _bb=/sbin/.magisk/modules/ccbins/system/xbin/busybox
elif [ -f $TMPDIR/tools/busybox ]; then
  PATH=$TMPDIR/tools:$PATH
  _bb=$TMPDIR/tools/busybox
elif [ -d /sbin/.magisk/busybox ]; then
  PATH=/sbin/.magisk/busybox:$PATH
  _bb=/sbin/.magisk/busybox/busybox
fi

set_busybox $_bb
[ $? -ne 0 ] && exxit $?
ui_print " - Downloading Installer Script"
wget -O $TMPDIR/installer.sh https://github.com/xaffan/fontchanger-scripts/raw/master/installer.sh 2>/dev/null
. $TMPDIR/installer.sh
