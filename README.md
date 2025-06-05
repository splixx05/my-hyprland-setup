# My Hyprland Setup 🐧📦

### A arch based setup with hyprland as a DE

My definition of a consistent, clean and harmonious DE is to use it without a GUI.
So I decided to only use programs that run via a terminal (with the exception of the browser and the mail client).

![Screenshot clean DE](assets/DE-clear.png)

The runtime environments and dotfiles are kept very minimalistic and require almost no memory.
This leaves more space and time for the cool stuff :)

![Screenshot of a harmonic DE](assets/DE-info.png)

---

## 🔧 Features

This setup uses Arch Linux as the basis (but can also work under other distros).
To keep the environment harmonious I use most of the features via Hyprland itself:

- Hyprpaper
- Hypridle
- Hyprlock
- Hyprdock
- Hyprpicker
- nwg-look / gtk-3.0
- qt6ct
- waybar
- Wlogout
- Wofi

Take also a look to pkglist.txt in the repo,
which defines all packages related to this setup.

---

## 🚀 Installation & Usage

The best way to use the setup is as follows:

- Clone this repo
- first install the basic setup for Arch Linux (you can use the installation script
- then install the list pkglist.txt
- move fonts & icons to the appropriate folder for your distro
- move the folder “dotfiles” to your home directory
- change to $HOME/dotfiles
- execute this command:

```
$ stow .
```

You can then fine-tune the settings in the dotfiles according to your wishes

## 📋 Requirements

Since this repo contains a basic setup for Arch, no special pre-installation is required.
However, if a different distro is desired, then consider using specific tools such as:

- Kittty (or Alycritty)
- Zsh (incl. OMZ)
- Ly (or greetd & tuigreet)
- Tmux
- Neovim
- Plymouth (Splash)
- Meslo / Roboto fonts
- Icons

## 🛡️ Safety

I give no guarantee of functionality or compatibility for this setup, so each installation must be checked individually.
I am happy to receive feedback, but can only provide limited support.
Therefore, use this setup at your own risk.

## 📃 License

**MIT** – feel free to fork, improve, and share!
