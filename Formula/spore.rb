# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.7.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.7.12/macos/arm64/spore_0_7_12_macos_arm64_6oaypk5n7w.tar.gz"
      sha256 "826370c199e3aacd17e84bffa9a465dbc4c7bf5c0f70560bfc2a16eccb24c358"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.7.12/linux/aarch64/spore_0_7_12_linux_aarch64_p431n2p5gc.tar.gz"
      sha256 "9a38935d130210c45970ba0bf91c696b27324ad8766325fa19425be8cf106ab1"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.7.12/linux/x86_64/spore_0_7_12_linux_x86_64_rbax4o2ilc.tar.gz"
      sha256 "32e3a342fbbf6d20c69c4520e78be06c48cd24dd8ce6496cc0daca0e3ae52720"
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
