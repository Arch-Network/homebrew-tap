class ArchCli < Formula
  desc "Command-line interface for Arch Network"
  homepage "https://github.com/Arch-Network/arch-node"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.9.0/arch-cli-aarch64-apple-darwin"
      sha256 "279bd46056aaf0a75cf2a6083d5e479572da796e6b947db3dd6bf8d7c348ebfe"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.9.0/arch-cli-x86_64-unknown-linux-gnu"
      sha256 "17e0520b6c10a32beb3f26f4521ed880f9dfb29f517b195ff19161faa85a88b5"
    end
  end

  def install
    bin.install Dir["*"].first => "arch-cli"
  end

  test do
    assert_match "Arch Network CLI", shell_output("#{bin}/arch-cli --help")
  end
end
