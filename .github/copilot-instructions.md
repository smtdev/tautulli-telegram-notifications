# Tautulli Telegram Notifications Template Repository

This repository contains notification templates for Tautulli to send Telegram notifications about Plex library changes and user activity. The templates are provided in both Spanish (es/) and English (en/).

Always reference these instructions first and fallback to search or bash commands only when you encounter unexpected information that does not match the info here.

## Working Effectively

This is a **template-only repository** with no build processes, tests, or code compilation:
- Do NOT look for package.json, requirements.txt, Makefile, or build scripts - they do not exist
- Do NOT attempt to run npm install, pip install, or any build commands - there are none
- Do NOT look for test files or test runners - there are no tests to run
- This repository contains only configuration templates and documentation

### Repository Structure
- `README.md` - Main documentation with setup instructions
- `LICENSE` - MIT license file
- `resources/` - Contains setup images (tautulli-telegram-setup.jpg)
- `templates/en/` - English notification templates (6 files)
- `templates/es/` - Spanish notification templates (6 files)
- `.github/ISSUE_TEMPLATE/` - GitHub issue templates

### Template Files
Each language directory contains 6 notification templates:
- `playback-start-*` - Notification when playback starts
- `playback-stop-*` - Notification when playback stops completely
- `playback-pause-*` - Notification when playback is paused
- `playback-resume-*` - Notification when playback resumes
- `watched-*` - Notification when content is finished watching
- `recently-added-*` - Notification when new content is added to library

## Validation

### Template Content Validation
Always validate template files after making changes:
- Check that template variables are correctly formatted (e.g., `{username}`, `{title}`)
- Ensure HTML-like tags are properly closed (e.g., `<movie>...</movie>`, `<episode>...</episode>`)
- Verify that Telegram-specific HTML formatting is valid (`<b>`, `<i>`, `<a href="">`)
- Confirm that template structure follows the existing pattern:
  - Subject line with server name
  - Conditional blocks for different media types
  - Consistent variable usage across similar templates

### File Integrity Check
Run this command to verify all template files exist and have content:
```bash
find templates/ -name "*-en" -o -name "*-es" | wc -l
```
Should return 12 (6 English + 6 Spanish templates).

### Template Syntax Validation
Check template syntax by viewing file content:
```bash
head -5 templates/en/playback-start-en
```
Verify it shows the expected subject line and opening structure.

## Common Tasks

### Adding New Templates
1. Create the English version in `templates/en/` with suffix `-en`
2. Create the Spanish version in `templates/es/` with suffix `-es`
3. Follow the existing naming convention: `[notification-type]-[language]`
4. Use the same template structure as existing files:
   - Subject line with `({server_name})` placeholder
   - Conditional blocks for different media types (`<movie>`, `<episode>`, `<show>`, etc.)
   - Consistent variable formatting and HTML tags

### Modifying Existing Templates
1. Always modify both language versions to maintain parity
2. Test template variables exist in Tautulli documentation
3. Preserve HTML formatting for Telegram compatibility
4. Keep the subject line format consistent across all templates

### Template Variable Reference
Common Tautulli variables used in templates:
- User info: `{username}`, `{user_streams}`
- Media info: `{title}`, `{year}`, `{show_name}`, `{episode_name}`
- Technical info: `{quality_profile}`, `{device}`, `{platform}`, `{transcode_decision}`
- Links: `{plex_url}`, `{imdb_url}`, `{themoviedb_url}`
- Timestamps: `{timestamp}`, `{datestamp}`

### Documentation Updates
When modifying templates:
1. Update the README.md if adding new template types
2. Ensure the setup image in resources/ is still accurate
3. Update both language sections in README.md when adding templates

## File Locations

### Frequently Modified Files
- `templates/en/` - English templates (most commonly modified)
- `templates/es/` - Spanish templates (modify in parallel with English)
- `README.md` - Update when adding new template types

### Reference Files
- `resources/tautulli-telegram-setup.jpg` - Setup screenshot for documentation
- `LICENSE` - MIT license (rarely modified)
- `.github/ISSUE_TEMPLATE/feature_request.md` - GitHub issue template

## Common Commands

Since this is a template-only repository, the most common operations are:

```bash
# View repository structure
ls -la

# Check all template files
find templates/ -type f | sort

# View specific template content
cat templates/en/playback-start-en

# Compare English and Spanish versions
diff templates/en/playback-start-en templates/es/playback-start-es

# Verify all files are present
ls templates/en/ && ls templates/es/
```

## Validation Scenarios

After making any changes to templates:
1. **Content Check**: Verify template variables are properly formatted
2. **Structure Check**: Ensure HTML tags are properly opened/closed
3. **Parity Check**: Confirm both English and Spanish versions are updated
4. **Documentation Check**: Update README.md if template list changed
5. **Variable Check**: Verify all Tautulli variables are spelled correctly

**CRITICAL**: This repository has no build processes, tests, or runtime validation. Manual inspection is the only validation method available.