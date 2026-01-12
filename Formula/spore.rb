# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.0.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.0.11/macos/arm64/spore_0_0_11_macos_arm64_grbnulp1p7.tar.gz"
      sha256 "4218b66d6bf1648cc8e197eeec907a9beb3f9e32422e891c9c63129af92768dc"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.0.11/linux/aarch64/spore_0_0_11_linux_aarch64_hhq04aj4qs.tar.gz"
      sha256 "767418e3be9faab8ad2e90368726eb499bb7bc2c6d74397d9b1abd0605a10034"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.0.11/linux/x86_64/spore_0_0_11_linux_x86_64_a3ldqc4m8y.tar.gz"
      sha256 "17784b8ad1eecf27c6fb6317f9e816bcce9d1b86c72e51cf459228a90e5c52fa"
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
