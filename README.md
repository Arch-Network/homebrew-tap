# Arch Network Homebrew Tap

Official Homebrew tap for Arch Network tools.

## Installation

```bash
# Add the tap
brew tap Arch-Network/tap

# Install arch-cli
brew install arch-cli

# Verify installation
arch-cli --help
```

## Available Formulae

### arch-cli

Command-line interface for Arch Network development and interaction.

**Features:**
- Deploy programs to Arch Network
- Manage accounts and transactions
- Start local validator nodes
- Interact with the Arch Network blockchain

**Dependencies:**
- Rust (automatically installed by Homebrew)
- OpenSSL 3.x
- pkg-config

## Updating

```bash
# Update the tap and upgrade arch-cli
brew update && brew upgrade arch-cli
```

## Development

This tap is automatically maintained. The formula is updated automatically whenever a new release is published to the [arch-node repository](https://github.com/Arch-Network/arch-node).

## Issues

If you encounter issues with the Homebrew installation:

1. First try updating and reinstalling:
   ```bash
   brew update
   brew uninstall arch-cli
   brew install arch-cli
   ```

2. For build issues, check the dependencies:
   ```bash
   brew doctor
   brew install rust pkg-config openssl@3
   ```

3. Report issues in the main [Arch Network repository](https://github.com/Arch-Network/arch-node/issues)

## License

This tap is maintained under the same license as the Arch Network project. 