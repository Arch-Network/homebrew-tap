class ArchCli < Formula
  desc "Command-line interface for Arch Network"
  homepage "https://github.com/Arch-Network/arch-node"
  version "0.5.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.5.13/arch-cli-aarch64-apple-darwin"
      sha256 "11e31eeca38f78da4e20346aaae8afd83aa00e5bc040725cb88f00e43de90fab"
    end
    on_intel do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.5.13/arch-cli-x86_64-apple-darwin"
      sha256 "d584ddc036d51b59d7df18f426382d67cb1fae735682314322a8e6e7be06e5ae"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.5.13/arch-cli-x86_64-unknown-linux-gnu"
      sha256 "9431f3bad736ef83f9f7434b5753ff43740b0b28a9cf4866a0f2a9f8badbb48d"
    end
  end

  def install
    bin.install Dir["*"].first => "arch-cli"
  end

  test do
    assert_match "Arch Network CLI", shell_output("#{bin}/arch-cli --help")
  end
end
