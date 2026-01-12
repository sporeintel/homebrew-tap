# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.0.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.0.14/macos/arm64/spore_0_0_14_macos_arm64_msmaqb9lpb.tar.gz"
      sha256 "c9f838c2acea110cb2b9ba235a0f1c5f3269bc8f7e075055ed4bba21a62cf1eb"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.0.14/linux/aarch64/spore_0_0_14_linux_aarch64_d9jixsxjor.tar.gz"
      sha256 "1da5536c1f4e44897eeecc21a2a166e4972b96bd2faa94833fb46e06e6ce61e0"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.0.14/linux/x86_64/spore_0_0_14_linux_x86_64_j9vit52vnq.tar.gz"
      sha256 "9501c736b40f30610db6ac111550b943739f6dfe506aa1ce3268f20220e706e9"
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
