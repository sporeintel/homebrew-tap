# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.3.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.3.20/macos/arm64/spore_0_3_20_macos_arm64_n4g7plsnhj.tar.gz"
      sha256 "9e423284cd72ebec84832c1bce7141eb36f24e20dd857ccfdc6e7fa4e3c99c7e"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.3.20/linux/aarch64/spore_0_3_20_linux_aarch64_78s83sx7xn.tar.gz"
      sha256 "18f184eafcb4fa4ea2a5e343775bc178a00239329a9577ce207f96f83c4add0a"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.3.20/linux/x86_64/spore_0_3_20_linux_x86_64_5ogypxb57v.tar.gz"
      sha256 "0206fa7ef89ae8a35e5338c69bf7bf9a36d0758006cb513fb7ba26bc5b4730f7"
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
