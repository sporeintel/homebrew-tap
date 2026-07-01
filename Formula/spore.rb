# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.7.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.7.2/macos/arm64/spore_0_7_2_macos_arm64_jtdx41kjjd.tar.gz"
      sha256 "cf508ab73ca9af6b64638a1276d6f0a469a5d0ee7364cf6bcd215def083d084f"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.7.2/linux/aarch64/spore_0_7_2_linux_aarch64_fb8e8tcs92.tar.gz"
      sha256 "6f7535cb50614d4b6c4297b0b557cd0fd4477a8484697275ecb63b740ad2b657"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.7.2/linux/x86_64/spore_0_7_2_linux_x86_64_b77kxnhm26.tar.gz"
      sha256 "6fb28f6688cb786d789b292530af2ae7d9dae5850d63b2fddc64c397777887b7"
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
