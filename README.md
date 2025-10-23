# Etienne's Homebrew Tap

Homebrew formulas for my command-line tools.

## Installation

```bash
# Tap this repository
brew tap etiennebbeaulac/tap

# Install a formula
brew install etiennebbeaulac/tap/git-worktrees
```

## Available Formulas

### git-worktrees

A command-line tool for managing Git worktrees with ease.

```bash
# Install from latest release
brew install etiennebbeaulac/tap/git-worktrees

# Or install from HEAD (latest main branch)
brew install etiennebbeaulac/tap/git-worktrees --HEAD
```

**Repository:** https://github.com/EtienneBBeaulac/git-worktrees

## Usage

After installing a formula, follow the tool-specific setup instructions. For example, with git-worktrees:

```bash
# Source the zsh function
source "$(brew --prefix git-worktrees)/zsh-functions/wt.zsh"

# Use the tool
wt --help
```

## Updating

```bash
# Update Homebrew and upgrade all formulas
brew update
brew upgrade

# Upgrade a specific formula
brew upgrade git-worktrees
```

## Development

### Adding a New Formula

1. Use the template as a starting point (see `Formula/TEMPLATE.rb`)
2. Create your formula file in the `Formula/` directory
3. Update this README to list the new tool
4. Commit and push (CI will automatically test your formula)

```bash
cp ../my-new-tool/Formula/my-new-tool.rb Formula/
git add Formula/my-new-tool.rb README.md
git commit -m "Add my-new-tool formula"
git push
```

**Note:** GitHub Actions will automatically test your formulas on every push to ensure they work correctly.

### Releasing a New Version

When you release a new version of a tool:

1. Create a tag and GitHub release in the tool's repository
2. Use the helper script to update the formula:

```bash
./scripts/update-homebrew-formula.sh v1.0.0 .
```

3. Commit and push the updated formula

See [SETUP_CHECKLIST.md](SETUP_CHECKLIST.md) for detailed setup and release instructions.

## Testing

```bash
# Audit a formula
brew audit --strict etiennebbeaulac/tap/git-worktrees

# Test a formula
brew test git-worktrees
```

## Uninstalling

```bash
# Uninstall a formula
brew uninstall git-worktrees

# Untap this repository
brew untap etiennebbeaulac/tap
```

## Continuous Integration

This tap includes automated testing via GitHub Actions. Every push to the `Formula/` directory triggers:

- Formula style checks (`brew style`)
- Formula auditing (`brew audit --strict`)
- Installation tests
- Formula-defined tests (`brew test`)

See `.github/workflows/test-formulas.yml` for details.

## Resources

- 📖 [Homebrew Taps Documentation](https://docs.brew.sh/Taps)
- 📖 [Formula Cookbook](https://docs.brew.sh/Formula-Cookbook)
- 🔧 [Update Formula Script](scripts/update-homebrew-formula.sh)
- 📝 [Formula Template](Formula/TEMPLATE.rb)

## License

MIT
