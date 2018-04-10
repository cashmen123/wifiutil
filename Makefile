


THEOS_DEVICE_IP=usb2222	#5C9
TARGET = iphone:latest:8.0
ARCHS = armv7 arm64
THEOS=/opt/theos
THEOS_MAKE_PATH=$(THEOS)/makefiles

include $(THEOS)/makefiles/common.mk

TOOL_NAME = wifiutil
wifiutil_FILES = $(wildcard src/*.m*)
wifiutil_PRIVATE_FRAMEWORKS = MobileWiFi

# $(TOOL_NAME)_FRAMEWORKS = Foundation
# wifiutil_FRAMEWORKS = Foundation


wifiutil_CODESIGN_FLAGS = -Ssrc/entitlements.xml

ADDITIONAL_CFLAGS = -I$(THEOS_PROJECT_DIR)/headers/


$(TOOL_NAME)_CFLAGS += -Wno-error

include $(THEOS_MAKE_PATH)/tool.mk
