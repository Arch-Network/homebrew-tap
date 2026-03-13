class ArchCli < Formula
  desc "Command-line interface for Arch Network"
  homepage "https://github.com/Arch-Network/arch-node"
  version "0.6.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.6.3/arch-cli-aarch64-apple-darwin"
      sha256 "7d80a75fd4ec436a7893735a2a4c7590f321808c372e8ad7e805242b154d7673"
    end
    on_intel do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.6.3/arch-cli-x86_64-apple-darwin"
      sha256 "1171e29e7434d68c98510d91023be74df6096baaaa842e9bc78c40f4e3f3f894"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.6.3/arch-cli-x86_64-unknown-linux-gnu"
      sha256 "79a64fa12ccbbc64b16cbf9a3ae3fc045b6bc7ddd27d8f016e85745b1aa8bb2f"
    end
  end

  def install
    bin.install Dir["*"].first => "arch-cli"
  end

  test do
    assert_match "Arch Network CLI", shell_output("#{bin}/arch-cli --help")
  end
end
