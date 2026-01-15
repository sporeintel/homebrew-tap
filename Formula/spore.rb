# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.0.19"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.0.19/macos/arm64/spore_0_0_19_macos_arm64_abgyrpe3t7.tar.gz"
      sha256 "8b5fe213a59230fd6d4d0c314cfb0f56fc34d37980efb735148facb89230b5e8"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.0.19/linux/aarch64/spore_0_0_19_linux_aarch64_uvcdc1lltv.tar.gz"
      sha256 "3be819d06749000049c4c675e22a83ceadb71b18bcee75375a3915f26ba1255f"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.0.19/linux/x86_64/spore_0_0_19_linux_x86_64_5nku22k23u.tar.gz"
      sha256 "dce5211ee643ff57e23dcafd764df10432d663725de58195cdc9c362cc5d3465"
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
