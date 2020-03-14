# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from phoenix device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := redmi
PRODUCT_DEVICE := phoenix
PRODUCT_MANUFACTURER := redmi
PRODUCT_NAME := lineage_phoenix
PRODUCT_MODEL := Redmi K30

PRODUCT_GMS_CLIENTID_BASE := android-redmi
TARGET_VENDOR := redmi
TARGET_VENDOR_PRODUCT_NAME := phoenix
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="phoenix-user 10 QKQ1.190825.002 V11.0.9.0.QGHCNXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Redmi/phoenix/phoenix:10/QKQ1.190825.002/V11.0.9.0.QGHCNXM:user/release-keys
