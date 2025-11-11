class ArchCli < Formula
  desc "Command-line interface for Arch Network"
  homepage "https://github.com/Arch-Network/arch-node"
  version "0.5.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.5.15/arch-cli-aarch64-apple-darwin"
      sha256 "619fb908c4a167266bbee172ea73cdbb480752758a44a6d77819f98cce369c80"
    end
    on_intel do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.5.15/arch-cli-x86_64-apple-darwin"
      sha256 "c9be42061304530a2592c3f26b60b55528798e29a23fb5634abe29587a44b466"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Arch-Network/arch-node/releases/download/v0.5.15/arch-cli-x86_64-unknown-linux-gnu"
      sha256 "0e5154376b638aea5bd249ab1c059c12d4cc1ad2bc68cc5507e79057cf5f69de"
    end
  end

  def install
    bin.install Dir["*"].first => "arch-cli"
  end

  test do
    assert_match "Arch Network CLI", shell_output("#{bin}/arch-cli --help")
  end
end
