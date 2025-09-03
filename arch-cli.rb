class ArchCli < Formula
  desc "Command-line interface for Arch Network"
  homepage "https://github.com/Arch-Network/arch-node"
  version "0.5.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.5.8/arch-cli-aarch64-apple-darwin"
      sha256 "546393de102cba6f969393cba3841022814776412f9fd981109ff2d3b62597ee"
    end
    on_intel do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.5.8/arch-cli-x86_64-apple-darwin"
      sha256 "b020c44ed4a3a715fa32296487d5b71208c4dcd2be4f4faf6a26d59bf4368d67"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.5.8/arch-cli-x86_64-unknown-linux-gnu"
      sha256 "de223745e9fcdef39218a96032db9e124534c71f7fefb6f90b5c56be0447ecdb"
    end
  end

  def install
    bin.install Dir["*"].first => "arch-cli"
  end

  test do
    assert_match "Arch Network CLI", shell_output("#{bin}/arch-cli --help")
  end
end
