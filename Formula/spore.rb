# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.3.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.3.12/macos/arm64/spore_0_3_12_macos_arm64_482r7qgo2t.tar.gz"
      sha256 "7772421cf5581b0866b56ade2a60204677e36507eccb619224af7be50382f35e"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.3.12/linux/aarch64/spore_0_3_12_linux_aarch64_ddnn5wymw8.tar.gz"
      sha256 "bdc1332d403d49ae376c07c13356cd2d01bf379805787cb8bf2fa5dfd1cecf48"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.3.12/linux/x86_64/spore_0_3_12_linux_x86_64_x0hytikzln.tar.gz"
      sha256 "c729ba2d0119f2efdb4654d7ba9b263dd909c821a60b9913ff0daf4c836edbe7"
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
