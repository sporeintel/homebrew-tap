# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.3.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.3.11/macos/arm64/spore_0_3_11_macos_arm64_c3hizb7ith.tar.gz"
      sha256 "3dfb1c25ec8afc4db5f3d7e3f70bbfc8d4ffbb04d516364d60c19b5b9f8a4059"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.3.11/linux/aarch64/spore_0_3_11_linux_aarch64_ievv10ip8t.tar.gz"
      sha256 "069c278639f24ffc35e343d41096e0fc7ab2c3a550e9ce3fa121c4b5dc1c0299"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.3.11/linux/x86_64/spore_0_3_11_linux_x86_64_hcdn03ncms.tar.gz"
      sha256 "c609cf754a13a07aadccdeae0f6c6f5f842217c5790c3b9853a0b7299a46187e"
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
