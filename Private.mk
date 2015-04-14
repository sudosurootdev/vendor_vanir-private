# Build packages from Private.mk
PRODUCT_PACKAGES += \
    Eleven

RESERVED=""

ifneq ($(filter $(TARGET_DEVICE),d800 d801 d802 d803 vs980 lgl22 ls980),)

# My build.prop overrides
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.hsxpa=5 \
    ro.ril.gprsclass=34 \
    ro.ril.hep=1 \
    ro.ril.hsdpa.category=28 \
    ro.ril.enable.3g.prefix=1 \
    ro.ril.htcmaskw1.bitmask=4294967295 \
    ro.ril.htcmaskw1=268449905 \
    ro.ril.hsupa.category=9 \
    ro.ril.def.agps.mode=1 \
    ro.ril.def.agps.feature=2 \
    ro.ril.enable.sdr=1 \
    ro.ril.enable.gea3=1 \
    ro.ril.enable.fd.plmn.prefix=23402,23410,23411 \
    ro.ril.enable.a52=1 \
    ro.ril.enable.a53=1 \
    ro.ril.enable.dtm=1 \
    net.tcp.buffersize.default=4096,87380,110208,4096,16384,110208 \
    net.tcp.buffersize.wifi=262144,524288,1048576,262144,524288,1048576 \
    net.tcp.buffersize.lte=262144,524288,3145728,262144,524288,3145728 \
    net.tcp.buffersize.evdo_b=6144,262144,1048576,6144,262144,1048576 \
    net.tcp.buffersize.umts=4096,87380,110208,4096,16384,110208 \
    net.tcp.buffersize.hsdpa=6144,262144,1048576,6144,262144,1048576 \
    net.tcp.buffersize.hspa=4096,87380,262144,4096,16384,262144 \
    net.tcp.buffersize.hsupa=4094,87380,110208,4096,16384,110208 \
    net.tcp.buffersize.gprs=6144,8760,11680,4096,8760,11680 \
    net.tcp.buffersize.edge=6144,26280,35040,4096,16384,35040 \
    ro.min_pointer_dur=8 \
    ro.secure=0 \
    ro.adb.secure=0 \
    ro.debuggable=1 \
    ro.allow.mock.locations=1 \
    ro.allow.mock.sms=1 \
    persist.service.adb.enable=1 \
    persist.sys.root_access=3 \
    service.adb.root=1 \
    pm.sleep_mode=0

# WiFi Reserved Properties
PRODUCT_PROPERTY_OVERRIDES += \
    net.dns1=8.8.8.8 \
    net.dns2=8.8.4.4 \
    net.ppp0.dns1=$(RESERVED) \
    net.ppp0.dns2=$(RESERVED) \
    net.ppp.dns1=$(RESERVED) \
    net.ppp.dns2=$(RESERVED) \
    dhcp.ap.macaddress=$(RESERVED) \
    net.rmnet0.dns1=$(RESERVED) \
    net.rmnet0.dns2=$(RESERVED) \
    dhcp.wlan0.dns1=$(RESERVED) \
    dhcp.wlan0.dns2=$(RESERVED) \
    dhcp.wlan0.dns3=$(RESERVED) \
    dhcp.wlan0.dns4=$(RESERVED) \
    dhcp.wlan0.gateway=$(RESERVED) \
    dhcp.wlan0.ipaddress=$(RESERVED) \
    dhcp.wlan0.leasetime=$(RESERVED) \
    dhcp.wlan0.mask=$(RESERVED) \
    dhcp.wlan0.pid=$(RESERVED) \
    dhcp.wlan0.reason=$(RESERVED) \
    dhcp.wlan0.result=$(RESERVED) \
    dhcp.wlan0.server=$(RESERVED) \
    dhcp.wlan0.vendorInfo=$(RESERVED) \
    dhcp.p2p.dns1=$(RESERVED) \
    dhcp.p2p.dns2=$(RESERVED) \
    dhcp.p2p.dns3=$(RESERVED) \
    dhcp.p2p.dns4=$(RESERVED) \
    dhcp.p2p.gateway=$(RESERVED) \
    dhcp.p2p.ipaddress=$(RESERVED) \
    dhcp.p2p.leasetime=$(RESERVED) \
    dhcp.p2p.mask=$(RESERVED) \
    dhcp.p2p.pid=$(RESERVED) \
    dhcp.p2p.reason=$(RESERVED) \
    dhcp.p2p.result=$(RESERVED) \
    dhcp.p2p.server=$(RESERVED) \
    dhcp.p2p.vendorInfo=$(RESERVED) \
    init.svc.dhcpcd_wlan0=$(RESERVED) \
    init.svc.dhcpcd_p2p=$(RESERVED) \
    init.svc.p2p_supplicant=$(RESERVED) \
    init.svc.iprenew_wlan0=$(RESERVED) \
    net.dnschange=$(RESERVED) \
    net.p2p-p2p0-0.dns1=$(RESERVED) \
    net.p2p-p2p0-0.dns2=$(RESERVED) \
    net.wlan0.dns1=$(RESERVED) \
    net.wlan0.dns2=$(RESERVED) \
    wlan.driver.status=$(RESERVED)

else

# Common build.prop overrides
PRODUCT_PROPERTY_OVERRIDES += \
    ro.secure=0 \
    ro.debuggable=1 \
    persist.service.adb.enable=1 \
    persist.sys.root_access=3 \
    service.adb.root=1 \
    ro.adb.secure=0 \
    net.dns1=8.8.8.8 \
    net.dns2=8.8.4.4 \
    pm.sleep_mode=0

endif

# More of my build.prop overrides
PRODUCT_PROPERTY_OVERRIDES += \
    ro.developer.name=sudosurootdev \
    ro.vanir.updater.uri="https://androidfilehost.com/api" \
    ro_developerid=23329332407574102 \
    ro_board=galbi \
    ro_rom=sudosurootdev-vanir \
    ro_version="$(VANIR_VERSION)"-"$(shell date +"%Y%m%d-%s")"

# init.d Tweaks & xbin files
PRODUCT_COPY_FILES += \
    vendor/vanir-private/proprietary/etc/init.d/95sqlite:system/etc/init.d/95sqlite \
    vendor/vanir-private/proprietary/xbin/freex:system/xbin/freex \
    vendor/vanir-private/proprietary/xbin/calibrate-battery:system/xbin/calibrate-battery \
    vendor/vanir-private/proprietary/xbin/clean-logs:system/xbin/clean-logs

