# HeseOS

Arch Linux-based hybrid ordering kiosk and desktop operating system.

## Modes

- **Hyprland desktop** — default Wayland desktop with a terminal, app launcher, status bar and browser.
- **Ordering kiosk** — full-screen local ordering interface with categories, cart and local order confirmation. It does not process real payments.
- **Optional desktops** — KDE Plasma, XFCE and GNOME can be installed after boot using `heseos-desktop-install`.

## Build a bootable ISO

The GitHub Actions workflow in `.github/workflows/build.yml` builds an Archiso ISO on pushes and manual runs. Download the `HeseOS-ISO` artifact from the workflow run.

For a local build on Arch Linux:

```bash
sudo pacman -S --needed archiso
sudo mkarchiso -v -w /var/tmp/heseos-work -o ./out ./profile
```

## Live session

The live image starts a simple text mode chooser. Select Hyprland desktop or Ordering kiosk. The live account is `heseos` (no password in this development image). This is intended for testing; set up proper user accounts and authentication before production deployment.

## Hardware

Hyprland requires a working DRM/KMS graphics driver and Wayland-compatible GPU. The ISO includes common open-source graphics drivers. NVIDIA proprietary driver support is not bundled.

## Project status

Early development. The ISO workflow and kiosk are a starting implementation and should be tested on target hardware before being used in a real restaurant. No payment terminal, fiscal printer, kitchen integration or cloud backend is included.