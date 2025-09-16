class ArchCli < Formula
  desc "Command-line interface for Arch Network"
  homepage "https://github.com/Arch-Network/arch-node"
  version "0.5.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.5.11/arch-cli-aarch64-apple-darwin"
      sha256 "c39456348b5a44e40b4ca58cf5f6a69e85dd029d01cc10f5b268e10fd1215b68"
    end
    on_intel do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.5.11/arch-cli-x86_64-apple-darwin"
      sha256 "a4ba6a591a3c017907955cee15073902563ffbee889ca11460d25f3ca680bb53"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.5.11/arch-cli-x86_64-unknown-linux-gnu"
      sha256 "5f834f18ea60fbecd9e1c0f4e3e3da743ce0be07e9b1ac7e423ef2e4f9956a35"
    end
  end

  def install
    bin.install Dir["*"].first => "arch-cli"
  end

  test do
    assert_match "Arch Network CLI", shell_output("#{bin}/arch-cli --help")
  end
end
