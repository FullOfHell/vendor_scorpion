# Versioning System
SCORPION_BASE_VERSION = v4.4

ifndef SCORPION_BUILD_TYPE
    SCORPION_BUILD_TYPE := Unofficial
endif

# Set all versions
BUILD_DATE := $(shell date +%Y%m%d)
BUILD_TIME := $(shell date +%H%M)
SCORPION_VERSION := Scorpion-$(SCORPION_BASE_VERSION)-$(SCORPION_BUILD)-$(BUILD_DATE)-$(BUILD_TIME)-$(SCORPION_BUILD_TYPE)
TARGET_BACON_NAME := $(SCORPION_VERSION)
ROM_FINGERPRINT := Scorpion/$(PLATFORM_VERSION)/$(SCORPION_BUILD_TYPE)/$(BUILD_DATE)$(BUILD_TIME)


PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    BUILD_DISPLAY_ID=$(BUILD_ID) \
    ro.scorpion.version=$(SCORPION_VERSION) \
    ro.mod.version=$(SCORPION_BASE_VERSION)-$(SCORPION_BUILD_TYPE) \
    ro.scorpion.fingerprint=$(ROM_FINGERPRINT)
