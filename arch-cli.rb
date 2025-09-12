class ArchCli < Formula
  desc "Command-line interface for Arch Network"
  homepage "https://github.com/Arch-Network/arch-node"
  version "0.5.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.5.10/arch-cli-aarch64-apple-darwin"
      sha256 "334d197f345bf74a51af4adaae208b4763ea16c3728607cb53f8372e6705f5ff"
    end
    on_intel do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.5.10/arch-cli-x86_64-apple-darwin"
      sha256 "96744ef28de9df89b8a45e11cb17054c16923b75755a6a8fa31d6028f0656a37"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.5.10/arch-cli-x86_64-unknown-linux-gnu"
      sha256 "ee5e1c8a375310f96fbe63c85507b58678be56342db82b10b6adf64b1e3de8c2"
    end
  end

  def install
    bin.install Dir["*"].first => "arch-cli"
  end

  test do
    assert_match "Arch Network CLI", shell_output("#{bin}/arch-cli --help")
  end
end
