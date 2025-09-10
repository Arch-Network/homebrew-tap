class ArchCli < Formula
  desc "Command-line interface for Arch Network"
  homepage "https://github.com/Arch-Network/arch-node"
  version "0.5.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.5.9/arch-cli-aarch64-apple-darwin"
      sha256 "ba1056b49564a1ef6e71deb27ed5975d67506e69b68b66b257c9fee6adce070a"
    end
    on_intel do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.5.9/arch-cli-x86_64-apple-darwin"
      sha256 "b9c1ce053f380b0ef770fb8c55a55e52836f755162bd4fbfe0675b2d0d0c054b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.5.9/arch-cli-x86_64-unknown-linux-gnu"
      sha256 "d295acb171b1b99cf705cc32e1d444fee30d2ddf1a0ebaf5977c01cbf0f56791"
    end
  end

  def install
    bin.install Dir["*"].first => "arch-cli"
  end

  test do
    assert_match "Arch Network CLI", shell_output("#{bin}/arch-cli --help")
  end
end
