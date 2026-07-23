# Playit Agent App

![Project Stage][project-stage-shield]
![License][license-shield]
![Supports amd64 Architecture][amd64-shield]

Run a Playit.gg tunnel agent inside Home Assistant to expose local services (such as a Minecraft server) to the internet without port forwarding.

---

## About

This app runs the Playit.gg agent inside Home Assistant and connects your instance to the Playit network.

It allows external users to access services hosted on your local network even if:

* Port forwarding is unavailable
* You are behind double NAT or CGNAT
* Your router does not allow inbound connections

---

## Features

* No router configuration required
* Works behind double NAT / CGNAT
* Automatic startup with Home Assistant
* Simple configuration using a Playit secret key

---

## Installation

1. Open Home Assistant
2. Go to **Settings → Apps → App Store**
3. Open the menu (⋮) → **Repositories**
4. Add:

```text
https://github.com/Davidek034/playit-ha-addon
```

5. Find **Playit Agent**
6. Click **Install**

[![Open your Home Assistant instance and show the add app repository dialog with a specific repository URL pre-filled.](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2FDavidek034%2Fplayit-ha-addon%2F)

---

## Configuration

Example configuration:

```yaml
secret_key: "your_playit_secret_key"
```

---

## Obtaining a Secret Key

1. Go to https://playit.gg/account/agents
2. Create a new agent
3. Copy the secret key
4. Paste it into the app configuration

---

## Usage

1. Start the app
2. Open the Playit dashboard:

https://playit.gg/account/tunnels

3. Create a tunnel

### Example: Minecraft Java Server

* Type: Minecraft Java

Local address:

```text
192.168.X.X:25565
```

Do not use:

```text
127.0.0.1:25565
```

because Home Assistant apps run in separate containers.

4. Save the tunnel

---

## Connecting

After creating a tunnel, Playit provides an address such as:

```text
example.playit.gg:12345
```

Use this address in your client to connect.

---

## Notes

* Ensure the target service is running
* Use the correct local IP of your Home Assistant machine
* Email verification on Playit is recommended

---

## Troubleshooting

### No secret key configured

Verify configuration:

```yaml
secret_key: "your_key"
```

Restart the app after saving.

---

### Connection refused

If the app logs show connection errors to:

```text
127.0.0.1:25565
```

Update the tunnel to use your Home Assistant IP instead:

```text
192.168.X.X:25565
```

---

### App does not update

Reload the app store:

**Settings → Apps → ⋮ → Reload**

Or restart Supervisor.

---

## Support

Playit documentation:

https://playit.gg

Repository issues:

https://github.com/Davidek034/playit-ha-addon/issues

---

## License

This project is licensed under the MIT License.

---

[project-stage-shield]: https://img.shields.io/badge/project%20stage-stable-brightgreen.svg
[license-shield]: https://img.shields.io/badge/license-MIT-blue.svg
[amd64-shield]: https://img.shields.io/badge/amd64-supported-green.svg
