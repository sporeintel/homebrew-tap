# Homebrew formula for Spore CLI
# Install with: brew install sporeintel/tap/spore

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.1.0/macos/arm64/spore-0.1.0-macos-arm64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.1.0/linux/aarch64/spore-0.1.0-linux-aarch64.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.1.0/linux/x86_64/spore-0.1.0-linux-x86_64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "spore"
  end

  def caveats
    <<~EOS
      To get started with Spore:
        1. Authenticate: spore auth
        2. Start the node: spore start

      For more information, visit https://sporeintel.com/docs
    EOS
  end

  test do
    assert_match "spore", shell_output("#{bin}/spore --version")
  end
end
