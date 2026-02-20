# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.4.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.4.8/macos/arm64/spore_0_4_8_macos_arm64_693rwosgqm.tar.gz"
      sha256 "5d044f5b7ab4ac1a4c74ba953787ccdb8fe3e31acc1897f6ced6b7a1ec35a9b7"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.4.8/linux/aarch64/spore_0_4_8_linux_aarch64_7crdw80fg3.tar.gz"
      sha256 "3209940341dba530c638a7503573e9f01bb8abe809a4617ab71857d27af166e5"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.4.8/linux/x86_64/spore_0_4_8_linux_x86_64_vspo6kdl6e.tar.gz"
      sha256 "6a9e649697128e05b5b8d8d538ebc24a47c2c49cd0e7e6161b350c263cbaaa46"
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
