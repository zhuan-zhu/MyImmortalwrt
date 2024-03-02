# SPDX-License-Identifier: GPL-2.0-only
#
# Copyright (C) 2020 Tobias Maedel

# FIT will be loaded at 0x02080000. Leave 16M for that, align it to 2M and load the kernel after it.
KERNEL_LOADADDR := 0x03200000

define Device/IfnameMigration
  DEVICE_COMPAT_VERSION := 1.1
  DEVICE_COMPAT_MESSAGE := Network interface names have been changed
endef

define Device/ariaboard_photonicat
  DEVICE_VENDOR := Ariaboard
  DEVICE_MODEL := Photonicat
  SOC := rk3568
  BOOT_FLOW := pine64-img
  DEVICE_PACKAGES := pcat-manager kmod-ath10k-sdio \
	ath10k-firmware-qca9377-sdio wpad-openssl \
	kmod-usb-net-cdc-mbim kmod-usb-net-qmi-wwan kmod-usb-serial-option uqmi
endef
TARGET_DEVICES += ariaboard_photonicat

define Device/ezpro_mrkaio-m68s
  DEVICE_VENDOR := EZPRO
  DEVICE_MODEL := Mrkaio M68S
  SOC := rk3568
  BOOT_FLOW := pine64-img
  DEVICE_PACKAGES := kmod-ata-ahci kmod-ata-ahci-platform
endef
TARGET_DEVICES += ezpro_mrkaio-m68s

define Device/firefly_roc-rk3328-cc
  DEVICE_VENDOR := Firefly
  DEVICE_MODEL := ROC-RK3328-CC
  SOC := rk3328
  DEVICE_DTS := rockchip/rk3328-roc-cc
  UBOOT_DEVICE_NAME := roc-cc-rk3328
  BOOT_FLOW := pine64-bin
endef
TARGET_DEVICES += firefly_roc-rk3328-cc

define Device/firefly_roc-rk3568-pc
  DEVICE_VENDOR := Firefly
  DEVICE_MODEL := Station P2
  DEVICE_ALT0_VENDOR := Firefly
  DEVICE_ALT0_MODEL := ROC-RK3568-PC
  SOC := rk3568
  DEVICE_DTS := rockchip/rk3568-roc-pc
  SUPPORTED_DEVICES := firefly,rk3568-roc-pc
  UBOOT_DEVICE_NAME := roc-pc-rk3568
  BOOT_FLOW := pine64-img
  DEVICE_PACKAGES := kmod-ata-ahci-platform kmod-brcmfmac wpad-openssl \
	brcmfmac-firmware-43752-sdio brcmfmac-nvram-43752-sdio
endef
TARGET_DEVICES += firefly_roc-rk3568-pc

define Device/friendlyarm_nanopc-t4
  DEVICE_VENDOR := FriendlyARM
  DEVICE_MODEL := NanoPC T4
  SOC := rk3399
  BOOT_FLOW := pine64-bin
  DEVICE_PACKAGES := kmod-brcmfmac wpad-openssl \
	brcmfmac-firmware-4356-sdio brcmfmac-nvram-4356-sdio
endef
TARGET_DEVICES += friendlyarm_nanopc-t4

define Device/friendlyarm_nanopc-t6
  DEVICE_VENDOR := FriendlyARM
  DEVICE_MODEL := NanoPC T6
  SOC := rk3588
  BOOT_FLOW := pine64-img
  DEVICE_PACKAGES := kmod-r8125
endef
TARGET_DEVICES += friendlyarm_nanopc-t6

define Device/friendlyarm_nanopi-r2c
  DEVICE_VENDOR := FriendlyARM
  DEVICE_MODEL := NanoPi R2C
  SOC := rk3328
  BOOT_FLOW := pine64-bin
  DEVICE_PACKAGES := kmod-usb-net-rtl8152
endef
TARGET_DEVICES += friendlyarm_nanopi-r2c

define Device/friendlyarm_nanopi-r2c-plus
  DEVICE_VENDOR := FriendlyARM
  DEVICE_MODEL := NanoPi R2C Plus
  SOC := rk3328
  BOOT_FLOW := pine64-bin
  DEVICE_PACKAGES := kmod-usb-net-rtl8152
endef
TARGET_DEVICES += friendlyarm_nanopi-r2c-plus

define Device/friendlyarm_nanopi-r2s
  DEVICE_VENDOR := FriendlyARM
  DEVICE_MODEL := NanoPi R2S
  SOC := rk3328
  BOOT_FLOW := pine64-bin
  DEVICE_PACKAGES := kmod-usb-net-rtl8152
endef
TARGET_DEVICES += friendlyarm_nanopi-r2s

define Device/friendlyarm_nanopi-r4s
  DEVICE_VENDOR := FriendlyARM
  DEVICE_MODEL := NanoPi R4S
  SOC := rk3399
  BOOT_FLOW := pine64-bin
  DEVICE_PACKAGES := kmod-r8168
endef
TARGET_DEVICES += friendlyarm_nanopi-r4s

define Device/friendlyarm_nanopi-r4se
  DEVICE_VENDOR := FriendlyARM
  DEVICE_MODEL := NanoPi R4SE
  SOC := rk3399
  BOOT_FLOW := pine64-bin
  DEVICE_PACKAGES := kmod-r8168
endef
TARGET_DEVICES += friendlyarm_nanopi-r4se

define Device/friendlyarm_nanopi-r4s-enterprise
  DEVICE_VENDOR := FriendlyARM
  DEVICE_MODEL := NanoPi R4S Enterprise Edition
  SOC := rk3399
  UBOOT_DEVICE_NAME := nanopi-r4s-rk3399
  BOOT_FLOW := pine64-bin
  DEVICE_PACKAGES := kmod-r8168
endef
TARGET_DEVICES += friendlyarm_nanopi-r4s-enterprise

define Device/friendlyarm_nanopi-r5c
  DEVICE_VENDOR := FriendlyARM
  DEVICE_MODEL := NanoPi R5C
  SOC := rk3568
  BOOT_FLOW := pine64-img
  DEVICE_PACKAGES := kmod-r8125 kmod-rtw88-8822ce rtl8822ce-firmware wpad-openssl
endef
TARGET_DEVICES += friendlyarm_nanopi-r5c

define Device/friendlyarm_nanopi-r5s
  DEVICE_VENDOR := FriendlyARM
  DEVICE_MODEL := NanoPi R5S
  SOC := rk3568
  BOOT_FLOW := pine64-img
  DEVICE_PACKAGES := kmod-r8125
endef
TARGET_DEVICES += friendlyarm_nanopi-r5s

define Device/friendlyarm_nanopi-r6c
  DEVICE_VENDOR := FriendlyARM
  DEVICE_MODEL := NanoPi R6C
  SOC := rk3588s
  BOOT_FLOW := pine64-img
  DEVICE_PACKAGES := kmod-r8125
endef
TARGET_DEVICES += friendlyarm_nanopi-r6c

define Device/friendlyarm_nanopi-r6s
  DEVICE_VENDOR := FriendlyARM
  DEVICE_MODEL := NanoPi R6S
  SOC := rk3588s
  BOOT_FLOW := pine64-img
  DEVICE_PACKAGES := kmod-r8125
endef
TARGET_DEVICES += friendlyarm_nanopi-r6s

define Device/huake_guangmiao-g4c
  DEVICE_VENDOR := Huake-Cloud
  DEVICE_MODEL := GuangMiao G4C
  SOC := rk3399
  BOOT_FLOW := pine64-bin
  DEVICE_PACKAGES := kmod-r8168
endef
TARGET_DEVICES += huake_guangmiao-g4c

define Device/lunzn_fastrhino-r66s
  DEVICE_VENDOR := Lunzn
  DEVICE_MODEL := FastRhino R66S
  SOC := rk3568
  BOOT_FLOW := pine64-img
  DEVICE_PACKAGES := kmod-r8125
endef
TARGET_DEVICES += lunzn_fastrhino-r66s

define Device/lunzn_fastrhino-r68s
  $(Device/IfnameMigration)
  DEVICE_VENDOR := Lunzn
  DEVICE_MODEL := FastRhino R68S
  SOC := rk3568
  BOOT_FLOW := pine64-img
  DEVICE_PACKAGES := kmod-r8125
endef
TARGET_DEVICES += lunzn_fastrhino-r68s

define Device/pine64_rock64
  DEVICE_VENDOR := Pine64
  DEVICE_MODEL := Rock64
  SOC := rk3328
  BOOT_FLOW := pine64-bin
endef
TARGET_DEVICES += pine64_rock64

define Device/pine64_rockpro64
  DEVICE_VENDOR := Pine64
  DEVICE_MODEL := RockPro64
  SOC := rk3399
  BOOT_FLOW := pine64-bin
endef
TARGET_DEVICES += pine64_rockpro64

define Device/radxa_cm3-io
  DEVICE_VENDOR := Radxa
  DEVICE_MODEL := CM3 IO
  SOC := rk3566
  DEVICE_DTS := rockchip/rk3566-radxa-cm3-io
  UBOOT_DEVICE_NAME := radxa-cm3-io-rk3566
  BOOT_FLOW := pine64-img
endef
TARGET_DEVICES += radxa_cm3-io

define Device/radxa_e25
  DEVICE_VENDOR := Radxa
  DEVICE_MODEL := E25
  SOC := rk3568
  DEVICE_DTS := rockchip/rk3568-radxa-e25
  UBOOT_DEVICE_NAME := radxa-e25-rk3568
  BOOT_FLOW := pine64-img
  DEVICE_PACKAGES := kmod-r8125 kmod-ata-ahci-platform
endef
TARGET_DEVICES += radxa_e25

define Device/radxa_rock-3a
  DEVICE_VENDOR := Radxa
  DEVICE_MODEL := ROCK 3A
  SOC := rk3568
  SUPPORTED_DEVICES := radxa,rock3a
  BOOT_FLOW := pine64-img
endef
TARGET_DEVICES += radxa_rock-3a

define Device/radxa_rock-5a
  DEVICE_VENDOR := Radxa
  DEVICE_MODEL := ROCK 5A
  SOC := rk3588s
  UBOOT_DEVICE_NAME := rock5a-rk3588s
  BOOT_FLOW := pine64-img
  DEVICE_PACKAGES := kmod-r8125 kmod-hwmon-pwmfan
endef
TARGET_DEVICES += radxa_rock-5a

define Device/radxa_rock-5b
  DEVICE_VENDOR := Radxa
  DEVICE_MODEL := ROCK 5B
  SOC := rk3588
  UBOOT_DEVICE_NAME := rock5b-rk3588
  BOOT_FLOW := pine64-img
  DEVICE_PACKAGES := kmod-r8125 kmod-hwmon-pwmfan
endef
TARGET_DEVICES += radxa_rock-5b

define Device/radxa_rock-pi-4a
  DEVICE_VENDOR := Radxa
  DEVICE_MODEL := ROCK Pi 4A
  SOC := rk3399
  SUPPORTED_DEVICES := radxa,rockpi4a radxa,rockpi4
  UBOOT_DEVICE_NAME := rock-pi-4-rk3399
  BOOT_FLOW := pine64-bin
  DEVICE_PACKAGES := kmod-brcmfmac wpad-openssl \
	brcmfmac-firmware-43456-sdio brcmfmac-nvram-43456-sdio
endef
TARGET_DEVICES += radxa_rock-pi-4a

define Device/radxa_rock-pi-e
  DEVICE_VENDOR := Radxa
  DEVICE_MODEL := ROCK Pi E
  SOC := rk3328
  SUPPORTED_DEVICES := radxa,rockpi-e
  BOOT_FLOW := pine64-bin
endef
TARGET_DEVICES += radxa_rock-pi-e

define Device/xunlong_orangepi-5
  DEVICE_VENDOR := Xunlong
  DEVICE_MODEL := Orange Pi 5
  SOC := rk3588s
  BOOT_FLOW := pine64-img
endef
TARGET_DEVICES += xunlong_orangepi-5

define Device/xunlong_orangepi-5-plus
  DEVICE_VENDOR := Xunlong
  DEVICE_MODEL := Orange Pi 5 Plus
  SOC := rk3588
  BOOT_FLOW := pine64-img
  DEVICE_PACKAGES := kmod-r8125
endef
TARGET_DEVICES += xunlong_orangepi-5-plus

define Device/xunlong_orangepi-r1-plus
  DEVICE_VENDOR := Xunlong
  DEVICE_MODEL := Orange Pi R1 Plus
  SOC := rk3328
  BOOT_FLOW := pine64-bin
  DEVICE_PACKAGES := kmod-usb-net-rtl8152
endef
TARGET_DEVICES += xunlong_orangepi-r1-plus

define Device/xunlong_orangepi-r1-plus-lts
  DEVICE_VENDOR := Xunlong
  DEVICE_MODEL := Orange Pi R1 Plus LTS
  SOC := rk3328
  BOOT_FLOW := pine64-bin
  DEVICE_PACKAGES := kmod-usb-net-rtl8152
endef
TARGET_DEVICES += xunlong_orangepi-r1-plus-lts
