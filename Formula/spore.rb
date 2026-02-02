# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.3.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.3.5/macos/arm64/spore_0_3_5_macos_arm64_5wuh5gp54o.tar.gz"
      sha256 "aff645ec351bbec38a5d98961b9b760314c9c673b0a8580548de8afc263c72de"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.3.5/linux/aarch64/spore_0_3_5_linux_aarch64_zvtxjbock5.tar.gz"
      sha256 "cc7914d9f4fd5e74fa502d8aef309ef9c837f5789d6736c790140ac65c849e57"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.3.5/linux/x86_64/spore_0_3_5_linux_x86_64_spqa5a6s4y.tar.gz"
      sha256 "80ebb9ed9a1254f6b2fb370eca703610f439c702360e6180fdd56d9d88a538ed"
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
