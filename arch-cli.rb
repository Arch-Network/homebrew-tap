class ArchCli < Formula
  desc "Command-line interface for Arch Network"
  homepage "https://github.com/Arch-Network/arch-node"
  version "0.5.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.5.5/arch-cli-aarch64-apple-darwin"
      sha256 "5425c2b01ad096c361dfdc637100db1a4cc4daf526cb60c70e78d2b23d3be683"
    end
    on_intel do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.5.5/arch-cli-x86_64-apple-darwin"
      sha256 "b906261a5be6b6777043d7bd25eeef220b4bfbb0b06a2eacd552e09b3b49740a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.5.5/arch-cli-x86_64-unknown-linux-gnu"
      sha256 "6e4b326df2c6842e135239f89f8188b61e1969814701c81904f7a3be72da58a4"
    end
  end

  def install
    bin.install Dir["*"].first => "arch-cli"
  end

  test do
    assert_match "Arch Network CLI", shell_output("#{bin}/arch-cli --help")
  end
end
