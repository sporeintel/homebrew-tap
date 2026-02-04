# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.3.21"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.3.21/macos/arm64/spore_0_3_21_macos_arm64_neuauuw2pj.tar.gz"
      sha256 "a155360545a2325ff9497ede6c1cd33276a8b6b4eda02eba65f21da882e43586"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.3.21/linux/aarch64/spore_0_3_21_linux_aarch64_nc89gdyp09.tar.gz"
      sha256 "9cb8a1e0f7d6d17332eff7b7290ee9a4214eb5305e3ee2368fa47de6085eff30"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.3.21/linux/x86_64/spore_0_3_21_linux_x86_64_qxcc8nlrlq.tar.gz"
      sha256 "cc9e15c407213542bba1e940bc8c29394d1bdb8ed9b07c97d5a9d25fdcc6e881"
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
