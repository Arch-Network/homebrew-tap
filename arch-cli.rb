class ArchCli < Formula
  desc "Command-line interface for Arch Network"
  homepage "https://github.com/Arch-Network/arch-node"
  version "0.8.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.8.3/arch-cli-aarch64-apple-darwin"
      sha256 "fcfd5356a0ff08f04bafbcf5ec9c803f7134ddec02adc431d2c268315834198d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.8.3/arch-cli-x86_64-unknown-linux-gnu"
      sha256 "112fd9babf39dfd4dcae9dca405a9ab4c0113ba0314c5a6341ed43053c7a5db2"
    end
  end

  def install
    bin.install Dir["*"].first => "arch-cli"
  end

  test do
    assert_match "Arch Network CLI", shell_output("#{bin}/arch-cli --help")
  end
end
