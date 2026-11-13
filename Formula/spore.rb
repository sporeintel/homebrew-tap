# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.7.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.7.16/macos/arm64/spore_0_7_16_macos_arm64_2ozblnvak9.tar.gz"
      sha256 "73831dde982e109cb3dbb97101362cc05505a1d2fea8d1dc5f16473c8d7e424f"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.7.16/linux/aarch64/spore_0_7_16_linux_aarch64_yosha2vsx7.tar.gz"
      sha256 "a514e1e9640000b38226c833f551128e2844078e5085adfcfc44e21c7bb45862"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.7.16/linux/x86_64/spore_0_7_16_linux_x86_64_pnwd4cakiq.tar.gz"
      sha256 "ed935ffae7ae3465e7872ac7db31d6ab635dce1564d6d33e6f027bca555a3870"
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
