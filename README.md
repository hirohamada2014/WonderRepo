# WonderRepo

A curated repository for building **WhirlyOS Linux** with the Edubuntu suite.

WhirlyOS wraps a Linux base in a playful, ADHD-aware shell—complete with simple interfaces, and seamless access to browser-based learning tools across desktop and embedded platforms. It has the features of the screen time limit to keep you free from distraction and be healthy.

---

## Desktop Envirnoments

-  **SoulFrame**, GNOME desktop inspired by Soul (2020)
-  **MeiLite**, Xfce desktop inspired by Turning Red (2022)
-  **ElementaDesk**, KDE Plasma desktop inspired by Elemental (2023)
-  **NotebookOS**, Openbox desktop inspired by Luca (2021)
-  **QuestLand**, Budgie desktop inspired by Onward (2020)
-  **IntellSpace**, LXQt desktop inspired by WALL*E (2008)
  
## Description

WhirlyOS fuses the familiarity of Ubuntu’s educational apps with a lightweight and perfect environment. It comes preconfigured with:

- Disney and Pixar-inspired desktop envirnoments powered by Debian
- Edubuntu-style educational and creative applications  
- Epiphany as the default, distraction-free browser  
- Optional support for Firefox and Chromium  
- Screen Time features to keep students and coders out of distraction, off-topic, and unmindfulness. This helps the child to be healthy and be genius.

---

## Features

- Minimal-clutter GNOME Shell with GDM login  
- Preinstalled learning apps: GCompris, Scratch, TuxMath, TuxPaint  
- Creative tools: GIMP, Mu Editor, MuseScore, VLC  
- Browser integrations for Google Classroom, Docs, Drive, YouTube Kids  
- Screen Time features  

---

## Prerequisites

### Linux Build Host  
- openSUSE Leap 15.4 or compatible (≥ 20 GB disk recommended)  
- KIWI NG toolchain installed  
- Internet access for repositories and packages  

### Windows
- Windows 10/11 (any version works well as long as you have 512 MB RAM and 8 GB storage)
- Bootable USB drive 
- Imaging software (e.g. Rufus, BalenaEtcher)

### Raspberry Pi (ARM)  
- Raspberry Pi Zero 2 w or later
- a microSD card  
- Raspberry Pi Imager

---

## Building the ISO or Image

### On Windows

```bash
git clone https://github.com/your-org/WonderRepo.git
cd WonderRepo

sudo kiwi-ng --debug \
  --target-dir /tmp/whirlyos-image \
  --build config/config.kiwi
