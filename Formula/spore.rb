# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.7.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.7.15/macos/arm64/spore_0_7_15_macos_arm64_q1b52ev1bp.tar.gz"
      sha256 "e2150263f6bd7520ae54601a3b8714049ad20a5a25685a86dc80a41fac0e6720"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.7.15/linux/aarch64/spore_0_7_15_linux_aarch64_sx7gfxlboy.tar.gz"
      sha256 "211d2bfbd54088908f00a20d0219dc958bb6cc32df6fd119ae9b118b7d5b3611"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.7.15/linux/x86_64/spore_0_7_15_linux_x86_64_x4jc29w3kd.tar.gz"
      sha256 "e57fd7364b1e8f92f27ac351d8b7c07b5c039605bb19db21590542cefa0758e5"
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
