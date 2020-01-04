# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from fugu device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := google
PRODUCT_DEVICE := fugu
PRODUCT_MANUFACTURER := google
PRODUCT_NAME := lineage_fugu
PRODUCT_MODEL := Nexus Player

PRODUCT_GMS_CLIENTID_BASE := android-google
TARGET_VENDOR := google
TARGET_VENDOR_PRODUCT_NAME := fugu
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="fugu-user 8.0.0 OPR2.170623.027 4397545 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := google/fugu/fugu:8.0.0/OPR2.170623.027/4397545:user/release-keys
