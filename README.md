# WonderRepo

A curated repository for building **WhirlyOS GNOME Edition** with the Edubuntu suite.

WhirlyOS wraps a Linux base in a playful, ADHD-aware shell—complete with simple interfaces, mascot guidance, and seamless access to browser-based learning tools across desktop and embedded platforms.

---

## Description

WhirlyOS GNOME Edition fuses the familiarity of Ubuntu’s educational apps with a lightweight, mascot-driven environment. It comes preconfigured with:

- A GNOME desktop powered by openSUSE Leap 15.4  
- Edubuntu-style educational and creative applications  
- Epiphany as the default, distraction-free browser  
- Optional support for Firefox and Chromium  
- A charming Plymouth theme featuring WhirlyOS mascots  

---

## Features

- Minimal-clutter GNOME Shell with GDM login  
- Preinstalled learning apps: GCompris, Scratch, TuxMath, TuxPaint  
- Creative tools: GIMP, Mu Editor, MuseScore, VLC  
- Browser integrations for Google Classroom, Docs, Drive, YouTube Kids  
- Mascot-led focus helpers (Pomodoro timers, break animations)  
- Lightweight Plymouth spinner and custom wallpaper  
- Open source MIT License  

---

## Prerequisites

### Linux Build Host  
- openSUSE Leap 15.4 or compatible (≥ 20 GB disk recommended)  
- KIWI NG toolchain installed  
- Internet access for repositories and packages  

### Windows (via WSL2)  
- Windows 10/11 with WSL2 enabled  
- Ubuntu or openSUSE distribution in WSL2  
- Install KIWI NG inside WSL2 and ensure WSL filesystem has ≥ 20 GB free  

### Raspberry Pi (ARM)  
- Raspberry Pi 4 (or later) running Raspberry Pi OS or openSUSE ARM  
- KIWI NG cross-build dependencies (`qemu-user-static`, `debootstrap`, etc.)  
- Adjust `config/config.kiwi` to target `aarch64` architecture  
- ≥ 16 GB micro-SD card  

---

## Building the ISO or Image

### On Linux / WSL2

```bash
git clone https://github.com/your-org/WonderRepo.git
cd WonderRepo

sudo kiwi-ng --debug \
  --target-dir /tmp/whirlyos-image \
  --build config/config.kiwi
