# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.4.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.4.7/macos/arm64/spore_0_4_7_macos_arm64_7mqbdht0ev.tar.gz"
      sha256 "b1fcaeedd70d1a181d96113ee45198eaec092ad341dc39e069f6a11594215c2b"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.4.7/linux/aarch64/spore_0_4_7_linux_aarch64_7ys6chthpn.tar.gz"
      sha256 "89301b3cab019a1291d0d5ec0e906e7c1f3aae6f93ac40f0fd41ec39ba6ae487"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.4.7/linux/x86_64/spore_0_4_7_linux_x86_64_j2nbxcpp78.tar.gz"
      sha256 "47c2182f27d5a05bb1add6a45b41e46129e32109ec4c21dbd129462e15328678"
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
