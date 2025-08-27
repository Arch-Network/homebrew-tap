class ArchCli < Formula
  desc "Command-line interface for Arch Network"
  homepage "https://github.com/Arch-Network/arch-node"
  version "0.5.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.5.6/arch-cli-aarch64-apple-darwin"
      sha256 "575e90eb69a2fecafa84526271c94c5002fcc8e2defa214262895bc37494bdc6"
    end
    on_intel do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.5.6/arch-cli-x86_64-apple-darwin"
      sha256 "30279eb7d6b67bab74642290d3ecf915ac18e67cb6fb406d9f0fe6c482185b52"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.5.6/arch-cli-x86_64-unknown-linux-gnu"
      sha256 "f58d151d65fa418e0d945cbbc99e7584624a8be40fa3747de5cb2cb016df3e74"
    end
  end

  def install
    bin.install Dir["*"].first => "arch-cli"
  end

  test do
    assert_match "Arch Network CLI", shell_output("#{bin}/arch-cli --help")
  end
end
