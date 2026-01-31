# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.0.23"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.0.23/macos/arm64/spore_0_0_23_macos_arm64_pw818bdhvp.tar.gz"
      sha256 "8eb752f3801413e2e947fa182594941f81e93ee1049416c0f39ee8f83edfa584"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.0.23/linux/aarch64/spore_0_0_23_linux_aarch64_8y8qycl9qm.tar.gz"
      sha256 "fff650ddec6f3e3904fa4597949e1c62fd0def7a4955018fce9967ad7f7bbbe1"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.0.23/linux/x86_64/spore_0_0_23_linux_x86_64_35rgeg2rlu.tar.gz"
      sha256 "3c51c862e949299d47d7a6eb4048f76acd02c19d2f2855f7d497556ac30d7297"
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
