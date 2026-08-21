# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.7.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.7.6/macos/arm64/spore_0_7_6_macos_arm64_sdbv33ll4i.tar.gz"
      sha256 "f5cb90110b091e620f61b4e3605947370c6d1cafafbfea4bfa31d5fdbea061f0"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.7.6/linux/aarch64/spore_0_7_6_linux_aarch64_0ng6w3rvty.tar.gz"
      sha256 "6a0b0aace30dccdbb567b02160c4b885b2f18e55016e745f9322bd65b3afff80"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.7.6/linux/x86_64/spore_0_7_6_linux_x86_64_emuc7u7zha.tar.gz"
      sha256 "6cd53ce0e55fb3933cc0be9367b581e6a52c6fcb55ea852a572c5ac990d93156"
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
