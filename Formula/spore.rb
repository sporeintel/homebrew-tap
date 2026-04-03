# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.6.1/macos/arm64/spore_0_6_1_macos_arm64_2hvfw5mb9z.tar.gz"
      sha256 "c250fc916bad6390299af7c5c32dfc3de91ca48ed80f464c95e4d3ebddf3d6a9"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.6.1/linux/aarch64/spore_0_6_1_linux_aarch64_an2sl0it71.tar.gz"
      sha256 "ae836a710472ab43abad0b6b733be801756378b42cc87a2f0b67572ba16a03c3"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.6.1/linux/x86_64/spore_0_6_1_linux_x86_64_nnwt0yutm7.tar.gz"
      sha256 "91dbeded3b569143baecada1e59cd73f5f4198fddd9e070930ff139d81e2a022"
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
