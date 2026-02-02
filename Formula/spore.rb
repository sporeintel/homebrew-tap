# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.3.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.3.4/macos/arm64/spore_0_3_4_macos_arm64_tq6rdhbcbv.tar.gz"
      sha256 "aeb2997c05b52a8fbc7c52def7140b57ec7c3b28bf2f52cd8a77173f03738459"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.3.4/linux/aarch64/spore_0_3_4_linux_aarch64_ievrhmf658.tar.gz"
      sha256 "4bc6905f75776899a961e48f82522599889c59f3ab9bc4ab902167ff73521d48"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.3.4/linux/x86_64/spore_0_3_4_linux_x86_64_c3xgunqqsy.tar.gz"
      sha256 "987a07811bfd33e1d4f65f67c5aba1ba134d0d377cafd0039f9b48efedfcc4e3"
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
