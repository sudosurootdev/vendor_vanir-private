# Build packages from Private.mk
# PRODUCT_PACKAGES += \
    # PerformanceControl \
    # AndroidTerm \
    # libjackpal-androidterm5 \
    # Github

RESERVED=""

# My build.prop overrides
PRODUCT_PROPERTY_OVERRIDES += \
    persist.service.adb.enable=1 \
    persist.sys.usb.config=adb \
    persist.sys.root_access=3 \
    service.adb.root=1 \
    ro.secure=0 \
    ro.debuggable=1 \
    ro.adb.secure=0 \
    pm.sleep_mode=0

# WiFi Reserved Properties
# PRODUCT_PROPERTY_OVERRIDES += \
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

# More of my build.prop overrides
PRODUCT_PROPERTY_OVERRIDES += \
    otaupdater.otaid=sudosurootdev \
    otaupdater.otaver=5.0.2-vanir-$(shell date +"%Y%M%d") \
    otaupdater.otatime=$(shell date +"%Y%M%d-%H%M") \
    ro_product_board=galbi \
    ro_afh_rom=5.0.2-vanir-sudosurootdev \
    ro_afh_version=$(shell date +"%Y%M%d")

# init.d Tweaks & xbin files
PRODUCT_COPY_FILES += \
    vendor/vanir-private/proprietary/etc/init.d/95VacnPerms:system/etc/init.d/95VacnPerms \
    vendor/vanir-private/proprietary/xbin/freex:/system/xbin/freex \
    vendor/vanir-private/proprietary/xbin/calibrate-battery:/system/xbin/calibrate-battery
