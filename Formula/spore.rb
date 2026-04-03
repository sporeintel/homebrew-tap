# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.6.0/macos/arm64/spore_0_6_0_macos_arm64_r4d35ezwma.tar.gz"
      sha256 "d487ccacc313af299c61a55007bed0e25fbbf00f589e38272e5aa59f897ad19a"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.6.0/linux/aarch64/spore_0_6_0_linux_aarch64_phkdb70f5s.tar.gz"
      sha256 "d70915c95a4ed470cfde56d881ed6ea29c0d46ca95421e0638a4065876dfd57b"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.6.0/linux/x86_64/spore_0_6_0_linux_x86_64_pp9f2322iq.tar.gz"
      sha256 "5cc23b01599a917759bc3de01e20863dadba0d48e3d98778b425a43fb3495f13"
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
