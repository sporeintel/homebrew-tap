# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.5.0/macos/arm64/spore_0_5_0_macos_arm64_kxkuqlfhtu.tar.gz"
      sha256 "91cf2345609edaff5e3864705099152f035a1d4830637eb61f96a08cb6c78509"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.5.0/linux/aarch64/spore_0_5_0_linux_aarch64_vtwbdxjz1v.tar.gz"
      sha256 "43e20a226108c3e66b6934015453968e4b6464ba61d4d5b63435ea58c97f091c"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.5.0/linux/x86_64/spore_0_5_0_linux_x86_64_bkbhpp8pc0.tar.gz"
      sha256 "dd2c0b9935ed473d99fa9aa5141ab3d4f4591c5931140ee1e6255380b933af1a"
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
