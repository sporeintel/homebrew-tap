# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.7.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.7.17/macos/arm64/spore_0_7_17_macos_arm64_r78zc8ev9c.tar.gz"
      sha256 "315e192785a6f0737f01b8004a6428569fdd9f38293b23fa1434e426a61e4803"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.7.17/linux/aarch64/spore_0_7_17_linux_aarch64_1qx6910tx6.tar.gz"
      sha256 "2ea8254bea1e15e29f4f27d8cc9d6eb7d19df697a9d3b434e247b42e6d0c2143"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.7.17/linux/x86_64/spore_0_7_17_linux_x86_64_o2p2e3ozt1.tar.gz"
      sha256 "e52544f665749804c4009af26928e6dbe7789a5733d2587a0926d5a31338859d"
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
