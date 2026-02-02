# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.3.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.3.6/macos/arm64/spore_0_3_6_macos_arm64_0e96fgel9f.tar.gz"
      sha256 "20b3e544997acb70031d6e8abac808170e298535a91de2572e0adc9c2c3a271c"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.3.6/linux/aarch64/spore_0_3_6_linux_aarch64_zd3joa8deh.tar.gz"
      sha256 "bc789ebf0087579342d9eb5fcf7acfefa2eb644ede5cd6215e8090a96f2c3733"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.3.6/linux/x86_64/spore_0_3_6_linux_x86_64_hs5kj51229.tar.gz"
      sha256 "55eb4ea2a8cd74e7e5ba56b3c30d60334b3f47abe90e69adcfb44ddc1e1cd712"
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
