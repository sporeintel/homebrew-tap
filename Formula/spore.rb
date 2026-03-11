# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.4.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.4.17/macos/arm64/spore_0_4_17_macos_arm64_7yx366t6q6.tar.gz"
      sha256 "c32fb0668b7eeee77ca287193524fc1c57a291f93b6882d2e1a8a6b35ebe2d50"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.4.17/linux/aarch64/spore_0_4_17_linux_aarch64_lxbolp2g2a.tar.gz"
      sha256 "2ec0a6c095f14648c18841614a084f13ff5deeb574d1719ce69293281ff95c5f"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.4.17/linux/x86_64/spore_0_4_17_linux_x86_64_dg55s2hgjs.tar.gz"
      sha256 "a46ff4e9f30e33c2fbf002feb89a094512d420a2ff2b03f521d904c1f5bbf68a"
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
