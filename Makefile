ARCHS = arm64 arm64e
TARGET = iphone:clang:11.2
INSTALL_TARGET_PROCESSES = CommCenter

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = commcenterpatch
commcenterpatch_FILES = Tweak.xm
commcenterpatch_CFLAGS = -fobjc-arc
commcenterpatch_LIBRARIES = CarrierBundleUtilities c++
include $(THEOS_MAKE_PATH)/tweak.mk
