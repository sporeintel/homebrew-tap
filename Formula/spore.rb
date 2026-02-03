# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.3.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.3.15/macos/arm64/spore_0_3_15_macos_arm64_blcdxaldma.tar.gz"
      sha256 "47e1eae73dd9169337ce1ff839e50d82edd0ecca9d6ef85244aecc5906420610"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.3.15/linux/aarch64/spore_0_3_15_linux_aarch64_ynxp7u40b3.tar.gz"
      sha256 "5aa5ce2b7c8a7f6d6a9099c46c4da23f86733879213f2217cb0afb998b55749d"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.3.15/linux/x86_64/spore_0_3_15_linux_x86_64_ih5crkaufn.tar.gz"
      sha256 "b5028fedb4dee625d3c6cb9f4335e3de45be4e8d67270ed88ec4d25e699b0b71"
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
