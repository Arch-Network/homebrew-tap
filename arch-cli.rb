class ArchCli < Formula
  desc "Command-line interface for Arch Network"
  homepage "https://github.com/Arch-Network/arch-node"
  version "0.5.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.5.14/arch-cli-aarch64-apple-darwin"
      sha256 "b094296c1fc4588320e37049b9d22baf89f446372bf6fffdbed285c0daeb8ad9"
    end
    on_intel do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.5.14/arch-cli-x86_64-apple-darwin"
      sha256 "cf8220a0f7cfc803d762f677fd0a7547a85bfe8de509e74fef973b523ac3081d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.5.14/arch-cli-x86_64-unknown-linux-gnu"
      sha256 "0a22a410d86da376ff90db0ce5cd4ea1ff16b2f2479e95578c43072df835b5ff"
    end
  end

  def install
    bin.install Dir["*"].first => "arch-cli"
  end

  test do
    assert_match "Arch Network CLI", shell_output("#{bin}/arch-cli --help")
  end
end
