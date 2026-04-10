# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.6.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.6.3/macos/arm64/spore_0_6_3_macos_arm64_xzra1y1dem.tar.gz"
      sha256 "7ebbf7920604232cb5b3faeec381c42561a5ec22def23709d2738057bc0ac6e9"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.6.3/linux/aarch64/spore_0_6_3_linux_aarch64_5ck38idz7s.tar.gz"
      sha256 "b304e730c2d68f14e5f4a97d51a5fe2f019cbf8d78477e5b83723c5d7bad0eef"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.6.3/linux/x86_64/spore_0_6_3_linux_x86_64_6yahwodknm.tar.gz"
      sha256 "57f320cbf4a563213f911eabe1c5fe7ab0d92d7b4ad1a97da3a937a3ed514c27"
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
