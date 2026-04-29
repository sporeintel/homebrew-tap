# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.6.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.6.5/macos/arm64/spore_0_6_5_macos_arm64_ffer8zana6.tar.gz"
      sha256 "251fab1f496059b9122b15d8282396c18190f727f5220bfe695ad067cd797cf3"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.6.5/linux/aarch64/spore_0_6_5_linux_aarch64_oaoszodfq6.tar.gz"
      sha256 "d1b84294996df5f6d113f648fc469fcd4ce0d8edacc6f478d51106017b51667f"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.6.5/linux/x86_64/spore_0_6_5_linux_x86_64_ir1zw3g856.tar.gz"
      sha256 "bba56c7c7080ad0515552465673c3655e2c7d9c8722185df5892eb28b840df2e"
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
