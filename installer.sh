#!/bin/sh
# ###########################################
# SCRIPT : DOWNLOAD AND INSTALL Channel
# ###########################################
# Command: wget https://raw.githubusercontent.com/emilnabil/channel-hazem-wahba/main/installer.sh -qO - | /bin/sh

TMPDIR='/tmp'
PACKAGE='astra-sm'
MY_URL='https://raw.githubusercontent.com/emilnabil/channel-hazem-wahba/main'

VERSION=$(wget $MY_URL/version -qO- | cut -d "=" -f2-)

BINPATH=/usr/bin
ETCPATH=/etc
ASTRAPATH=${ETCPATH}/astra

BBCPMT=${BINPATH}/bbc_pmt_starter.sh
BBCPY=${BINPATH}/bbc_pmt_v6.py
BBCENIGMA=${BINPATH}/enigma2_pre_start.sh

SYSCONF=${ETCPATH}/sysctl.conf
ASTRACONF=${ASTRAPATH}/astra.conf
ABERTISBIN=${ASTRAPATH}/scripts/abertis

CONFIGpmttmp=${TMPDIR}/bbc_pmt_v6/bbc_pmt_starter.sh
CONFIGpytmp=${TMPDIR}/bbc_pmt_v6/bbc_pmt_v6.py
CONFIGentmp=${TMPDIR}/bbc_pmt_v6/enigma2_pre_start.sh
CONFIGsysctltmp=${TMPDIR}/${PACKAGE}/sysctl.conf
CONFIGastratmp=${TMPDIR}/${PACKAGE}/astra.conf
CONFIGabertistmp=${TMPDIR}/${PACKAGE}/abertis

if [ -f /etc/opkg/opkg.conf ]; then
    STATUS='/var/lib/opkg/status'
    OSTYPE='Opensource'
    OPKG='opkg update'
    OPKGINSTAL='opkg install'
fi

rm -rf /etc/enigma2/lamedb /etc/enigma2/*list /etc/enigma2/*.tv /etc/enigma2/*.radio /etc/tuxbox/*.xml

install() {
    if ! grep -qs "Package: $1" $STATUS; then
        $OPKG >/dev/null 2>&1
        echo "   >>>>   Need to install $1   <<<<"
        $OPKGINSTAL "$1" >/dev/null 2>&1
        sleep 1
    fi
}

if [ "$OSTYPE" = "Opensource" ]; then
    for i in dvbsnoop $PACKAGE; do
        install $i
    done
fi

case $(uname -m) in
    armv7l*) plarform="arm" ;;
    mips*) plarform="mips" ;;
esac

rm -rf ${ASTRACONF} ${SYSCONF}
rm -rf ${TMPDIR}/channels_backup_user_"${VERSION}"* astra-* bbc_pmt_v6*

echo
set -e
echo "Downloading And Installing Channel Please Wait ......"
wget $MY_URL/channels_hazem-wahba.tar.gz -qP $TMPDIR
tar -zxf $TMPDIR/channels_hazem-wahba.tar.gz -C /
sleep 5
set +e
echo
echo "   >>>>   Reloading Services - Please Wait   <<<<"
wget -qO - http://127.0.0.1/web/servicelistreload?mode=0 >/dev/null 2>&1
sleep 2
echo

if [ -f $BBCPMT ] && [ -f $BBCPY ] && [ -f $BBCENIGMA ]; then
    echo "   >>>>   All Config BBC Files found   <<<<"
    sleep 2
else
    set -e
    echo "Downloading And Installing Config BBC Please Wait ......"
    wget $MY_URL/bbc_pmt_v6.tar.gz -qP $TMPDIR
    tar -xzf $TMPDIR/bbc_pmt_v6.tar.gz -C $TMPDIR
    set +e
    echo "---------------------------------------------"
    if [ ! -f $BBCPMT ]; then
        cp -f $CONFIGpmttmp $BBCPMT >/dev/null 2>&1
        chmod 755 $BBCPMT
        echo "[send (bbc_pmt_starter.sh) file]"
    fi
    if [ ! -f $BBCPY ]; then
        cp -f $CONFIGpytmp $BBCPY >/dev/null 2>&1
        chmod 755 $BBCPY
        echo "[send (bbc_pmt_v6.py) file]"
    fi
    if [ ! -f $BBCENIGMA ]; then
        cp -f $CONFIGentmp $BBCENIGMA >/dev/null 2>&1
        chmod 755 $BBCENIGMA
        echo "[send (enigma2_pre_start.sh) file]"
    fi
    echo "---------------------------------------------"
fi

if [ "$OSTYPE" = "Opensource" ]; then
    if [ -f $ASTRACONF ] && [ -f $ABERTISBIN ] && [ -f $SYSCONF ]; then
        echo "   >>>>   All Config $PACKAGE Files found   <<<<"
        sleep 2
    else
        set -e
        echo "Downloading Config $PACKAGE Please Wait ......"
        wget $MY_URL/astra-"${plarform}".tar.gz -qP $TMPDIR
        tar -xzf $TMPDIR/astra-"${plarform}".tar.gz -C $TMPDIR
        set +e
        echo "---------------------------------------------"
        if [ ! -f $SYSCONF ]; then
            cp -f $CONFIGsysctltmp $SYSCONF >/dev/null 2>&1
            chmod 644 $SYSCONF
            echo "[send (sysctl.conf) file]"
        fi
        if [ ! -f $ASTRACONF ]; then
            cp -f $CONFIGastratmp $ASTRACONF >/dev/null 2>&1
            chmod 644 $ASTRACONF
            echo "[send (astra.conf) file]"
        fi
        if [ ! -f $ABERTISBIN ]; then
            cp -f $CONFIGabertistmp $ABERTISBIN >/dev/null 2>&1
            chmod 755 $ABERTISBIN
            echo "[send (abertis) file]"
        fi
        echo "---------------------------------------------"
    fi
fi

rm -rf ${TMPDIR}/channels_hazem-wahba.tar.gz
rm -rf ${TMPDIR}/*astra-* ${TMPDIR}/*bbc_pmt_v6*
sync

echo ""
echo "*********************************************************"
echo "#       Channel And Config INSTALLED SUCCESSFULLY       #"
echo "   UPLOADED BY  >>>>   EMIL_NABIL"
echo "*********************************************************"
echo "#                    ${VERSION}                         #"
echo "*********************************************************"
echo "#           your Device will RESTART Now                #"
echo "*********************************************************"
sleep 4

if [ "$OSTYPE" = "Opensource" ]; then
    killall -9 enigma2
else
    systemctl restart enigma2
fi

exit 0


