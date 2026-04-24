class ArchCli < Formula
  desc "Command-line interface for Arch Network"
  homepage "https://github.com/Arch-Network/arch-node"
  version "0.6.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.6.4/arch-cli-aarch64-apple-darwin"
      sha256 "9f9644b2255f1d47645d8ca29ec8e1fde48ee1987e624e4e171bb16e96a918e8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.6.4/arch-cli-x86_64-unknown-linux-gnu"
      sha256 "28d5af4c4c292efffd44c39882e3faa7eb4af98e10d0ea48f99ba6941e16c115"
    end
  end

  def install
    bin.install Dir["*"].first => "arch-cli"
  end

  test do
    assert_match "Arch Network CLI", shell_output("#{bin}/arch-cli --help")
  end
end
