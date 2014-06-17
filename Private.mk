# Build packages from Private.mk
PRODUCT_PACKAGES += \
    Apollo \
    PerformanceControl

PRODUCT_PACKAGES += \
    libstagefrighthw \
    libc2dcolorconvert \
    libOmxCore \
    libOmxVenc \
    libOmxVdec \
    libnamparser \
    libstagefright_soft_ffmpegvdec \
    libstagefright_soft_ffmpegadec \
    libFFmpegExtractor \
    libffmpeg_utils

RESERVED=""

# My build.prop overrides
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.target_operator=SPR \
    ro.build.target_country=US \
    ro.com.android.dataroaming=true \
    ro.com.android.voiceroaming=true \
    telephony.lteOnGsmDevice=1 \
    telephony.lte.gsm.device=1 \
    dalvik.vm.debug.alloc=0 \
    windowsmgr.max_events_per_sec=400 \
    ro.ext4fs=1 \
    ro.mot.eri.losalert.delay=1000 \
    dev.pm.dyn_samplingrate=1 \
    persist.demo.hdmirotationlock=false \
    drm.service.enabled=true \
    encoder.video.profile=high \
    media.stagefright.extractor-plugin=libFFmpegExtractor.so \
    media.stagefright.use-mp4source=true \
    media.stagefright.enable-player=true \
    media.stagefright.enable-meta=true \
    media.stagefright.enable-scan=true \
    media.stagefright.enable-http=true \
    media.stagefright.enable-rtsp=true \
    media.stagefright.enable-aac=true \
    media.stagefright.enable-qcp=true \
    media.stagefright.enable-fma2dp=true \
    media.stagefright.enable-ffmpeg=true \
    media.stagefright.enable-record=true \
    mmp.enable.3g2=true \
    media.aac_51_output_enabled=true \
    sys.media.parser.ffmpeg=1 \
    debug.nam.ffmpeg=1 \
    sys.media.vdec.drop=1 \
    sys.media.vdec.sw=1 \
    persist.sys.hdcp_checking=1 \
    use.non-omx.mp3.decoder=true \
    use.non-omx.aac.decoder=true \
    persist.debug.sf.statistics=1 \
    persist.fuse_sdcard=true \
    pm.sleep_mode=0 \
    ro.qualcomm.bt.hci_transport=smd \
    ro.qc.sdk.audio.ssr=true \
    ro.qc.sdk.audio.fluencetype=fluencepro \
    ro.qc.sdk.camera.facialproc=true \
    persist.debug.wfd.enable=1 \
    persist.sys.wfd.virtual=1 \
    ro.qualcomm.sensors.qmd=true \
    ro.qc.sdk.sensors.gestures=true \
    ro.qc.sdk.gestures.camera=true \
    ro.qualcomm.sensors.pedometer=true \
    ro.qualcomm.sensors.pam=true \
    ro.qualcomm.sensors.scrn_ortn=true \
    debug.qualcomm.sns.hal=1 \
    debug.qualcomm.sns.daemon=1 \
    debug.qualcomm.sns.libsensor1=e \
    ro.config.vibrate_type=1 \
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
    net.tcp.buffersize.hsdpa=6144,262144,1048576,6144,262144,1048576 \
    net.tcp.buffersize.evdo_b=6144,262144,1048576,6144,262144,1048576 \
    net.tcp.buffersize.umts=4096,87380,110208,4096,16384,110208 \
    net.tcp.buffersize.hspa=4096,87380,262144,4096,16384,262144 \
    net.tcp.buffersize.gprs=6144,8760,11680,4096,8760,11680 \
    net.tcp.buffersize.edge=6144,26280,35040,4096,16384,35040 \
    ro.ril.fast.dormancy.rule=0 \
    ro.ril.enable.amr.wideband=1 \
    persist.android.strictmode=0 \
    persist.sys.use_dithering=1 \
    persist.sys.ui.hw=true \
    persist.sys.purgeable_assets=1 \
    ro.vold.umsdirtyratio=20 \
    ro.blue_handler.level=0 \
    persist.power.useautobrightadj=true \
    persist.radio.add_power_save=1 \
    ro.hwui.texture_cache_size=32 \
    debug.performance.tuning=1 \
    debug.sf.hw=1 \
    debug.egl.hw=1 \
    debug.composition.type=c2d \
    debug.mdpcomp.logs=1 \
    video.accelerate.hw=1 \
    persist.sys.composition.type=gpu \
    ro.opengles.version=196608 \
    ro.hwui.texture_cache_size=72 \
    ro.hwui.layer_cache_size=48 \
    ro.hwui.r_buffer_cache_size=8 \
    ro.hwui.path_cache_size=64 \
    ro.hwui.gradient_cache_size=1 \
    ro.hwui.drop_shadow_cache_size=6 \
    ro.hwui.texture_cache_flushrate=0.4 \
    ro.hwui.text_small_cache_width=1024 \
    ro.hwui.text_small_cache_height=2048 \
    ro.hwui.text_large_cache_width=2048 \
    ro.hwui.text_large_cache_height=4096 \
    ro.min_pointer_dur=8 \
    persist.audio.samplerate=48000 \
    persist.af.resample=52000 \
    ro.audio.pcm.samplerate=48000 \
    persist.dev.pm.dyn_samplingrate=1 \
    ro.secure=0 \
    ro.debuggable=1 \
    ro.allow.mock.locations=1 \
    ro.allow.mock.sms=1 \
    persist.service.adb.enable=1 \
    persist.sys.usb.config=adb

# WiFi Reserved Properties
PRODUCT_PROPERTY_OVERRIDES += \
    net.ppp0.dns1=$(RESERVED) \
    net.ppp0.dns2=$(RESERVED) \
    net.ppp.dns1=$(RESERVED) \
    net.ppp.dns2=$(RESERVED) \
    dhcp.ap.macaddress=$(RESERVED) \
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
    wlan.driver.status=$(RESERVED) \
    persist.sys.hotssid.ksc5601=$(RESERVED) \
    wifi.lge.autochannel=$(RESERVED) \
    wlan.driver.firmware=$(RESERVED)

# More of my build.prop overrides
PRODUCT_PROPERTY_OVERRIDES += \
    otaupdater.otaid=sudosurootdev \
    otaupdater.otaver=4.4.3 \
    otaupdater.otatime=$(shell date +"%Y%M%d-%H%M")

# init.d Tweaks
PRODUCT_COPY_FILES += \
    vendor/vanir-private/proprietary/etc/init.d/95vaconboot:system/etc/init.d/95vaconboot

