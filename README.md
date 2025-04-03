# Pixel-Spoofer-Magisk-Module
"Universal Magisk module to spoof device as Pixel 8 Pro with dynamic app compatibility"  


# 🚀 Pixel 8 Pro Universal Spoofer - Magisk Module

[![GitHub license](https://img.shields.io/github/license/5C0R410N/Pixel-Spoofer-Magisk-Module?color=blue)](https://github.com/5C0R410N/Pixel-Spoofer-Magisk-Module/blob/main/LICENSE)
[![Magisk Version](https://img.shields.io/badge/Magisk-26%2B-brightgreen)](https://github.com/topjohnwu/Magisk)

The ultimate solution to make your device appear as a **Google Pixel 8 Pro** while maintaining full functionality of cameras, browsers, and banking apps.

## 🌟 Features
- **Smart Dynamic Spoofing**
  - Auto-switches between Pixel/Realme models per-app
  - Works seamlessly with Chrome, Kiwi, Firefox, Opera, etc.
- **Crash Fixes**
  - Solves camera/browser crashes in GSIs
  - Fixes face unlock compatibility
- **Safety First**
  - Bootloop-proof design
  - No system partition modifications
- **Wide Compatibility**
  - Tested on crDroid, LineageOS, Pixel Experience GSIs
  - Supports Android 12-14

## 📥 Installation Guide
### Basic Method
1. Download latest [PixelSpoofer.zip](https://github.com/5C0R410N/Pixel-Spoofer-Magisk-Module/releases)
2. Open Magisk → Modules → **Install from storage**
3. Select the ZIP file
4. **Reboot twice** (critical for full functionality)

### Advanced (Termux)
```bash
su -c 'curl -L https://bit.ly/pixel-spoofer -o /sdcard/PixelSpoofer.zip && magisk --install-module /sdcard/PixelSpoofer.zip'
```

## 🛠️ For Developers
### Build Locally
```bash
git clone https://github.com/5C0R410N/Pixel-Spoofer-Magisk-Module.git
cd Pixel-Spoofer-Magisk-Module

# Edit configuration:
nano system.prop       # Change device props
nano common/*.sh      # Modify scripts
```

### Key Files
| File | Purpose |
|------|---------|
| `system.prop` | Core device properties |
| `customize.sh` | Runtime adjustments |
| `service.sh` | Background prop manager |

## 🤝 Credits
### Primary Developer
- **[5C0R410N](https://github.com/5C0R410N)**  
  _"For creating and maintaining this project"_

### Special Thanks
- **[DeepSeek Chat](https://deepseek.com)**  
  _"For invaluable coding assistance and troubleshooting"_
- **Magisk Community**  
  _"For the amazing systemless modification framework"_

## ❤️ Support
Like this project? Here's how you can help:
1. Give it a ⭐ on GitHub
2. Share on [XDA Developers](https://www.xda-developers.com)
3. Contact On Telegram @FR057YK1D

## 📜 License
MIT License - See [LICENSE](LICENSE) for details

> **Disclaimer**: Use at your own risk. Not responsible for bootloops or broken apps.
