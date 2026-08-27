class ArchCli < Formula
  desc "Command-line interface for Arch Network"
  homepage "https://github.com/Arch-Network/arch-node"
  version "0.8.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.8.6/arch-cli-aarch64-apple-darwin"
      sha256 "b424f58e35b8cd1d318c05e7fd9fbffd46c82bd85d5b412d989e633b6b5088b9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.8.6/arch-cli-x86_64-unknown-linux-gnu"
      sha256 "7c4a5ce938b477afe332268f711affcae47ffb0ee180ba396fcc23a824bb52a0"
    end
  end

  def install
    bin.install Dir["*"].first => "arch-cli"
  end

  test do
    assert_match "Arch Network CLI", shell_output("#{bin}/arch-cli --help")
  end
end
