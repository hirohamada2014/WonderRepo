# WonderRepo

A curated repository for building **WhirlyOS Linux**, based on Debian.

WhirlyOS wraps a Linux base in a playful, ADHD-aware shell—complete with simple interfaces, and seamless access to browser-based learning tools across desktop and embedded platforms. It has the features of the screen time limit to keep you free from distraction and be healthy. 

> **Warning:** The work on WhirlyOS is still ongoing, so please stay tuned for the first release of v1.0.
There are problems while I'm trying to build the disk image in GitHub Codespaces, but don't worry, I'm trying to do my best.

---

## 🐧 Base Distribution

WhirlyOS is based on **Debian Stable**, ensuring:

- 🔒 Rock-solid reliability
- 📦 Access to thousands of packages via APT
- 🛠️ Easy customization and community support
- 🧩 Compatibility with most hardware

---

## 🎬 Motto

> **Find your spark. Find your way.**

Inspired by *Soul* (2020), this motto reflects WhirlyOS’s mission to help users discover their passion through technology.  
It is not an official Disney or Pixar tagline and is safe to use.

---


## Desktop Envirnoments

| **Edition Name**   | **Desktop Environment** | **Inspired By**     | **Notes**                                      | **Reasons why it's called** |**Specs**                          |
|--------------------|--------------------------|---------------------|-----------------------------------------------| ------------------------------------------|------------------------------------|
| **SoulFrame**      | GNOME                    | *Soul*              | Dreamlike UI, celestial theme, Great Before    | The dream interface feels like perfect| 2 GB RAM, 20 GB disk, GPU optional |
| **MeiLite**        | XFCE                     | *Turning Red*       | Fast, expressive, lightweight                  | Since Turning Red is set in 2002, Xfce desktop is used in order to give the olden times | 1 GB RAM, 10 GB disk               |
| **ElementalDesk**  | KDE Plasma               | *Elemental*         | Vibrant, customizable, elemental UI            | The classical elements (not the elements of the periodic table) fit perfectly in Plasma | 4 GB RAM, 25 GB disk               |
| **NotebookOS**     | Openbox                  | *Luca*              | Minimal, seaside calm, fast boot               | Since, older time periods gave this perfect interface of the old BunsenLabs into WhirlyOS to the run | 512 MB RAM, 5 GB disk              |
| **QuestLand**      | Budgie                   | *Onward*            | Adventurous, magical, modern desktop           | For fantasy fans, this is the perfect desktop for them | 2 GB RAM, 15 GB disk               |
| **IntellSpace**    | LXQt                     | *Wall·E*            | Futuristic, efficient, low-resource            | Since the movie is released in 2008, LXQt gives teh Windows 7 interface back to life | 1 GB RAM, 8 GB disk                |
  
## 🎯 Goals

- 🧠 **Inspire creativity** through themed desktop environments based on beloved animated films
- 👨‍👩‍👧‍👦 **Support families** with built-in parental controls and screen time tools
- 💡 **Make computing magical** with custom UI elements, mascots, and cinematic flair
- 🐧 **Revive old hardware** with lightweight editions that run smoothly on low specs
- 🎨 **Celebrate diversity** in design, emotion, and user experience—just like Pixar’s characters
- 👨‍🎓 **For homeschooling, private and public schools** by giving educational tools (not in minimal) for help (without artificial intelligence)
  **Notes:** If anyone prefer doing homework (e.g. math) on physical notebooks, don't worry; you can use WhirlyOS for coding, or anything you can do in your computer as a technicial, or as exploring and surfing (with restrictions.)

---


## Features

- Minimal-clutter GNOME Shell with GDM login  
- Preinstalled learning apps: GCompris, Scratch, TuxMath, TuxPaint  
- Creative tools: GIMP, Mu Editor, MuseScore, VLC  
- Browser integrations for Google Classroom, Docs, Drive, YouTube Kids  
- Screen Time features  

---
## 📅 WhirlyOS Development Timeline (2025)

WhirlyOS is the latest chapter in a multi-year journey of OS experimentation and creativity. Here's how it evolved:

| **Month** | **Phase** | **Platform & Tools** | **Key Developments** |
|-----------|-----------|----------------------|-----------------------|
| **March 2025** | 🐼 PandaOS Revival | Visual Basic 6 → C# with COSMOS | - Revisited early PandaOS concepts<br>- Migrated legacy VB6 code to C#<br>- Experimented with COSMOS kernel for custom bootloader |
| **April 2025** | 🎓 PixOS Educational | SUSE Studio Express + OBS | - Built PixOS for schools and learning labs<br>- Used SUSE Studio for rapid prototyping<br>- Published builds via Open Build Service |
| **May 2025** | 🌀 WhirlyOS Foundation | Debian Stable + GNOME | - Chose Debian for long-term stability<br>- Created SoulFrame edition (GNOME)<br>- Developed core scripts: `screen_time.sh`, `nightshield.sh` |
| **June 2025** | 🎭 WhirlyOS Editions | XFCE, KDE, Budgie | - Launched themed editions: MeiLite, ElementalDesk, QuestLand<br>- Integrated cinematic branding and mascots<br>- Built ISOs using Cubic and Linux Live Kit |
| **July 2025** | Ongoing work | Disk image builds | - **Since WhirlyOS work is still in process in the last 5 or 6 weeks, don't worry for that; it will come soon.** |

---

## How to install 

### Linux Build Host  
- Any Linux distro 
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
