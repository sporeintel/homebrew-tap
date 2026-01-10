# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.0.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.0.9/macos/arm64/spore-0.0.9-macos-arm64.tar.gz"
      sha256 "207454577fe76746f0fb6e1e542a1c5ef27d2a2fe52d9ba4d18b87c02a481a2f"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.0.9/linux/aarch64/spore-0.0.9-linux-aarch64.tar.gz"
      sha256 "93b4e1d04efb2f263472560cae6e48ac536ded4dcf08794b90306b8b4e27ba25"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.0.9/linux/x86_64/spore-0.0.9-linux-x86_64.tar.gz"
      sha256 "0e151267945c5abf2639047f38d3a99c0ada6d68eaa9ef9e5ae28b4b7546eff9"
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
