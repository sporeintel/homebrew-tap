# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.3.22"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.3.22/macos/arm64/spore_0_3_22_macos_arm64_msznkboxvr.tar.gz"
      sha256 "d4d4f103733cbb769dc71d185b4a03c805390ddaa0967fc0780555ffec78a718"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.3.22/linux/aarch64/spore_0_3_22_linux_aarch64_ddi29oijfk.tar.gz"
      sha256 "ad0c7737264c332e0c40f9e242c2a5124ab03d899be8cfa966b2892aba07ac7e"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.3.22/linux/x86_64/spore_0_3_22_linux_x86_64_pkc7rfjg6p.tar.gz"
      sha256 "2a1bf6216406a638dee47d86b7095567a206289c93ca3addf85ef20f0b42ab4f"
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
