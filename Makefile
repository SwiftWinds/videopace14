TARGET := iphone:clang:latest:12.2
INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

# export SYSROOT = $(THEOS)/sdks/iPhoneOS14.5.sdk
# export PREFIX = $(THEOS)/toolchain/XcodeDefault.xctoolchain/usr/bin/

TWEAK_NAME = videopace14
$(TWEAK_NAME)_PRIVATE_FRAMEWORKS = AVFoundation

videopace14_FILES = $(shell find Sources/videopace14 -name '*.swift') $(shell find Sources/videopace14C -name '*.m' -o -name '*.c' -o -name '*.mm' -o -name '*.cpp')
videopace14_SWIFTFLAGS = -ISources/videopace14C/include
videopace14_CFLAGS = -fobjc-arc -ISources/videopace14C/include

include $(THEOS_MAKE_PATH)/tweak.mk
