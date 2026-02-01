# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.3.2/macos/arm64/spore_0_3_2_macos_arm64_7nw0wtj4rd.tar.gz"
      sha256 "bd8d9f5d318fc5999848f7630a0194e7778f4225899403ce88f7840f34f492dd"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.3.2/linux/aarch64/spore_0_3_2_linux_aarch64_kc92v57366.tar.gz"
      sha256 "212fdea38f3998b03ae9018c75e0a2e5e92b9d715a96b00f637fa3fcf20330fc"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.3.2/linux/x86_64/spore_0_3_2_linux_x86_64_o6l6gbvfe8.tar.gz"
      sha256 "528c650635e1a7a7e4bf12f650f34056afb4ca80a8f010a039ba638710a61c23"
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
