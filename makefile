#
# Makefile for pyramid
#

PORT_BUILD=/home/ir1apriyanto/v6/build

PORT_ROOT=/home/ir1apriyanto/v6

# The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
local-out-zip-file := MIUI_V6_Pyramid.zip

# the location for local-ota to save target-file
local-previous-target-dir := 

# All apps from original ZIP, but has smali files chanded
local-modified-apps := 

local-modified-priv-apps := MIPop

local-modified-jars := 

# All apks from MIUI
local-miui-removed-apps := MiuiSuperMarket GameCenter 

local-miui-removed-priv-apps := MiGameCenterSDKService

local-miui-modified-apps := MiuiFramework MiuiSystemUI MiuiHome SecurityCenter

# Config density for co-developers to use the aaps with HDPI or XHDPI resource,
# Default configrations are HDPI for ics branch and XHDPI for jellybean branch
local-density := XHDPI

# All apps need to be removed from original ZIP file
#local-remove-apps   := 

include phoneapps.mk

# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-pre-zip-misc
local-after-zip:= local-put-to-phone

# The local targets after the zip file is generated, could include 'zip2sd' to 
# deliver the zip file to phone, or to customize other actions

include $(PORT_BUILD)/porting.mk

PORT_PRODUCT：= pyramid

# To define any local-target
#updater := $(ZIP_DIR)/META-INF/com/google/android/updater-script
#pre_install_data_packages := $(TMP_DIR)/pre_install_apk_pkgname.txt
local-pre-zip-misc:
	@echo Update boot.img
	cp -rf other/boot.img $(ZIP_DIR)/boot.img
	@echo Update build.prop
	cp -rf other/system/build.prop $(ZIP_DIR)/system/build.prop
	
	mv $(ZIP_DIR)/system/app/QuickSearchBox.apk $(ZIP_DIR)/system/priv-app/QuickSearchBox.apk

	@echo Added some custom app
	cp -rf other/system $(ZIP_DIR)/

	@echo goodbye! miui prebuilt binaries!
	cp -rf stockrom/system/bin/app_process $(ZIP_DIR)/system/bin/app_process
	rm -rf $(ZIP_DIR)/system/bin/debuggerd_vendor
	cp -rf stockrom/system/bin/debuggerd $(ZIP_DIR)/system/bin/debuggerd
	rm -rf $(ZIP_DIR)/system/bin/dexopt_vendor
	cp -rf stockrom/system/bin/dexopt $(ZIP_DIR)/system/bin/dexopt
	cp -rf stockrom/system/xbin/busybox $(ZIP_DIR)/system/xbin/busybox
	cp -rf stockrom/system/xbin/sqlite3 $(ZIP_DIR)/system/xbin/sqlite3
# MIUI_V6_Sensation
