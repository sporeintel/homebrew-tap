# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.3.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.3.13/macos/arm64/spore_0_3_13_macos_arm64_2m9h0czdt0.tar.gz"
      sha256 "45479d981bddad39f2bc92d5825730fc2714c01fe9e62e12e31209c8ba0db76f"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.3.13/linux/aarch64/spore_0_3_13_linux_aarch64_f9f0rmr28a.tar.gz"
      sha256 "1ef05864e119fc82a8ed2489d100eefd142ee75f7c54aa0c527855d85a11911b"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.3.13/linux/x86_64/spore_0_3_13_linux_x86_64_1gme3uf1in.tar.gz"
      sha256 "1e543a2d431c60d30490e7b493ab4e655660ed18f7aac6b571994077b2286c5f"
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
