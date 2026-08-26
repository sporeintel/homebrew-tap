# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.7.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.7.8/macos/arm64/spore_0_7_8_macos_arm64_594hpa2nbv.tar.gz"
      sha256 "69ec37621104dfc533390d858e781a9c49521cd2f7c80825723844c126538c20"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.7.8/linux/aarch64/spore_0_7_8_linux_aarch64_f4egrhy8si.tar.gz"
      sha256 "5b16c0cc400a68a5238796c19b7063e649653511a7ac708f8c0433075f819a8b"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.7.8/linux/x86_64/spore_0_7_8_linux_x86_64_odlbmzxfiu.tar.gz"
      sha256 "67c53fa1c1b99418ea28266381781179e6c7161e4927e4f8f953fdbd27e9e6b8"
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
