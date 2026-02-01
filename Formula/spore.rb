# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.3.0/macos/arm64/spore_0_3_0_macos_arm64_wtcf0ljtfb.tar.gz"
      sha256 "62721b999dda9c4902058cd636504059bf54ce9c5c5259935aca8df1143732eb"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.3.0/linux/aarch64/spore_0_3_0_linux_aarch64_xdv00vll6p.tar.gz"
      sha256 "f874b8f77de7a53b420bfdf7a39d62938259da4b521f9e57718d2d9a4f7b7aae"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.3.0/linux/x86_64/spore_0_3_0_linux_x86_64_6wpa27o6uz.tar.gz"
      sha256 "2b1282ea12ce0de8463834dd1d11781ded213136196409e0f6cf7fe0e0e6aee3"
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
