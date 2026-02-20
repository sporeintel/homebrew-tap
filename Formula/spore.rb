# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.4.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.4.9/macos/arm64/spore_0_4_9_macos_arm64_iponyll8b5.tar.gz"
      sha256 "1d7016980d2cbaf8cd6ee8596afe3a49312c3644cf533c4bc459594081e04818"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.4.9/linux/aarch64/spore_0_4_9_linux_aarch64_b810pxjmm3.tar.gz"
      sha256 "7d0f079f77e45662b03c3f5943a4c926c1aec8bd0ba4065603eeed03933e2a7a"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.4.9/linux/x86_64/spore_0_4_9_linux_x86_64_4iimlo5de5.tar.gz"
      sha256 "e967758aa7ad9839de84fedc10871af9cc440cab332dd97bdaa48b4477a1ca4e"
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
