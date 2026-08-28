class ArchCli < Formula
  desc "Command-line interface for Arch Network"
  homepage "https://github.com/Arch-Network/arch-node"
  version "0.8.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.8.7/arch-cli-aarch64-apple-darwin"
      sha256 "d300a4b6f5a75dd9f985a004a1b9bc6bf776f79d95f3ddb8cfa9afec3fde32cd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.8.7/arch-cli-x86_64-unknown-linux-gnu"
      sha256 "74ee70c22390c9eeec9368729270dd40406e5a34575f0ea819f7eff9c8eb899c"
    end
  end

  def install
    bin.install Dir["*"].first => "arch-cli"
  end

  test do
    assert_match "Arch Network CLI", shell_output("#{bin}/arch-cli --help")
  end
end
