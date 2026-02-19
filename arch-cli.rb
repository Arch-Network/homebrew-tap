class ArchCli < Formula
  desc "Command-line interface for Arch Network"
  homepage "https://github.com/Arch-Network/arch-node"
  version "0.6.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.6.2/arch-cli-aarch64-apple-darwin"
      sha256 "1f14f9a68ce3038c275f059c3def7fa24fcdc7d44e331c514aa832f12e0723de"
    end
    on_intel do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.6.2/arch-cli-x86_64-apple-darwin"
      sha256 "319c8ce9af95496605e07fe6276fbcc1b24f206bb27eb3df6c1c1035fbc2f052"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.6.2/arch-cli-x86_64-unknown-linux-gnu"
      sha256 "2561f80497d51eca8375e8d74b52e11543a54258e6470a95761464174b56cdb3"
    end
  end

  def install
    bin.install Dir["*"].first => "arch-cli"
  end

  test do
    assert_match "Arch Network CLI", shell_output("#{bin}/arch-cli --help")
  end
end
