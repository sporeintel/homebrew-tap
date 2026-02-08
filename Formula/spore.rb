# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.3.23"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.3.23/macos/arm64/spore_0_3_23_macos_arm64_a2ks4lihln.tar.gz"
      sha256 "edb3344def9d93ce34fa30a6c6eaadca22d96c8585d9fa5e2b0556309be5db23"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.3.23/linux/aarch64/spore_0_3_23_linux_aarch64_h5bpnob021.tar.gz"
      sha256 "0ec82206cdd2de001414c43e8599d1398adb7b367dde0ee0b4617b4f261acec1"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.3.23/linux/x86_64/spore_0_3_23_linux_x86_64_r3f1xm1006.tar.gz"
      sha256 "920d34ca7af4003d4eb8505d032f35de48717ecea35e586626ad97d4122498ac"
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
