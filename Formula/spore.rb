# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.0.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.0.10/macos/arm64/spore_0_0_10_macos_arm64_xirptkdhfh.tar.gz"
      sha256 "07d4c730d04bcb688151c31af8bc5f3ed3b6e19bc91e7394659fa6d523b66774"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.0.10/linux/aarch64/spore_0_0_10_linux_aarch64_qk4wdr93kd.tar.gz"
      sha256 "48a068bb4d2c895eb5b123843e2c48f72d469aecc60e6513f5eca920b02dde8d"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.0.10/linux/x86_64/spore_0_0_10_linux_x86_64_brd7cw2i5k.tar.gz"
      sha256 "0fc50bc7b1842744dc7870ab273a173c15a4a26be18b9f57da6555084f6da168"
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
