# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.6.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.6.4/macos/arm64/spore_0_6_4_macos_arm64_d75nzwv11d.tar.gz"
      sha256 "59da2a86d654ea3f7374888eced227134167240dce05d8116914b991ad127866"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.6.4/linux/aarch64/spore_0_6_4_linux_aarch64_6hygvpf30u.tar.gz"
      sha256 "5d55a7e94bd22f1eb6e0b6828e0bd24f41cd80d43c5df0881af8d103e8f601d1"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.6.4/linux/x86_64/spore_0_6_4_linux_x86_64_4xxwuvaf51.tar.gz"
      sha256 "e9950a6d3436f95f2c0968f5476c9e077dc7ff12a344e5dcf5a3c07f5161fc4d"
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
