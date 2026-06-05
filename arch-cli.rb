class ArchCli < Formula
  desc "Command-line interface for Arch Network"
  homepage "https://github.com/Arch-Network/arch-node"
  version "0.6.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.6.5/arch-cli-aarch64-apple-darwin"
      sha256 "5db3eb0c9b60d2df37a245e88cbb2adf784a841a342ca7048a4bf122c7c278be"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.6.5/arch-cli-x86_64-unknown-linux-gnu"
      sha256 "2398e1c8b78d9d0069ca0bc5d9d8649c7b2c6d402e1a0bb80d962bc1e2a042b5"
    end
  end

  def install
    bin.install Dir["*"].first => "arch-cli"
  end

  test do
    assert_match "Arch Network CLI", shell_output("#{bin}/arch-cli --help")
  end
end
