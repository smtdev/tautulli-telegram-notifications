## Tautulli notification templates, in order to inform you about any Plex library changes through a Telegram channel or group.

![GitHub release](https://img.shields.io/github/v/release/smtdev/tautulli-telegram-notifications)
![GitHub last commit](https://img.shields.io/github/last-commit/smtdev/tautulli-telegram-notifications)
![GitHub issues](https://img.shields.io/github/issues/smtdev/tautulli-telegram-notifications)

This repository provides comprehensive notification templates for **all 22 Tautulli triggers**, available in both **Spanish (es)** and **English (en)**. These templates are designed to send rich, informative notifications to your Telegram channels, groups, or private chats whenever events occur on your Plex Media Server.

### 🚀 Quick Setup

First, you need to get some basic Telegram information:

* **Bot Token**: Contact [@BotFather](https://telegram.me/BotFather "@BotFather Telegram bot") to create a new bot
* **Chat ID**: Contact [@myidbot](https://telegram.me/myidbot "@myidbot Telegram bot") to get your Chat ID, Group ID, or Channel Username

Once you have them, configure your notification agent in Tautulli:

![Telegram bots setup](resources/tautulli-telegram-setup.jpg)

Select the events you want to monitor in the **Trigger** tab, then copy the appropriate template content into the **Text** tab.

### 📚 Available Templates

All templates are organized by category and language. Check the complete list [here](templates).


## Spanish templates

### Playback Events
* [Empezar a reproducir](templates/es/playback-start-es)
* [Detener por completo reproducción](templates/es/playback-stop-es)
* [Pausar reproducción](templates/es/playback-pause-es)
* [Volver con la reproduccion](templates/es/playback-resume-es)
* [Error de reproducción](templates/es/playback-error-es)
* [Cambio de decisión de transcodificación](templates/es/transcode-decision-change-es)

### Media Markers
* [Marcador de introducción](templates/es/intro-marker-es)
* [Marcador comercial](templates/es/commercial-marker-es)
* [Marcador de créditos](templates/es/credits-marker-es)

### User Activity
* [Reproducción finalizada](templates/es/watched-es)
* [Advertencia de buffer](templates/es/buffer-warning-es)
* [Streams simultáneos excedidos](templates/es/user-concurrent-streams-es)
* [Nuevo dispositivo de usuario](templates/es/user-new-device-es)

### Library Changes
* [Añadido recientemente](templates/es/recently-added-es)

### Server Status
* [Servidor Plex caído](templates/es/plex-server-down-es)
* [Servidor Plex restaurado](templates/es/plex-server-back-up-es)
* [Acceso remoto Plex caído](templates/es/plex-remote-access-down-es)
* [Acceso remoto Plex restaurado](templates/es/plex-remote-access-back-up-es)

### Updates & Maintenance
* [Actualización Plex disponible](templates/es/plex-update-available-es)
* [Actualización Tautulli disponible](templates/es/tautulli-update-available-es)
* [Corrupción base de datos Tautulli](templates/es/tautulli-database-corruption-es)

## English templates

### Playback Events
* [Playback start](templates/en/playback-start-en)
* [Playback stop](templates/en/playback-stop-en)
* [Playback pause](templates/en/playback-pause-en)
* [Playback resume](templates/en/playback-resume-en)
* [Playback error](templates/en/playback-error-en)
* [Transcode decision change](templates/en/transcode-decision-change-en)

### Media Markers
* [Intro marker](templates/en/intro-marker-en)
* [Commercial marker](templates/en/commercial-marker-en)
* [Credits marker](templates/en/credits-marker-en)

### User Activity
* [Watched](templates/en/watched-en)
* [Buffer warning](templates/en/buffer-warning-en)
* [User concurrent streams](templates/en/user-concurrent-streams-en)
* [User new device](templates/en/user-new-device-en)

### Library Changes
* [Recently added](templates/en/recently-added-en)

### Server Status
* [Plex server down](templates/en/plex-server-down-en)
* [Plex server back up](templates/en/plex-server-back-up-en)
* [Plex remote access down](templates/en/plex-remote-access-down-en)
* [Plex remote access back up](templates/en/plex-remote-access-back-up-en)

### Updates & Maintenance
* [Plex update available](templates/en/plex-update-available-en)
* [Tautulli update available](templates/en/tautulli-update-available-en)
* [Tautulli database corruption](templates/en/tautulli-database-corruption-en)

---

## 🛠️ Contributing

We welcome contributions! Please see our [Contributing Guidelines](CONTRIBUTING.md) for details on how to submit improvements, bug reports, or new templates.

### Template Validation

Before submitting changes, run our validation script:
```bash
bash validate-templates.sh
```

## 📝 Template Variables

Each template uses Tautulli's built-in variables. Common variables include:
- `{username}` - Plex username
- `{title}` - Media title  
- `{year}` - Release year
- `{show_name}` - TV show name
- `{season_num}` - Season number
- `{episode_num00}` - Episode number (zero-padded)
- `{device}` - Playback device
- `{platform}` - Client platform

For a complete list, refer to [Tautulli's documentation](https://github.com/Tautulli/Tautulli/wiki/Custom-Notification-Text).

## 📄 License

This project is open source and available under the [MIT License](LICENSE).
