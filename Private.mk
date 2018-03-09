# Build packages from Private.mk
PRODUCT_PACKAGES += \


# build.prop overrides
PRODUCT_PROPERTY_OVERRIDES += \
    ro.secure=0 \
    ro.debuggable=1 \
    persist.service.adb.enable=1 \
    persist.sys.root_access=3 \
    service.adb.root=1 \
    ro.adb.secure=0

# My build.prop overrides
PRODUCT_PROPERTY_OVERRIDES += \
    ro.developer.name=sudosurootdev \
    ro.sudosurootdev.version="$(VANIR_VERSION)"-"$(shell date +"%Y%m%d-%s")"

# Added Files
PRODUCT_COPY_FILES += \

