ARCH = arm64 armv7
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = messenger
messenger_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
