# Playit Agent Home Assistant App

This add-on runs a [Playit.gg](https://playit.gg) tunnel agent inside Home Assistant, allowing you to expose services (like a Minecraft server) to the internet.

---

## Features

- No router configuration needed 
- Secure tunnels via Playit.gg
- Works with Minecraft 
- Runs automatically with Home Assistant

---

## Installation

1. Add this repository to Home Assistant:
   - Go to **Settings → Add-ons → Add-on Store**
   - Click **⋮ → Repositories**
   - Add:
     ```
     https://github.com/Davidek034/playit-ha-addon
     ```

2. Install **Playit Agent**

3. Open the add-on and configure your secret key

---

## Configuration

Example configuration:

```yaml
secret_key: "your_playit_secret_key"
