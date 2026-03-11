class ArchCli < Formula
  desc "Command-line interface for Arch Network"
  homepage "https://github.com/Arch-Network/arch-node"
  version "0.6.3-rc1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.6.3-rc1/arch-cli-aarch64-apple-darwin"
      sha256 "173823e016501a31877c6868c6d2ff12a598951b7d47e59a7ad5668956235493"
    end
    on_intel do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.6.3-rc1/arch-cli-x86_64-apple-darwin"
      sha256 "961716cdd2434fa81c2c43ac18ebaf571e944d679ae428d4d321379c7f90d255"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.6.3-rc1/arch-cli-x86_64-unknown-linux-gnu"
      sha256 "ec364b6e7205c10805c5a0998ff4840a2208660e2135932b7d753340a2e2b508"
    end
  end

  def install
    bin.install Dir["*"].first => "arch-cli"
  end

  test do
    assert_match "Arch Network CLI", shell_output("#{bin}/arch-cli --help")
  end
end
