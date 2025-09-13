# Tautulli Template Variables

This document lists additional Tautulli template variables that may be useful for notifications.

## Episode Information

- `{season_episode_count}` - The total number of episodes in the current season. This allows for formatting like "Episode 3 of 10" to show progress through a season.
- `{episode_num}` - Episode number without zero-padding (e.g., "6")
- `{episode_num00}` - Episode number with zero-padding (e.g., "06")

Example usage:
```
Season {season_num}, Episode {episode_num} of {season_episode_count} - "{episode_name}".
```

This will produce output like:
```
Season 3, Episode 6 of 10 - "Last hope".
```

For detailed episode information, you can use:
```
Episode: S{season_num}E{episode_num00} of {season_episode_count} - "{episode_name}"
```

Which produces:
```
Episode: S3E06 of 10 - "Last hope"
```

## Notes

The `{season_episode_count}` variable should be available in Tautulli when processing recently-added episode notifications, as Plex typically provides season metadata including episode counts. This feature allows users to see how many episodes are in the current season and track their viewing progress.