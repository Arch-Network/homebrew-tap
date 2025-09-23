class ArchCli < Formula
  desc "Command-line interface for Arch Network"
  homepage "https://github.com/Arch-Network/arch-node"
  version "0.5.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.5.12/arch-cli-aarch64-apple-darwin"
      sha256 "d1d30e4913114a04974a92e226d6a2f26261753f34770b2ec0d2a14aa9b38529"
    end
    on_intel do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.5.12/arch-cli-x86_64-apple-darwin"
      sha256 "7940dfb12741c5c5644aa3202a19b92cb5ab4602f222139dc83d3d46b46fccbc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.5.12/arch-cli-x86_64-unknown-linux-gnu"
      sha256 "90cc4d12ccc80b5ea3d70b3d5646ec49d5490dfd7be54ec21a73bbd02ed8c1da"
    end
  end

  def install
    bin.install Dir["*"].first => "arch-cli"
  end

  test do
    assert_match "Arch Network CLI", shell_output("#{bin}/arch-cli --help")
  end
end
