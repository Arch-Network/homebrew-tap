class ArchCli < Formula
  desc "Command-line interface for Arch Network"
  homepage "https://github.com/Arch-Network/arch-node"
  version "0.8.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.8.5/arch-cli-aarch64-apple-darwin"
      sha256 "9d69cb1e94ffb0e564c355a9f062a10ca07e4b986969809e53d8b4db69efa00d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.8.5/arch-cli-x86_64-unknown-linux-gnu"
      sha256 "2343725753a857d2f204a5d9ad19cd0ce4980e04149bf06121f5c054da64391b"
    end
  end

  def install
    bin.install Dir["*"].first => "arch-cli"
  end

  test do
    assert_match "Arch Network CLI", shell_output("#{bin}/arch-cli --help")
  end
end
