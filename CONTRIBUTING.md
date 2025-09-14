# Contributing to Tautulli Telegram Notifications

Thank you for your interest in contributing! This document provides guidelines for contributing to this project.

## 🚀 Getting Started

1. Fork the repository
2. Create a feature branch: `git checkout -b feature/new-template`
3. Make your changes
4. Test your changes using the validation script
5. Submit a pull request

## 📝 Template Guidelines

### File Naming
- Spanish templates: `trigger-name-es`
- English templates: `trigger-name-en`
- Use lowercase and hyphens only

### Template Structure
Each template should include:
1. **Header comment** with trigger description
2. **Subject line** following the format: `### Subject -> <b>({server_name})</b> | Event Description ###`
3. **Timestamp line**: `{timestamp} - {datestamp}`
4. **Content sections** for different media types (`<movie>`, `<episode>`, `<show>`, etc.)
5. **Appropriate emojis** for visual clarity
6. **Relevant Tautulli variables**

### Language Standards
- **Spanish**: Use formal language, proper accents.
- **English**: Use present perfect tense for completed actions (e.g., "has stopped", "has watched")
- **Consistency**: Ensure Spanish and English templates have equivalent information

### HTML Formatting
- Use `<b>` for bold text
- Use `<i>` for italic text  
- Proper link formatting: `<a href="{url}">{text}</a>`
- Include poster links: `<a href="{poster_url}"></a>`

## 🔍 Testing

Before submitting:

1. **Run validation script**:
   ```bash
   bash validate-templates.sh
   ```

2. **Manual checks**:
   - Verify all Tautulli variables are properly formatted: `{variable_name}`
   - Check HTML tags are properly closed
   - Ensure consistent emoji usage
   - Verify links work with sample data

3. **Language pair verification**:
   - Every Spanish template (`-es`) must have an English counterpart (`-en`)
   - Both should contain equivalent information
   - Check for proper translation of technical terms

## 📋 Pull Request Guidelines

### Title Format
Use descriptive titles:
- `feat: add user-concurrent-streams templates`
- `fix: correct verb tense in playback-stop-en`
- `docs: update README with new template category`

### Description Template
```markdown
## Description
Brief description of changes

## Type of Change
- [ ] New template pair (es/en)
- [ ] Bug fix in existing template
- [ ] Documentation update
- [ ] Other (please specify)

## Testing
- [ ] Validation script passes
- [ ] Manual testing completed
- [ ] Both language versions verified

## Screenshots (if applicable)
Add screenshots of notification examples
```

## 🐛 Bug Reports

When reporting bugs, include:
- Template file name
- Tautulli trigger used
- Expected vs actual behavior
- Screenshots if applicable

## 💡 Feature Requests

For new templates or features:
- Specify which Tautulli trigger
- Describe desired information to include
- Provide use case explanation
- Language preference (Spanish, English, or both)

## 🎯 Template Categories

Current categories:
- **Playback events**: start, stop, pause, resume, error, buffer
- **Media Mmrkers**: intro, commercial, credits
- **User activity**: concurrent streams, new device, watched
- **Library changes**: recently added
- **Server status**: server up/down, remote access
- **Updates & maintenance**: Plex updates, Tautulli updates, database issues

## ✅ Code of Conduct

- Be respectful
- Provide constructive feedback
- Focus on improving the project
- Help newcomers learn and contribute

## 📚 Resources

- [Tautulli Documentation](https://github.com/Tautulli/Tautulli/wiki)
- [Telegram Bot API](https://core.telegram.org/bots/api)
- [HTML Formatting Guide](https://core.telegram.org/bots/api#html-style)

Thank you for contributing!
