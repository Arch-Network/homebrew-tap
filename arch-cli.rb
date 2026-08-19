class ArchCli < Formula
  desc "Command-line interface for Arch Network"
  homepage "https://github.com/Arch-Network/arch-node"
  version "0.8.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.8.2/arch-cli-aarch64-apple-darwin"
      sha256 "3dbfb0c3402ea89be41495a0d22416dfa7c38ea48611420df3b6770f6992e0d8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.8.2/arch-cli-x86_64-unknown-linux-gnu"
      sha256 "a36a61dd133ded47bd364e85d19c730acfc37e8a432840fdd79072ec454f023c"
    end
  end

  def install
    bin.install Dir["*"].first => "arch-cli"
  end

  test do
    assert_match "Arch Network CLI", shell_output("#{bin}/arch-cli --help")
  end
end
