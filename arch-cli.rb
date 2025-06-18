class ArchCli < Formula
  desc "Command-line interface for Arch Network"
  homepage "https://github.com/Arch-Network/arch-node"
  version "0.5.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Arch-Network/arch-node/releases/download/v#{version}/cli-aarch64-apple-darwin"
      sha256 "cf895cbca88031fc8f56ad0b867149a94a500bcbfe4f1a219b2ccebe3392b9e8"
    end
    on_intel do
      url "https://github.com/Arch-Network/arch-node/releases/download/v#{version}/cli-x86_64-apple-darwin"
      sha256 "5cd5bf68add70111623a88a77be056a1aa42fa97995e27b3ac8a74ee5a26c272"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Arch-Network/arch-node/releases/download/v#{version}/cli-x86_64-unknown-linux-gnu"
      sha256 "a8f35fdf9a96dab24d036787d779e8e1a734684c68b117cbf9bc96e01929fde9"
    end
  end

  def install
    bin.install Dir["*"].first => "arch-cli"
  end

  test do
    assert_match "Arch Network CLI", shell_output("#{bin}/arch-cli --help")
  end
end 