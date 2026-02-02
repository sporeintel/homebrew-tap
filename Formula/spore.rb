# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.3.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.3.7/macos/arm64/spore_0_3_7_macos_arm64_k9l1wc2c5o.tar.gz"
      sha256 "2abb5c1c800e849f7365881c038aa76a2acd049788774edb8dffaabaf7c0e8e6"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.3.7/linux/aarch64/spore_0_3_7_linux_aarch64_ian90ygx2q.tar.gz"
      sha256 "0d175e0df07cf9c8d940023b0565d11ab88c9b5202a51cecf2affa82d3634704"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.3.7/linux/x86_64/spore_0_3_7_linux_x86_64_ytczj900de.tar.gz"
      sha256 "08b18d8f2d5bde59382e05d5f58d811a43c7b0d91e1348b30afdc367c6218465"
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
