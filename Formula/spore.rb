# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.0.21"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.0.21/macos/arm64/spore_0_0_21_macos_arm64_oi7049y7s5.tar.gz"
      sha256 "bafabeaf4e886672c28580d45e1d8013cd1ea154dce09464b70dd51131feb836"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.0.21/linux/aarch64/spore_0_0_21_linux_aarch64_skvmonosxf.tar.gz"
      sha256 "502e0f549c6914ef6f65246864a1428ae1ff90537a746f6165352e24edf12391"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.0.21/linux/x86_64/spore_0_0_21_linux_x86_64_ftj072bckr.tar.gz"
      sha256 "62cbdb7e1737ccf7dce428003b3965db2f8bfe02f579efb8e0bc6d9df776c7f4"
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
