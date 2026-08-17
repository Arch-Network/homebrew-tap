class ArchCli < Formula
  desc "Command-line interface for Arch Network"
  homepage "https://github.com/Arch-Network/arch-node"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.8.0/arch-cli-aarch64-apple-darwin"
      sha256 "75c4c4f2af67a3a2cbb877e26197dc5a8601c3eb97eb61b422796c42151863a6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.8.0/arch-cli-x86_64-unknown-linux-gnu"
      sha256 "02a3ebf12c5f4ead0be139f9d38729a11ef733a73a2de5c9faeae7aaa806b654"
    end
  end

  def install
    bin.install Dir["*"].first => "arch-cli"
  end

  test do
    assert_match "Arch Network CLI", shell_output("#{bin}/arch-cli --help")
  end
end
