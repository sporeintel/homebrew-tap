# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.0.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.0.13/macos/arm64/spore_0_0_13_macos_arm64_mevroeha85.tar.gz"
      sha256 "db3074545ec0c171f28ba10b0b6629faa5f2cb25a08007f59482148203e20d04"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.0.13/linux/aarch64/spore_0_0_13_linux_aarch64_lq6ymi3rfj.tar.gz"
      sha256 "5f610ead4f3cb2e69e495ca6cd60813da392c7806e676b277b31dfd7fd8a8a8b"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.0.13/linux/x86_64/spore_0_0_13_linux_x86_64_gyvy6pej1t.tar.gz"
      sha256 "c0957e061fe55602f4909151a8a8ed727b239427e728c5d2483873958d3f38b4"
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
