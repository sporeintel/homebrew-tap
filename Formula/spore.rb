# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.3.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.3.18/macos/arm64/spore_0_3_18_macos_arm64_5scvypahjb.tar.gz"
      sha256 "391c89abcf9252ce9ffbe1bb19ce583237a21330579b64729506323c95878598"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.3.18/linux/aarch64/spore_0_3_18_linux_aarch64_m57gb5kjjd.tar.gz"
      sha256 "2208304abb1cb4eebc6518b974e01cfe57d4d1fa53f59be6e729bd64cffe769f"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.3.18/linux/x86_64/spore_0_3_18_linux_x86_64_m7rei0tlmc.tar.gz"
      sha256 "283213d56ccc3551fcdb01dad71f92b2fb746c0344a97e8a3183ed2dd6d92b8d"
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
