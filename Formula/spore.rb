# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.0.22"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.0.22/macos/arm64/spore_0_0_22_macos_arm64_zbc2jebmab.tar.gz"
      sha256 "2f0ff290a7282a54b62954a9ddfe87ea2cc8df6ab41527195070decff04761e7"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.0.22/linux/aarch64/spore_0_0_22_linux_aarch64_mav05qz2x4.tar.gz"
      sha256 "9aae4ccdc590c5678dacb9fce860e2dd83889be7f5797f59c6361088cee77114"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.0.22/linux/x86_64/spore_0_0_22_linux_x86_64_59jhwsuxli.tar.gz"
      sha256 "0a0c17ae6d42f9afe76982729f9e541b2d947f3527412e8d4543eb09849c67a1"
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
