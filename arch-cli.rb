class ArchCli < Formula
  desc "Command-line interface for Arch Network"
  homepage "https://github.com/Arch-Network/arch-node"
  version "0.8.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.8.8/arch-cli-aarch64-apple-darwin"
      sha256 "9d2b78b5a0d9c88a8c8a6ea7724f7c333bc4aa14deed87518c53066ec295c9ce"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.8.8/arch-cli-x86_64-unknown-linux-gnu"
      sha256 "ff9288b5030cb17bab8262c93ddf51a8a1393e9cf1cc130f3b0cf7002f013805"
    end
  end

  def install
    bin.install Dir["*"].first => "arch-cli"
  end

  test do
    assert_match "Arch Network CLI", shell_output("#{bin}/arch-cli --help")
  end
end
