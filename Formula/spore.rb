# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.4.0/macos/arm64/spore_0_4_0_macos_arm64_1lyu08g3lm.tar.gz"
      sha256 "9bfe2129f49a92cc668812ca3b03abdaab6412ef2fab019941dd2e8078c83489"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.4.0/linux/aarch64/spore_0_4_0_linux_aarch64_oic86cdoux.tar.gz"
      sha256 "0aa2624d699e4ef59db9c72cf2f3fa14a393fdb26e76b4321ccc8c9c918960df"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.4.0/linux/x86_64/spore_0_4_0_linux_x86_64_xjxay7mvck.tar.gz"
      sha256 "344c49265ad292a5970529fd34b534628233cdb1529332968e4769d3e14a8ea9"
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
