class ArchCli < Formula
  desc "Command-line interface for Arch Network"
  homepage "https://github.com/Arch-Network/arch-node"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.7.0/arch-cli-aarch64-apple-darwin"
      sha256 "051f0a6ad6b6ad9e8adc0beeab4784ab4233cbedb359ec3c932945e4bc870243"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.7.0/arch-cli-x86_64-unknown-linux-gnu"
      sha256 "0dc8671ab45e4b4be078454c3c7a73466bf72458f6bf1c767643722495ec4a06"
    end
  end

  def install
    bin.install Dir["*"].first => "arch-cli"
  end

  test do
    assert_match "Arch Network CLI", shell_output("#{bin}/arch-cli --help")
  end
end
