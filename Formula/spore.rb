# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.7.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.7.11/macos/arm64/spore_0_7_11_macos_arm64_fukwujetu4.tar.gz"
      sha256 "a2f65a5f9e86bd6a55368c96bfa69ca5e1aea73d0198bf0ced8debb3051e1f22"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.7.11/linux/aarch64/spore_0_7_11_linux_aarch64_vqsbokkzay.tar.gz"
      sha256 "dcca599ffe301df029c6e8a98dd562940f2c7b5234f93897ab4d38f9c9105a2c"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.7.11/linux/x86_64/spore_0_7_11_linux_x86_64_28w9itcd17.tar.gz"
      sha256 "371cfdfda265bebdc3aa09a9d9b79d2df257281731b539285d1e7810c9bd3eea"
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
