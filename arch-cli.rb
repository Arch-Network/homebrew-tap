class ArchCli < Formula
  desc "Command-line interface for Arch Network"
  homepage "https://github.com/Arch-Network/arch-node"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.6.0/arch-cli-aarch64-apple-darwin"
      sha256 "9332d938ea800239af0d72f8521770bfdc1a625bd1f666c29b373340021ae5c2"
    end
    on_intel do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.6.0/arch-cli-x86_64-apple-darwin"
      sha256 "ecebb2e1e2661f6ae7b3fef1ce206165f06a17d2938f4ac872936b89336f461b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.6.0/arch-cli-x86_64-unknown-linux-gnu"
      sha256 "0fca4265ce0f3e1ebde75a518fb15975ed2eb1d6dfd0cc206d67c133c7a5b047"
    end
  end

  def install
    bin.install Dir["*"].first => "arch-cli"
  end

  test do
    assert_match "Arch Network CLI", shell_output("#{bin}/arch-cli --help")
  end
end
