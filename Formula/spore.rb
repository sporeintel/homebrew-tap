# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.3.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.3.17/macos/arm64/spore_0_3_17_macos_arm64_hyivmwjpbz.tar.gz"
      sha256 "b1e0b9d26ab505bca53478d253fc407a43fb005a23654adf72b69f8d2780c831"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.3.17/linux/aarch64/spore_0_3_17_linux_aarch64_y7ijy37a3z.tar.gz"
      sha256 "5d4a6ffc8e3db529f775e6383bb35a66144ee91dd8fee84639e30f41d5a8a0c8"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.3.17/linux/x86_64/spore_0_3_17_linux_x86_64_4e2my8j7n4.tar.gz"
      sha256 "943ff345e2a932e7a28062eb747239f1168b0f378d6bc68a2e0bc9512563e141"
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
