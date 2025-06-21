class ArchCli < Formula
  desc "Command-line interface for Arch Network"
  homepage "https://github.com/Arch-Network/arch-node"
  version "0.5.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.5.3/arch-cli-aarch64-apple-darwin"
      sha256 "700ffad17d7436b5f515760dafce7c5e7280bde8beb42b0a27c7e736b1373169"
    end
    on_intel do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.5.3/arch-cli-x86_64-apple-darwin"
      sha256 "f541aff856656c5a1d08d5582bd8196b3510a996dcb54a8f20554d65233fc9d0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.5.3/arch-cli-x86_64-unknown-linux-gnu"
      sha256 "d8346de204d800c82ffed9bc5df967fe1c275169a082f425a9d1b5250f9f34f9"
    end
  end

  def install
    bin.install Dir["*"].first => "arch-cli"
  end

  test do
    assert_match "Arch Network CLI", shell_output("#{bin}/arch-cli --help")
  end
end
