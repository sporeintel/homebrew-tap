# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.7.0/macos/arm64/spore_0_7_0_macos_arm64_q9p4klem8x.tar.gz"
      sha256 "06335149ae7e96278cf0e9032e96c783b2d61cc7aa0da310b2e6ccdf74a6988e"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.7.0/linux/aarch64/spore_0_7_0_linux_aarch64_e3bno0fplq.tar.gz"
      sha256 "ea18abd6b42bbb1a632a5ae5fd5fd1f77e4448bc18652a7752e0bd6763919ab6"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.7.0/linux/x86_64/spore_0_7_0_linux_x86_64_lt1gw813hj.tar.gz"
      sha256 "4e566577e6ad05045ddec66c558461e503f09b59adf8013f0a82b19fec0b96dd"
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
