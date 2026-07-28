class ArchCli < Formula
  desc "Command-line interface for Arch Network"
  homepage "https://github.com/Arch-Network/arch-node"
  version "0.6.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.6.8/arch-cli-aarch64-apple-darwin"
      sha256 "4331a6254439f8ae4fdb577c6e14c8d000b0abcd777db24c096e88c99ab317fd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.6.8/arch-cli-x86_64-unknown-linux-gnu"
      sha256 "6d372aa25a4aa1c4de1c40694229cde9e9834b8cbb2688d46a65090b89268fbb"
    end
  end

  def install
    bin.install Dir["*"].first => "arch-cli"
  end

  test do
    assert_match "Arch Network CLI", shell_output("#{bin}/arch-cli --help")
  end
end
