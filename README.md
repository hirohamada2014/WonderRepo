# WonderRepo

A curated repository for building **WhirlyOS Linux** with the Edubuntu suite.

WhirlyOS wraps a Linux base in a playful, ADHD-aware shell—complete with simple interfaces, and seamless access to browser-based learning tools across desktop and embedded platforms. It has the features of the screen time limit to keep you free from distraction and be healthy.

---

## Desktop Envirnoments

| **Edition Name**   | **Desktop Environment** | **Inspired By**     | **Notes**                                      | **Specs**                          |
|--------------------|--------------------------|---------------------|-----------------------------------------------|------------------------------------|
| **SoulFrame**      | GNOME                    | *Soul*              | Dreamlike UI, celestial theme, Great Before    | 2 GB RAM, 20 GB disk, GPU optional |
| **MeiLite**        | XFCE                     | *Turning Red*       | Fast, expressive, lightweight                  | 1 GB RAM, 10 GB disk               |
| **ElementalDesk**  | KDE Plasma               | *Elemental*         | Vibrant, customizable, elemental UI            | 4 GB RAM, 25 GB disk               |
| **NotebookOS**     | Openbox                  | *Luca*              | Minimal, seaside calm, fast boot               | 512 MB RAM, 5 GB disk              |
| **QuestLand**      | Budgie                   | *Onward*            | Adventurous, magical, modern desktop           | 2 GB RAM, 15 GB disk               |
| **IntellSpace**    | LXQt                     | *Wall·E*            | Futuristic, efficient, low-resource            | 1 GB RAM, 8 GB disk                |
  
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
