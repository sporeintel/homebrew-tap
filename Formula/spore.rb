# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.0.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.0.17/macos/arm64/spore_0_0_17_macos_arm64_mu7najpmx6.tar.gz"
      sha256 "0c46d50efcbe66d763c1505142d477d045708b314145f349cca2b49a90ae1d76"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.0.17/linux/aarch64/spore_0_0_17_linux_aarch64_s11j9vpozv.tar.gz"
      sha256 "0fba209bcf00d65a305c19dc1b91d1ca3dff3aca403662ff7d498d9c262d8e30"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.0.17/linux/x86_64/spore_0_0_17_linux_x86_64_hk6jnd9m1h.tar.gz"
      sha256 "66bc5ae2e5afe8c349fa49c897dd3646d5d6e87e64698df4037e4bf28d6fad38"
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
