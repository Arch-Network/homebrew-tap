class ArchCli < Formula
  desc "Command-line interface for Arch Network"
  homepage "https://github.com/Arch-Network/arch-node"
  version "0.5.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.5.7/arch-cli-aarch64-apple-darwin"
      sha256 "ebbde4519f498976f7410fa77cd86e75b08b2d3bd16326eb4f54596e5f51684e"
    end
    on_intel do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.5.7/arch-cli-x86_64-apple-darwin"
      sha256 "98d2141ce7353dc65a9e72a411918d16174557aa237154eef6fe08bf35fdb3c8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.5.7/arch-cli-x86_64-unknown-linux-gnu"
      sha256 "93f3836e1998738ac32d73b30d2786b26353ebe0c347538eac3d7a1bd21ca870"
    end
  end

  def install
    bin.install Dir["*"].first => "arch-cli"
  end

  test do
    assert_match "Arch Network CLI", shell_output("#{bin}/arch-cli --help")
  end
end
