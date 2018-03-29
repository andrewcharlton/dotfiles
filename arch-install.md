# Arch Install

Steps for installing arch, for next time I nuke my system!

## Systemd-boot

Create entry file, `/boot/loader/entries/arch.conf`:

```
title   Arch Linux
linux   /vmlinuz-linux
initrd 	/intel-ucode.img
initrd  /initramfs-linux.img
options root=PARTUUID=28f547b4-1659-f34f-844a-0c19cb151138 acpi_rev_override=1
```

where PARTUUID is given by `blkid -s PARTUUID -o value /dev/nvme0n1p2`

Add the loader conf, `/boot/loader/loader.conf`

```
default	arch
editor	0
```

Add automatic update script, `/etc/pacman.d/hook/systemd-boot.hook`:

```
[Trigger]
Type = Package
Operation = Upgrade
Target = systemd

[Action]
Description = Updating systemd-boot
When = PostTransaction
Exec = /usr/bin/bootctl update
```

## GPU

Install `bbswitch` and `bumblebee`. Enable the bumblebee service: `sudo systemctl enable bumblebeed.service`

## Wifi

Install:
  - `wpa_supplicant`
  - `dialog`
  - `wpa_actiond`

As dependencies for netctl. `sudo pacman -S --asdeps wpa_supplicant wpa_actiond dialog`

Enable the netctl-auto service: `sudo systemctl enable netctl-auto@wlp2s0.service` 

## ZSH

Add the following to `/etc/zsh/zshenv`:

```export ZDOTDIR="$HOME/.config/zsh"```
