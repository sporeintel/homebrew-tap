# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.3.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.3.16/macos/arm64/spore_0_3_16_macos_arm64_t4sl3yg0o3.tar.gz"
      sha256 "bc301c77b3a51b179f40e4d9c35831465b5ef039f193c648efaf4f0f0f3d7265"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.3.16/linux/aarch64/spore_0_3_16_linux_aarch64_5lt7ruym25.tar.gz"
      sha256 "5032a6965925e4d73d4c471df23f6b5bc9d8aa865c2d4cbed307ac41b06a6d94"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.3.16/linux/x86_64/spore_0_3_16_linux_x86_64_xx5csulxd6.tar.gz"
      sha256 "85a4fb847a26400ac9d445f5c6a17549e3dfbf253f39a9ccf85e5fa11ca61d4a"
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
