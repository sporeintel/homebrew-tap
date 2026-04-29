# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.6.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.6.6/macos/arm64/spore_0_6_6_macos_arm64_2uukf38h7j.tar.gz"
      sha256 "c2a3d0d716c55588482ad367ce7d3235f7b10931c4e36fa87425dbec2ffe052c"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.6.6/linux/aarch64/spore_0_6_6_linux_aarch64_p0ak6tb4a7.tar.gz"
      sha256 "1cbf53697b12c576bea305d1034f58db105e974b87179b9528b5b848e45522f2"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.6.6/linux/x86_64/spore_0_6_6_linux_x86_64_b06pzgysx9.tar.gz"
      sha256 "55d54f4e440ba79e1b20fc34cdbcda19bc5800de5532cfc00384de97e2dbb565"
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
