# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.6.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.6.7/macos/arm64/spore_0_6_7_macos_arm64_fl4jabe394.tar.gz"
      sha256 "ee75d471ee29dfd727494a50aa085a17cfc2f09e52e230fa1afda5a0c14566e3"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.6.7/linux/aarch64/spore_0_6_7_linux_aarch64_1t0662k4od.tar.gz"
      sha256 "34efd6fe6919e5b0be72fdaeb8f047807dd211de7d14c768a5cb72347182db39"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.6.7/linux/x86_64/spore_0_6_7_linux_x86_64_7chlq84ofe.tar.gz"
      sha256 "3d379c91a1ecdc201d262236ac3ef2517071bcc97bfde36313f0b01db215fc63"
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
