class ArchCli < Formula
  desc "Command-line interface for Arch Network"
  homepage "https://github.com/Arch-Network/arch-node"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.6.1/arch-cli-aarch64-apple-darwin"
      sha256 "6ba1e3614027d2eb430bc7820cd1d6cc576805b3b961d183dabfd87a19a0dfb4"
    end
    on_intel do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.6.1/arch-cli-x86_64-apple-darwin"
      sha256 "7196daaf4823d9fff4b4c44631d6297114a9fcd719b04ef5eee1d7568d807715"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.6.1/arch-cli-x86_64-unknown-linux-gnu"
      sha256 "d91c282edc99af8131b5f38179e085df611ad905761d4fe467ef7c3b76719bd2"
    end
  end

  def install
    bin.install Dir["*"].first => "arch-cli"
  end

  test do
    assert_match "Arch Network CLI", shell_output("#{bin}/arch-cli --help")
  end
end
