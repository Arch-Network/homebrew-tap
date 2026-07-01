class ArchCli < Formula
  desc "Command-line interface for Arch Network"
  homepage "https://github.com/Arch-Network/arch-node"
  version "0.6.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.6.6/arch-cli-aarch64-apple-darwin"
      sha256 "bae41d53dc77775d052a764f2f0ce3a3e659f5a4eec3c22baab264a098842f68"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.6.6/arch-cli-x86_64-unknown-linux-gnu"
      sha256 "d53ce4b0545040259a82b4ddff4b8d147401b4274c7e33dd2655fa2dc3510eac"
    end
  end

  def install
    bin.install Dir["*"].first => "arch-cli"
  end

  test do
    assert_match "Arch Network CLI", shell_output("#{bin}/arch-cli --help")
  end
end
