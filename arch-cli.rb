class ArchCli < Formula
  desc "Command-line interface for Arch Network"
  homepage "https://github.com/Arch-Network/arch-node"
  version "0.8.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.8.4/arch-cli-aarch64-apple-darwin"
      sha256 "4a2b3d48987b9181a960bbd53e3155a60adec42d8cb2e2fe9059f85ae8e83f3e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.8.4/arch-cli-x86_64-unknown-linux-gnu"
      sha256 "774e4c9bca194059a3e4dcf981f0cd97907c6a897c7073f1f7c93f644c5244d7"
    end
  end

  def install
    bin.install Dir["*"].first => "arch-cli"
  end

  test do
    assert_match "Arch Network CLI", shell_output("#{bin}/arch-cli --help")
  end
end
