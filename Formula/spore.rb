# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.4.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.4.15/macos/arm64/spore_0_4_15_macos_arm64_1938zblfmu.tar.gz"
      sha256 "6d4bf979719a04740b9f66c17b156a11aea6fcd36ce25765ab4ec922db1ebeb3"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.4.15/linux/aarch64/spore_0_4_15_linux_aarch64_bzq1s0crpm.tar.gz"
      sha256 "97a29fa23c9fb848efef24916e642b158bad52eef2e2cd34ccecbb5631f8d21c"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.4.15/linux/x86_64/spore_0_4_15_linux_x86_64_jl9nfcgma1.tar.gz"
      sha256 "a50fa6d5d408549e2433f188ae11846af9c41a7a6cd130c823f7de3783e46138"
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
