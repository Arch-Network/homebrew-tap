class ArchCli < Formula
  desc "Command-line interface for Arch Network"
  homepage "https://github.com/Arch-Network/arch-node"
  version "0.8.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.8.9/arch-cli-aarch64-apple-darwin"
      sha256 "0a2a36bd2066128c61c255862ec4c722a58347e11624f64f8c6844323bc60281"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.8.9/arch-cli-x86_64-unknown-linux-gnu"
      sha256 "70921b85ec62318cfb0a686012fb50e537aa12750cf9ea9bda76ec0367fd32f9"
    end
  end

  def install
    bin.install Dir["*"].first => "arch-cli"
  end

  test do
    assert_match "Arch Network CLI", shell_output("#{bin}/arch-cli --help")
  end
end
