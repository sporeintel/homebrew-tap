# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.4.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.4.18/macos/arm64/spore_0_4_18_macos_arm64_0w110gzwj9.tar.gz"
      sha256 "21d6b32e19df5e4bfab52ebdf03f31c0575bea5a8823cd3b6bdecf7eeb0072fd"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.4.18/linux/aarch64/spore_0_4_18_linux_aarch64_vz3sk6otkt.tar.gz"
      sha256 "b86b272e1fe988cbc6733d43b4c925e6951ce7711ebbbbeeeec8498910c3bc72"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.4.18/linux/x86_64/spore_0_4_18_linux_x86_64_k9wg7qgkud.tar.gz"
      sha256 "87d9fb45be053f202ba92c875609b4d6b3a0a3cbe46ac4d843b68b8e670b4c38"
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
