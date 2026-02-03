# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.3.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.3.9/macos/arm64/spore_0_3_9_macos_arm64_r3eoxgiwil.tar.gz"
      sha256 "864aa80f55caf039be13a5d4eb42982a2fccb3a7a4b069b0c16a47e00920de45"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.3.9/linux/aarch64/spore_0_3_9_linux_aarch64_5xf12218gv.tar.gz"
      sha256 "7cac0549d344ec9e78a1b63e30828c9a4ea964f32bb0f421d847f6b99e6f6215"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.3.9/linux/x86_64/spore_0_3_9_linux_x86_64_rleau7hcv5.tar.gz"
      sha256 "6a70371b666ccbc4478a09cf1351203ef103e7659dbf2847c740ceb04644fdc7"
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
