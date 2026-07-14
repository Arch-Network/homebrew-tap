class ArchCli < Formula
  desc "Command-line interface for Arch Network"
  homepage "https://github.com/Arch-Network/arch-node"
  version "0.6.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.6.7/arch-cli-aarch64-apple-darwin"
      sha256 "fd98a8555775d329ec4f41a5a52c5332d590c9198cfec311f2ab1b07f0cc7daf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.6.7/arch-cli-x86_64-unknown-linux-gnu"
      sha256 "34589407544e20ecb6733db218fac4086d1ae6d8ce825586eb7fd46f1e444980"
    end
  end

  def install
    bin.install Dir["*"].first => "arch-cli"
  end

  test do
    assert_match "Arch Network CLI", shell_output("#{bin}/arch-cli --help")
  end
end
