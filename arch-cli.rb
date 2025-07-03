class ArchCli < Formula
  desc "Command-line interface for Arch Network"
  homepage "https://github.com/Arch-Network/arch-node"
  version "0.5.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.5.4/arch-cli-aarch64-apple-darwin"
      sha256 "b9820c770ca67d6fb8561e5df1a7c68b0ceaf092e9e59900c7e60adf48ac785a"
    end
    on_intel do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.5.4/arch-cli-x86_64-apple-darwin"
      sha256 "59cd1694b1b31fc620035f15dd2e70caa5293bfcd84e9f3b9f160866963cf23e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.5.4/arch-cli-x86_64-unknown-linux-gnu"
      sha256 "ee6759f62e0bff92cd2922b8618620d802fb17bbd3b9e503946f73caa5d6cb9d"
    end
  end

  def install
    bin.install Dir["*"].first => "arch-cli"
  end

  test do
    assert_match "Arch Network CLI", shell_output("#{bin}/arch-cli --help")
  end
end
