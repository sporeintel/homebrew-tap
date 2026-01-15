# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.0.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.0.18/macos/arm64/spore_0_0_18_macos_arm64_62gcxx1c9y.tar.gz"
      sha256 "ea2e08c7af3f5aacc5ab10e5f35295f58362976591698fed8be12e52b6b0232c"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.0.18/linux/aarch64/spore_0_0_18_linux_aarch64_ay36p2a371.tar.gz"
      sha256 "c06a667499c5bbaaeed423fd529900cd4ccb6518a9edb801376327f4ff789ec6"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.0.18/linux/x86_64/spore_0_0_18_linux_x86_64_hi40spd63s.tar.gz"
      sha256 "4a259fdba43ee315b4b69805848760a5dfcf65df25a69680bbd826b98152ab92"
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
