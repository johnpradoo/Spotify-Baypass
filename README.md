# Baypass
A cross-platform Spicetify theme which declutters Spotify stock UI and removes all ads.

---
We've switched to a cross-platform ad-blocking solution so make sure to use the latest `install.bat` to get the latest features

---

##### If you just updated to `1.1.80.699.gc3dac750`,
##### Last tested version: `1.1.80.699.gc3dac750`

# Features
This is a Spicetify theme which:
- Removes all Spotify ads ([Source](https://github.com/johnpradoo/Spotify-Baypass/blob/main/adblock.js))
- Removes `Upgrade` button
- Removes `Upgrade to Premium` entry in drop-down menu
- Removes ad placeholders (in Home tab and above the now playing bar)

> **Note for users who install this manually:** Make sure to use the latest Spicetify CLI and Spotify App. Run `spicetify upgrade` and then `spicetify backup apply` to update Spicetify to the latest version.

# Installation

## 1. Automatic installation/updates for Windows users
##### **Note: If you're on Windows 8.1 or lower, please install Powershell v5.1 since the automatic installation script does not support Powershell versions below v5. <br> Download here: https://www.microsoft.com/en-us/download/details.aspx?id=54616 <br> More info: [#30](https://twitter.com/johnpradooo/status/1504558360238170116)**
### Installation
Run the `install.bat` if you are installing for the the first time. <br>
[[CLICK HERE TO DOWNLOAD]](https://raw.githack.com/johnpradoo/Spotify-Baypass/main/install.bat) <br>


### Updating
You can fetch the latest version of this theme by running the `update.bat` script <br>
[[CLICK HERE TO DOWNLOAD]](https://raw.githack.com/johnpradoo/Spotify-Baypass/main/update.bat)


## 2. Manual installation for all users
### Linux and MacOS:
In **Bash**:
```bash
curl -fsSL https://raw.githubusercontent.com/spicetify/spicetify-cli/master/install.sh | sh
cd "$(dirname "$(spicetify -c)")/Themes"
git clone https://github.com/johnpradoo/Spotify-Baypass
spicetify config current_theme Spotify-Baypass
cp "$(dirname "$(spicetify -c)")/Themes/SpotifyNoPremium/adblock.js" "$(dirname "$(spicetify -c)")/Extensions"
spicetify config extensions adblock.js
spicetify apply
```

#### Windows
In **Powershell**:
```powershell
Invoke-WebRequest -UseBasicParsing "https://raw.githubusercontent.com/spicetify/spicetify-cli/master/install.ps1" | Invoke-Expression
cd "$(spicetify -c | Split-Path)\Themes"
git clone https://github.com/johnpradoo/Spotify-Baypass
spicetify config current_theme Spotify-Baypass
Copy-Item "$(spicetify -c | Split-Path)\Themes\SpotifyNoPremium\adblock.js" "$(spicetify -c | Split-Path)\Extensions"
spicetify config extensions adblock.js
spicetify apply
```
