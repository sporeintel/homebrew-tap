# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.0.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.0.20/macos/arm64/spore_0_0_20_macos_arm64_hog23suot8.tar.gz"
      sha256 "58b6be6f7584aaaa2e9dfe5145e91de0198c45ecb26933d33c0f8a22626e050b"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.0.20/linux/aarch64/spore_0_0_20_linux_aarch64_7cqotlgtze.tar.gz"
      sha256 "9f825c621ab6b691f721ba2f3155ed008855e5aa7fdedbc0f45f3db632afb1a9"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.0.20/linux/x86_64/spore_0_0_20_linux_x86_64_fbm4z3zpqh.tar.gz"
      sha256 "12a07b6b893418be5a49fa1be4105fb5e39afc2f014381fb10f66b2663b5f32b"
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
